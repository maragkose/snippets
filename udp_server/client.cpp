#include <iostream>
#include <boost/asio.hpp>

int main() {
    boost::asio::io_context io_context;
    boost::asio::ip::udp::socket socket(io_context);

    // Create an endpoint for the server
    boost::asio::ip::udp::endpoint serverEndpoint(boost::asio::ip::make_address("127.0.0.1"), 8888);

    // Open the socket
    socket.open(boost::asio::ip::udp::v4());

    while (true) {
        std::string message;
        std::cout << "Enter message to send (q to quit): ";
        std::getline(std::cin, message);

        if (message == "q" || message == "Q") {
            break;
        }

        // Send the message to the server
        socket.send_to(boost::asio::buffer(message), serverEndpoint);
    }

    socket.close();

    return 0;
}

