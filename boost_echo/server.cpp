//
// async_tcp_echo_server.cpp
// ~~~~~~~~~~~~~~~~~~~~~~~~~
//
// Copyright (c) 2003-2008 Christopher M. Kohlhoff (chris at kohlhoff dot com)
//
// Distributed under the Boost Software License, Version 1.0. (See accompanying
// file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
//

#include <cstdlib>
#include <iostream>
#include <boost/bind.hpp>
#include <boost/asio.hpp>
#include <stdio.h>
#include <string.h>
#include <unistd.h>             //for close()
#include <stdlib.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/sctp.h>
#include <arpa/inet.h>  //for inet_ntop()
#include <boost/thread.hpp>

const int SERVER_PORT = 4444;
const int ADDR_FAMILY = AF_INET;
const int SOCK_TYPE = SOCK_STREAM;
const int PROTO = IPPROTO_SCTP;
const int CLIENT_SEND_COUNT = 5;
const int SERVER_LISTEN_QUEUE_SIZE = 10;

using boost::asio::ip::tcp;

class session : public std::enable_shared_from_this<session> {
public:
    session(/*io_service& io_service*/unsigned int server_fd )
      : m_socket_fd(0),
        m_server_fd(server_fd), 
        m_client_descriptor(_session_io)
    {
      _t = std::make_shared<boost::thread>(boost::bind(&boost::asio::io_service::run, &_session_io));
    }

    void start() {
        std::cerr << "Start" << std::endl;
        unsigned int client_addr_len = sizeof(m_addr);
        m_socket_fd = accept(m_server_fd, &m_addr, &client_addr_len);
        m_client_descriptor.assign(m_socket_fd);
        do_read();
        _t->join();    
    }


private:
    
    void do_read() {
        std::cerr << "do_read" << std::endl;
        unsigned int client_addr_len = sizeof(m_addr);
        auto self(shared_from_this());
        std::cerr << "do_read 2" << std::endl;

        m_client_descriptor.async_read_some(boost::asio::buffer(m_data, max_length),
            [this, self](boost::system::error_code ec, std::size_t length) {
                if (!ec) {
                    std::cerr << "do_write call 2" << std::endl;
                    do_write(length);
                }
            });
    }

    void do_write(size_t length) {
        std::cerr << "do_write" << std::endl;
        auto self(shared_from_this());
        m_client_descriptor.async_write_some(boost::asio::buffer(m_data, length),
        [this, self](boost::system::error_code ec, std::size_t /*length*/)
        {
          if (!ec)
          {
            do_read();
          }
        });
    }

    enum { max_length = 1024 };
    
    int     m_socket_fd;
    struct sockaddr m_addr;
    std::shared_ptr<boost::thread> _t;
    char    m_data[max_length];
    boost::asio::posix::stream_descriptor m_client_descriptor;
    unsigned int m_server_fd;
    boost::asio::io_service _session_io;
};

//----------------------------------
class server {
//----------------------------------
public:
    server(boost::asio::io_service& io_service)
      : _io_service(io_service),
      m_sd(io_service)
    {

        int server_fd = 0;
        int server_port = 4444;

        if((server_fd = socket(ADDR_FAMILY, SOCK_TYPE, PROTO)) == -1) {
            perror("socket");
        }
        
        struct sockaddr_in bind_addr;
        memset(&bind_addr, 0, sizeof(struct sockaddr_in));
        bind_addr.sin_family = ADDR_FAMILY;
        bind_addr.sin_port = htons(server_port);
        bind_addr.sin_addr.s_addr = INADDR_ANY;

        if(bind(server_fd, (struct sockaddr*)&bind_addr, sizeof(bind_addr)) == -1) {
            perror("bind");
        }
        if(listen(server_fd, SERVER_LISTEN_QUEUE_SIZE) != 0) {
            perror("listen");
        }
        assign_fd(server_fd);
        do_accept();
        std::cout << "Server listening on port: " << server_port << std::endl;
    }

    void start_session() {

        auto s = std::make_shared<session>(m_sd.native_handle());
        s->start();
        do_accept();
    }
    void do_accept() {
        

        std::cout << "Accept " << std::endl;
        _io_service.dispatch([this](){start_session();});
        
        //start_session();
 
    }

    void assign_fd(unsigned int fd) {
          m_sd.assign(fd);
    }

private:

    boost::asio::io_service& _io_service;
    boost::asio::posix::stream_descriptor m_sd;

};

int main(int argc, char* argv[])
{
    try
    {
      if (argc != 2)
      {
        std::cerr << "Usage: async_tcp_echo_server <port>\n";
        return 1;
      }

      boost::asio::io_service io_service;

      using namespace std; // For atoi.
      server s(io_service);
        
        io_service.run();
      //boost::thread t(boost::bind(&boost::asio::io_service::run, &io_service));
      //t.join();
    }
    catch (std::exception& e)
    {
      std::cerr << "Exception: " << e.what() << "\n";
    }

    return 0;
}
