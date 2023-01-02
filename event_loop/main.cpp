#include "EventLoop.hpp"
#include <iostream>

int main() {

	EventLoop ev;

	ev.Post([&]() {
        std::cout << "Hello World!" << std::endl;
    });

    ::Post(ev, [&]() {
        std::cout << "Hello World Again!" << std::endl;
    });
    std::this_thread::sleep_for(std::chrono::seconds(1));
}
