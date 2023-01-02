#include <iostream>
#include <string>
#include <vector>
#include <zmq.hpp>

int main() {
    // Create a ZMQ context and socket
    zmq::context_t context(1);
    zmq::socket_t socket(context, ZMQ_REQ);
    socket.bind("tcp://*:5555");

    // Create a poll set and add the socket to it
    zmq::pollitem_t items[] = {{socket, 0, ZMQ_POLLIN, 0}};

    while (true) {
        // Wait for an incoming message or a timeout
        zmq::poll(items, 1, 1000); // timeout of 1000 milliseconds

        // Check if a message was received
        if (items[0].revents & ZMQ_POLLIN) {
            // Receive the message and print it
            zmq::message_t message;
            socket.recv(&message);
            std::string text(static_cast<char*>(message.data()), message.size());
            std::cout << "Received message: " << text << std::endl;
        } else {
            std::cout << "Timed out waiting for a message" << std::endl;
        }
    }

    return 0;
}
