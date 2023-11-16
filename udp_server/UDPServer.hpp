#ifndef UDP_SERVER_HPP
#define UDP_SERVER_HPP

#include <iostream>
#include <thread>
#include <functional>
#include <boost/asio.hpp>

/*!  \class
*    \brief Brief class description
*           Detailed description}
*
*///-----------------------------------------
class UDPServer {
//-------------------------------------------

public:

    using message_recv_callback_t = std::function<void(const std::string&)>;

                                        UDPServer(boost::asio::io_context& io_context, const std::string& address, int port);

    void                                start();
    void                                stop();
    
    void                                set_msg_recv_callback(message_recv_callback_t callback);

private:

    void                                receive();

    boost::asio::io_context&            _io_context;
    boost::asio::ip::udp::socket        _socket;
    boost::asio::ip::udp::endpoint      _remote_endpoint;
    std::array<char, 4096>              _recv_buffer;
    bool                                _running;
    message_recv_callback_t             _message_callback;
};

    
//-------------------------------------------
UDPServer::UDPServer(boost::asio::io_context& io_context, const std::string& address, int port) : 
//-------------------------------------------
    _io_context(io_context),
    _socket(io_context, boost::asio::ip::udp::endpoint(boost::asio::ip::make_address(address), port)),
    _running(false)
{
}

//-------------------------------------------
void UDPServer::set_msg_recv_callback(message_recv_callback_t callback) {
//-------------------------------------------
    _message_callback = std::move(callback);
}

//-------------------------------------------
void UDPServer::start() {
//-------------------------------------------
    if (!_running) {
        _running = true;
        receive();
    }
}

//-------------------------------------------
void UDPServer::stop() {
//-------------------------------------------
    if (_running) {
        _running = false;
    }
}

//-------------------------------------------
void UDPServer::receive() {
//-------------------------------------------

    _socket.async_receive_from(
        boost::asio::buffer(_recv_buffer), _remote_endpoint,
        [this](const boost::system::error_code& error, std::size_t bytes_transferred) {

            if (!error) {

                std::string message(_recv_buffer.data(), bytes_transferred);

                if (_message_callback) {
                    _message_callback(message);
                }

                receive(); // Continue receiving
            }
        });
}
#endif
