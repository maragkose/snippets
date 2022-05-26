#include <thread>
#include <atomic>
#include <iostream>
#include <chrono>
#include <thread>
#include <mutex>
#include <condition_variable>

struct MyClass {
    MyClass()
        : my_thread([this]() { 
            this->thread(); 
          })
    {}

    ~MyClass() {
        {
            std::lock_guard<std::mutex> l(m_);
            stop_ = true;
        }
        c_.notify_one();
        my_thread.join();
    }

    void thread() {
        while(this->wait_for(std::chrono::seconds(1)))
           std::cerr << "hello"; 
    }

    // Returns false if stop_ == true.
    template<class Duration>
    bool wait_for(Duration duration) {
        std::unique_lock<std::mutex> l(m_);
        return !c_.wait_for(l, duration, [this]() { return stop_; });
    }

    std::condition_variable c_;
    std::mutex m_;
    bool stop_ = false;
    std::thread my_thread;
};

int main() {
    MyClass o;

    std::this_thread::sleep_for(std::chrono::seconds(10));

}
