//
//  Weather update server in C++
//  Binds PUB socket to tcp://*:5556
//  Publishes random weather updates
//
#include <zmq.hpp>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <thread>
#include <chrono>
int main () {

    //  Prepare our context and publisher
    zmq::context_t context (1);
    zmq::socket_t publisher (context, zmq::socket_type::pub);
    publisher.bind("tcp://*:5556");

    //  Initialize random number generator
    while (1) {

        zmq::message_t message(20);
        std::string hello =  "Hello World";
        memcpy(message.data(), hello.c_str(), hello.size());
        publisher.send(message, zmq::send_flags::none);
        std::this_thread::sleep_for(std::chrono::milliseconds(2000));

    }
    return 0;
}
