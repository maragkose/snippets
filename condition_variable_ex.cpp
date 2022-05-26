#include <iostream>
#include <condition_variable>
#include <thread>
#include <atomic>


int main() {


std::condition_variable w;
std::mutex mux;
std::atomic<bool> running {false};

running = true;

std::thread thread_1 ([&]() {
    std::unique_lock<std::mutex> lock(mux);
    while(running) {
        std::cerr << "hello";
        auto r = w.wait_for(lock, std::chrono::seconds(2), [&] { return running == false; });
        std::cerr << r;
    }
});


std::this_thread::sleep_for(std::chrono::seconds(3));

running = false;

w.notify_all();
thread_1.join();

std::cerr << "EXIT";
}
