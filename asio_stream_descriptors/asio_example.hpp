#ifndef ASIO_EXAMPLE
#define ASIO_EXAMPLE

#include <boost/asio.hpp>


class AsioServer {

public:

    inline                          AsioServer(boost::asio::io_service& io);

    inline void                     add_fd(unsigned int fd);
    inline void                     async_read(std::function<void(MsgHeaderUniquePtr msg)> cb);
    inline boost::asio::io_service& get_io_service();

private:

    using StreamDescriptor      = boost::asio::posix::stream_descriptor;

    StreamDescriptor                   m_fd;
    std::vector<StreamDescriptor>      m_fds;
};


AsioServer::AsioServer(boost::asio::io_service& io) :
    m_fd(io)
{
    DEBUG("AsioServer ctor");
}


void AsioServer::async_read(std::function<void(MsgHeaderUniquePtr)> cb) {
    m_fd.async_read_some(
        boost::asio::null_buffers(),
        [this, cb](const boost::system::error_code& /*ec*/, std::size_t /*bytes_transferred*/) {
            msg_header_t* msg;
            dmx_error_t err = dmxmsg_receive_msg_r(&msg);

            if (err != SUCCESS_EC)
                throw DmxError("dmxmsg_receive_msg_r failed with error " + std::to_string(err));

            MsgHeaderUniquePtr p(msg, release_msg);
            cb(std::move(p));
        }
    );
}


void AsioServer::add_fd(usigned int fd) {
    
    StreamDescriptor sd;
    sd.assign(fd);
    m_fds.push_back(sd);
}


boost::asio::io_service& AsioDmxSocket::get_io_service() {
    return m_dmx_fd.get_io_service();
}

#endif

#endif
