#include <iostream>
#include <string>
#include <zmq.hpp>

int main() {
    // Create a publisher socket
    zmq::context_t context;
    zmq::socket_t socket(context, ZMQ_PUB);
    socket.bind("tcp://*:5556");

    // Send a message
    std::string message = "Hello, subscriber!";
    zmq::message_t zmq_message(message.size());
    memcpy(zmq_message.data(), message.data(), message.size());
    socket.send(zmq_message);
}
