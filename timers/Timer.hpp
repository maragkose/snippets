#include <thread>
#include <iostream>
#include <atomic>

class Timer {

public:

    virtual std::string asString() = 0;

    template <typename Duration, typename Function>
    void timer(Duration const & d, Function const & f)
    {
        std::thread([d,f](){
            std::this_thread::sleep_for(d);
            f();
        }).detach();
    }

    void timer_start (size_t t) {
        m_flag = true;
        timer(std::chrono::seconds(t), [this](){
           timer_expired();
        });
    }
    void timer_stop () {
        m_flag = false;
    }

    void timer_expired() {
        if(m_flag) {
            std::cerr << "Action timer expired" << asString() << std::endl;
        }
    }

    std::atomic<bool>   m_flag;
};

