#ifndef EVENTSCHEDULER_HPP
#define EVENTSCHEDULER_HPP

#include <boost/asio.hpp>
#include <thread>
#include <iostream>

void timer_deleter(boost::asio::steady_timer* p)
{
    std::cout << "Deleted timer! " << std::endl;
    p->cancel();
    delete p;
}

/*!  \class 
*    \brief Brief class description
*           Detailed description}
*
*///-----------------------------------------
class EventScheduler {
//-------------------------------------------
public:
  
                                                EventScheduler();
    
    void                                        start(); 
    void                                        stop(); 

    void                                        schedule(std::function<void()> task);
    void                                        schedule(std::function<void()> task, int delay);

    static void                                 invoke(EventScheduler& scheduler, std::function<void()> task);
    static void                                 invoke(EventScheduler& scheduler, std::function<void()> task, int delay);

private:

    void                                        executeTask(const std::function<void()> & task, int delay);

    boost::asio::io_service                     _io_service;
    std::unique_ptr<std::thread>                _thread;
    boost::asio::executor_work_guard
    <boost::asio::io_context::executor_type>    _work;
};

//-------------------------------------------
EventScheduler::EventScheduler()
//-------------------------------------------
  : _io_service(),
    _work(boost::asio::make_work_guard(_io_service))

{
}

//-------------------------------------------
inline void EventScheduler::schedule(std::function<void()> task) {
//-------------------------------------------
    _io_service.post(task);
}

//-------------------------------------------
inline void EventScheduler::schedule(std::function<void()> task, int delay) {
//-------------------------------------------
    _io_service.post([this, task = std::move(task), delay]() { 
            executeTask(task, delay);
    });
}

//-------------------------------------------
void EventScheduler::invoke(EventScheduler& scheduler, std::function<void()> task) {
//-------------------------------------------
    scheduler.schedule(std::move(task));
}

//-------------------------------------------
void EventScheduler::invoke(EventScheduler& scheduler, std::function<void()> task, int delay) {
//-------------------------------------------
    scheduler.schedule(std::move(task), delay);
}
  
//-------------------------------------------
inline void EventScheduler::start() {
//-------------------------------------------
    _thread = std::make_unique<std::thread>([this]() { 
        _io_service.run(); 
    });
}

//-------------------------------------------
inline void EventScheduler::stop() {
//-------------------------------------------
    
    _io_service.stop();

    if(_thread) {
        _thread->join();
    }
}

//-------------------------------------------
inline void EventScheduler::executeTask(const std::function<void()>& task, int delay) {
//-------------------------------------------
    auto timer = std::make_shared<boost::asio::steady_timer>(_io_service, std::chrono::milliseconds(delay));
    //std::shared_ptr<boost::asio::steady_timer> timer(new boost::asio::steady_timer(_io_service, std::chrono::milliseconds(delay)), timer_deleter);

    // 
    // We capture the timer shared_ptr to pass ownership so it will be deleted as soon as
    // the timer expires and executes the lambda
    //
    timer->async_wait([this, task, timer](const boost::system::error_code& error) {
        if (!error) {
            task();
        } else {
            std::cout << "expired" << std::endl;
        }
    });
}

#endif
