//
//  Weather update server in C++
//  Binds PUB socket to tcp://*:5556
//  Publishes random weather updates
//
#include <zmq.hpp>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include<unistd.h>
#include <iostream>
#include <thread>
#include <chrono>

int main () {

    //  Prepare our context and publisher
    zmq::context_t context (1);
    zmq::socket_t publisher (context, zmq::socket_type::pub);
    publisher.bind("tcp://127.0.0.1:50055");
    publisher.connect("tcp://127.0.0.1:50055");

    std::this_thread::sleep_for(std::chrono::milliseconds(200));
    int k =0;
    //while (1) {
        zmq::message_t message(5);
        //snprintf ((char *) message.data(), 20 ,"%05d %d %d", zipcode, temperature, relhumidity);
        //if(k==10) {break;}
        memcpy(message.data(), "hello", 5);
        std::cout << "Sending " << message.to_string() << std::endl;
        //k++;
        //auto rt = publisher.send(message, zmq::send_flags::none);
        auto res = publisher.send(zmq::str_buffer("hello world"), zmq::send_flags::none);

        std::cout << "rt:" << *res;

    //}
    return 0;
}
