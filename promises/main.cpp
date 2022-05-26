#include <iostream>
#include <thread>
#include <future>

std::promise<void> prom;

void react () {

    std::cerr << "REACT"<< std::endl;

};

void detect () {
    std::thread th([] {
        std::cerr << "THREAD" << std::endl;
        prom.get_future().wait();
        react();
        });


    std::this_thread::sleep_for(std::chrono::milliseconds(1000));

    std::cerr << "call promset value"<< std::endl;
    prom.set_value();
    std::cerr << "after promset value"<< std::endl;
    std::this_thread::sleep_for(std::chrono::milliseconds(1000));
    th.join();
}
int main() {

detect();

}
