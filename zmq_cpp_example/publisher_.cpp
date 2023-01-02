#include <iostream>
#include <string>
#include <chrono>
#include <thread>
#include <zmq.hpp>

int main() {
    // Create a publisher socket
    zmq::context_t context;
    zmq::socket_t socket(context, ZMQ_PUB);
    socket.bind("tcp://*:5556");

    // Publish a message every second
    int counter = 0;
    while (true) {
        std::string message = "Hello, subscriber! (message " + std::to_string(counter) + ")";
        zmq::message_t zmq_message(message.size());
        memcpy(zmq_message.data(), message.data(), message.size());
        socket.send(zmq_message);
        counter++;

        std::this_thread::sleep_for(std::chrono::seconds(1));
    }
}

