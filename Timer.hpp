#ifndef TIMER_HPP_
#define TIMER_HPP_

#include <thread>
#include <memory>
#include <mutex>
#include <condition_variable>

class manual_event
{
public:
    explicit manual_event(bool signaled = false) noexcept
    : m_signaled(signaled) {}

    void signal() noexcept
    {
        {
            std::unique_lock<std::mutex> lock(m_mutex);
            m_signaled = true;
        }
        m_cv.notify_all();
    }

    void wait() noexcept
    {
        std::unique_lock<std::mutex> lock(m_mutex);
        m_cv.wait(lock, [&](){ return m_signaled != false; });
    }

    template<typename T>
    bool wait_for(T t) noexcept
    {
        std::unique_lock<std::mutex> lock(m_mutex);
        return m_cv.wait_for(lock, t, [&](){ return m_signaled != false; });
    }

    template<typename T>
    bool wait_until(T t) noexcept
    {
        std::unique_lock<std::mutex> lock(m_mutex);
        return m_cv.wait_until(lock, t, [&](){ return m_signaled != false; });
    }

    void reset() noexcept
    {
        std::unique_lock<std::mutex> lock(m_mutex);
        m_signaled = false;
    }

private:
    bool m_signaled = false;
    std::mutex m_mutex;
    std::condition_variable m_cv;
};

namespace timer
{
    template<typename D, typename F, typename... Args>
    std::shared_ptr<manual_event> set_timeout(D d, F f)
    {
        auto event = std::make_shared<manual_event>();
        std::thread([=]()
        {
            if(event->wait_for(d)) return;
            f();
        }).detach();
        return event;
    }
 
    template<typename D, typename F, typename... Args>
    std::shared_ptr<manual_event> set_interval(D d, F f)
    {
        auto event = std::make_shared<manual_event>();
        std::thread([=]()
        {
            while(true)
            {
                if(event->wait_for(d)) return;
                f();
            }
        }).detach();
        return event;
    }
}
#endif
