#include <iostream>
#include <vector>
#include <functional>
#include <memory>
#include <boost/asio.hpp>
#include "message.pb.h"  // Include your protobuf message header



using boost::asio::ip::tcp;

class Session : public std::enable_shared_from_this<Session> {
public:
    using MessageCallback = std::function<void(std::shared_ptr<Session>, const tcp::Header&, const tcp::Message&)>;

    Session(boost::asio::ip::tcp::socket&& socket) : socket_(std::move(socket)) {}

    void start() {
        do_read_header();
    }

    void set_message_callback(MessageCallback callback) {
        message_callback_ = std::move(callback);
    }

private:
    void do_read_header() {
        auto self(shared_from_this());
        _hdr.Clear();
        _hdr_buffer.reserve(10);
        _hdr.set_length(1);
        std::cout << _hdr.ByteSizeLong()<< std::endl;
        boost::asio::async_read(socket_, boost::asio::buffer(_hdr_buffer.data(), 10),
            [this, self](boost::system::error_code ec, std::size_t length) {
                std::cout << "Reading header [" << length << "]" << std::endl;
                _hdr.ParseFromArray(_hdr_buffer.data(), length);
                std::cout << "HDR[" << _hdr.DebugString() << "]" << std::endl; 
                if (!ec) {
                    do_read_body();
                } else {
                    std::cerr << "Error reading message header: " << ec.message() << std::endl;
                }
            });
    }

    void do_read_body() {
        auto self(shared_from_this());
        std::cout << "Reading body [" << _hdr.length() << "]" << std::endl;
        _msg.Clear();
        _msg_buffer.reserve(_hdr.length());
        boost::asio::async_read(socket_, boost::asio::buffer(_msg_buffer.data(), _hdr.length()),
            [this, self](boost::system::error_code ec, std::size_t length) {
                if (!ec && length == _hdr.length()) {
                    process_message();
                    do_read_header(); // Continue reading the next message
                } else {
                    std::cerr << "Error reading message body: " << ec.message() << ":" << length << std::endl;
                }
            });
    }

    void process_message() {
        _msg.ParseFromArray(_msg_buffer.data(), _hdr.length());
        std::cout << "MSG[" << _msg.DebugString() << "]" << std::endl;
        // Call the callback with the session pointer
        if (message_callback_) {
            message_callback_(shared_from_this(), _hdr, _msg);
        }
        // You can send a response back here if needed
    }

private:

    boost::asio::ip::tcp::socket socket_;
    tcp::Header _hdr;
    tcp::Message _msg;
    std::vector<char> _hdr_buffer;
    std::vector<char> _msg_buffer;
    MessageCallback message_callback_;
};

class Server {
public:
    Server(boost::asio::io_context& io_context)
        : acceptor_(io_context, boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), 12345)), socket_(io_context), next_session_id_(1) {
        do_accept();
    }

    void start() {
        do_accept();
    }

    void set_callback(Session::MessageCallback callback) {
        message_callback_ = std::move(callback);
    }

private:
    void do_accept() {
        acceptor_.async_accept(socket_, [this](boost::system::error_code ec) {
            if (!ec) {
                auto session = std::make_shared<Session>(std::move(socket_));
                session->set_message_callback(message_callback_);
                sessions_.push_back(session);
                session->start();
            }
            do_accept();
        });
    }

private:
    boost::asio::ip::tcp::acceptor acceptor_;
    boost::asio::ip::tcp::socket socket_;
    std::vector<std::shared_ptr<Session>> sessions_;
    Session::MessageCallback message_callback_;
    int next_session_id_;
};
