//
//  Weather update client in C++
//  Connects SUB socket to tcp://localhost:5556
//  Collects weather updates and finds avg temp in zipcode
//

#include <zmq.hpp>
#include <iostream>
#include <sstream>

int main (int argc, char *argv[])
{
    zmq::context_t context (1);

    //  Socket to talk to server
    zmq::socket_t subscriber (context, zmq::socket_type::sub);
    subscriber.connect("tcp://localhost:5556");

    //  Subscribe to zipcode, default is NYC, 10001
    subscriber.setsockopt(ZMQ_SUBSCRIBE, "", 0);


    zmq::message_t update;  
    while (true) {
        subscriber.recv(update);
        std::cout << "Received " << update.to_string() << std::endl;
    }

    return 0;
}

