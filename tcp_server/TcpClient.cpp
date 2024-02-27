#include <iostream>
#include <boost/asio.hpp>
#include "message.pb.h"  // Include your protobuf message header
#include <thread>
using boost::asio::ip::tcp;

class Client {
public:
    Client(boost::asio::io_context& io_context, const std::string& server_ip, const std::string& server_port)
        : socket_(io_context), server_endpoint_(boost::asio::ip::address::from_string(server_ip), std::stoi(server_port)) {
    }

    void start() {
        try {
            socket_.connect(server_endpoint_);
            send_message();
            std::this_thread::sleep_for(std::chrono::milliseconds(1000));
            send_message();
            std::this_thread::sleep_for(std::chrono::milliseconds(1000));
            send_message();
        } catch (const std::exception& e) {
            std::cerr << "Error connecting to the server: " << e.what() << std::endl;
        }
    }

private:
    void send_message() {
        tcp::Message message;

        // Populate Header
        tcp::Header header;
        header.set_id(42);          // Set your desired ID

        // Populate Message
        message.set_supi("sample_supi");
        message.set_priority("102");
        header.set_length(message.ByteSizeLong());     // Set your desired length
        std::cout << "Header: " << header.ByteSizeLong();

        // Serialize the message
        std::string serialized_header = header.SerializeAsString();
        std::string serialized_message = message.SerializeAsString();
        std::cout << "size of hedr:" << header.ByteSizeLong() << std::endl;
        //std::cout << "Sending [" << serialized_header + serialized_message << std::endl;

        // Send the serialized message to the server
        boost::asio::write(socket_, boost::asio::buffer(serialized_header + serialized_message));

        std::cout << "Message sent to server: ID = " << header.id() << ", Length = " << header.length()
                  << ", Supi = " << message.supi() << ", Priority = " << message.priority() << std::endl;
    }

private:
    boost::asio::ip::tcp::socket socket_;
    boost::asio::ip::tcp::endpoint server_endpoint_;
};

int main() {
    try {
        boost::asio::io_context io_context;
        Client client(io_context, "127.0.0.1", "12345");  // Replace with your server's IP and port
        client.start();

        io_context.run();
    } catch (const std::exception& e) {
        std::cerr << "Exception: " << e.what() << std::endl;
    }

    return 0;
}

