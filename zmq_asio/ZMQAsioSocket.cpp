#include <iostream>
#include <vector>
#include <string>
#include <exception>
#include <boost/asio.hpp>
#include <zmq.h>
#include <zmq.hpp>

namespace zmq_asio {

//---------------------------------------------------
class zmq_exception: public std::exception {
//---------------------------------------------------

public:

    zmq_exception (std::string __reason):
    reason_(__reason) {

    }
    const char* what() const noexcept {
        return reason_.c_str();
    }
    std::string reason_;
};

//---------------------------------------------------
class ZMQContext {
//---------------------------------------------------

public:

    typedef void* zmq_context_handle;

    ZMQContext() {
        void *tmp = zmq_ctx_new ();
        if (tmp == NULL)
            throw zmq_exception("could not obtain a zmq context");
        handle_ = tmp;
    }
    zmq_context_handle handle() {
        return handle_;
    }

private:

    zmq_context_handle handle_;
};


void *zmq_context() {
    static ZMQContext zmq_ctx_;
    return zmq_ctx_.handle(); 
}

template <typename ConstBufferSequence, typename Handler>
//---------------------------------------------------
class ZMQSocketSender {
//---------------------------------------------------

public:

    ZMQSocketSender(void *__zmq_sock, const ConstBufferSequence & __buffers, Handler __handler): 
        buffers_(__buffers),
        handler_(__handler),
        zmq_sock_(__zmq_sock) 
    {
    }

    void operator()(const boost::system::error_code &ec, std::size_t bytes_transferred) {

        boost::system::error_code zec;
        int send_rc = 0;

        if (!ec) {
            int flags = 0;
            size_t fsize = sizeof (flags);
            //zmq_getsockopt(const_cast<void *>(zmq_sock_), ZMQ_EVENTS, &flags, &fsize);

            //if (flags & ZMQ_POLLOUT) {
                const void* buf = boost::asio::buffer_cast<const void*>(buffers_);
                int buf_size = boost::asio::buffer_size(buffers_);
                send_rc = zmq_send (const_cast<void *>(zmq_sock_), const_cast<void *>(buf), buf_size, 0);
                std::cout << "Sending " << send_rc << std::endl;
                reinterpret_cast<zmq::socket_t *>(zmq_sock_)->send(zmq::str_buffer("A"), zmq::send_flags::sndmore);
                reinterpret_cast<zmq::socket_t *>(zmq_sock_)->send(zmq::str_buffer("Message in A envelope"));

                if (send_rc == -1)
                {
                    zec.assign(errno, boost::system::system_category());
                }
            //}
            handler_ (zec, send_rc);
        } 
        else {
            handler_ (ec, send_rc);    
        }
    }

private:

    ConstBufferSequence buffers_;
    Handler handler_;
    void *zmq_sock_;
};


template <typename MutableBufferSequence, typename Handler>
//---------------------------------------------------
class ZMQSocketReceiver {
//---------------------------------------------------

public:

    ZMQSocketReceiver(void *__zmq_sock, const MutableBufferSequence & __buffers, Handler __handler): 
        buffers_(__buffers), 
        handler_(__handler),
        zmq_sock_(__zmq_sock) 
    {
    }

    void operator()(const boost::system::error_code &ec,  std::size_t bytes_transferred) {
        
        if (!ec) {
            boost::system::error_code zec; //defaut ctor no error
            int recvd = 0;
            int flags = 0;
            size_t fsize = sizeof (flags);
            zmq_getsockopt(const_cast<void *>(zmq_sock_), ZMQ_EVENTS, &flags, &fsize);
            if (flags & ZMQ_POLLIN) {
                //we can read from the zmq socket
                void *buf = boost::asio::buffer_cast<void *>(buffers_);
                int buf_size = boost::asio::buffer_size(buffers_);
                recvd = zmq_recv(zmq_sock_, buf, buf_size, 0);
                //check if recvd == -1
                if (recvd == -1) {
                    zec.assign(errno, boost::system::system_category());
                }
            }
            //if we were not able to read it is not an error the application should try
            //again later
            handler_(zec, recvd);
        }
        else {
            //something wrong happened with 
            //the underlying socket report the error
            handler_(ec, bytes_transferred);
        }
    }
private:
    MutableBufferSequence buffers_;
    Handler handler_;
    void *zmq_sock_;
};


//---------------------------------------------------
class ZMQAsioSocketAdapter {
//---------------------------------------------------

public:

    ZMQAsioSocketAdapter(boost::asio::io_service& __io_service, std::string __srv_addr):
        sock_(__io_service) 
    {

        void *zmq_ctx = zmq_context ();
        zmq_sock_ = zmq_socket (zmq_ctx, ZMQ_PUB);

        int opt = 0;
        std::size_t optlen = sizeof (opt);

        zmq_setsockopt(zmq_sock_, ZMQ_LINGER, &opt, optlen);

        if (zmq_sock_ == NULL) {
            throw zmq_exception("could not create a zmq REQ socket");
        }

        int zfd;
        optlen = sizeof (zfd);
        zmq_getsockopt (zmq_sock_, ZMQ_FD, &zfd, &optlen);
        sock_.assign (boost::asio::ip::tcp::v4(), zfd);

        int rc = zmq_bind (zmq_sock_, __srv_addr.c_str ());
        if (rc) {
            throw zmq_exception("zmq socket: could not connect to " + __srv_addr);
        }
    }

    template <typename ConstBufferSequence, typename Handler>
    void async_send (const ConstBufferSequence & buffer, Handler handler) {
        ZMQSocketSender<ConstBufferSequence, Handler> send_op (zmq_sock_, buffer, handler);
        sock_.async_send (boost::asio::null_buffers(), send_op);
    }

    template <typename MutableBufferSequence, typename Handler>
    void async_recv (const MutableBufferSequence & buffer, Handler handler) {
        ZMQSocketReceiver<MutableBufferSequence, Handler> recv_op (zmq_sock_, buffer, handler);
        sock_.async_read_some (boost::asio::null_buffers(), recv_op);
    }

    ~ZMQAsioSocketAdapter() {
        sock_.shutdown(boost::asio::ip::tcp::socket::shutdown_both);
        sock_.close();
        zmq_close (zmq_sock_);    
    }

private:

    void *zmq_sock_ = nullptr;
    boost::asio::ip::tcp::socket sock_;
};

} //namespace zmq_asio


//---------------------------------------------------
class ZMQClient : public std::enable_shared_from_this<ZMQClient>{
//---------------------------------------------------
public:

    ZMQClient(boost::asio::io_service& __io_service, const std::string& __addr):
    _zmq_adapter(__io_service, __addr) {

    }
        
    void send(const std::string& __message) {
        //print("ZMQClient: sending message:", __message);
        _zmq_adapter.async_send(
            boost::asio::buffer(__message), [this] (const boost::system::error_code& error, std::size_t bytes_transferred) {
                handle_send(error, bytes_transferred);
            });
    }

private:

    void handle_send(const boost::system::error_code &ec, std::size_t bytes_transferred) {

        if (ec) {
            std::cout << "failed to send buffer\n";
        }
        else {
            //print("ZMQClient: message sent");
            _zmq_adapter.async_recv (boost::asio::buffer(recv_buffer_), 
                    [this] (const boost::system::error_code& error, std::size_t bytes_transferred) {
                        handle_recv(error, bytes_transferred);
            });
        }
    }

    void handle_recv(const boost::system::error_code &ec, std::size_t bytes_transferred) {

        if (!ec) {
            // if no error happened but no bytes were received because the zeromq socket 
            // is not POLL_IN ready (check the zero_mq zmq_getsockopt: it says that 
            // a socket can be reported as writable by the OS but not yet for zeromq) 
            // schedule another async recv operation. This is less likely to happen for send operations
            // and in practice never had to do it.
            if (bytes_transferred == 0)
                _zmq_adapter.async_recv (boost::asio::buffer(recv_buffer_), 
                    [this] (const boost::system::error_code& error, std::size_t bytes_transferred) {
                        handle_recv(error, bytes_transferred);
                    });
            else {
                
                //printf("ZMQClient: zmq REP: %s\n", recv_buffer_.data());
            }
        }
    }

    zmq_asio::ZMQAsioSocketAdapter _zmq_adapter;
    std::array<char, 256> recv_buffer_;
};


//==================================================
int main(int, char**) {
//==================================================
    
    zmq_asio::zmq_context();

    boost::asio::io_service io_service;
    
    std::string srv_addr("tcp://127.0.0.1:5556");
    std::string msg("zmq REQ: hello from client");

    auto zclient = std::make_shared<ZMQClient>(io_service, srv_addr);
    zclient->send(msg);    

    
    io_service.run();

    zmq_ctx_term(zmq_asio::zmq_context()); 
    
}

