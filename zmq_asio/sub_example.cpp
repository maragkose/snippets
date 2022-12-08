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
    std::cout << "Collecting updates .\n" << std::endl;
    zmq::socket_t subscriber (context, zmq::socket_type::sub);
    subscriber.connect("tcp://127.0.0.1:50055");

    //  Subscribe to zipcode, default is NYC, 10001
	//const char *filter = (argc > 1)? argv [1]: "10001 ";
    subscriber.set(zmq::sockopt::subscribe, "");

    while(1) { 

        zmq::message_t update;
        subscriber.recv(update, zmq::recv_flags::none);
        std::cout << "Recvd: " << update.to_string() << std::endl;
    }
    return 0;
}
