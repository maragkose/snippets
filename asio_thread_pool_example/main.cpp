#include <boost/asio.hpp>
#include <boost/bind/bind.hpp>
#include <boost/thread.hpp>
#include <iostream>
#include <future>

boost::asio::thread_pool g_pool(5);

int f(int i) {
    std::cout << '(' + std::to_string(i) + ')';
    return i * i;
}

int main() {
    std::cout << std::unitbuf;
    
    std::array strands{make_strand(g_pool.get_executor()),
                       make_strand(g_pool.get_executor()),
                       make_strand(g_pool.get_executor())};

    for (size_t i = 0; i != 50; ++i) {
        post(strands.at(i % 3), boost::bind(f, i));
    }

    post (g_pool.get_executor(), [&] () { std::cout << "hello" << std::endl;}); 
    g_pool.join();
}
