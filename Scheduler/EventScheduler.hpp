#ifndef EVENTSCHEDULER_HPP
#define EVENTSCHEDULER_HPP

#include <boost/asio.hpp>
#include <thread>
#include <iostream>

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

    void                                        executeTask(std::function<void()> task, int delay);

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
inline void EventScheduler::executeTask(std::function<void()> task, int delay) {
//-------------------------------------------
    auto timer = new boost::asio::steady_timer(_io_service, std::chrono::milliseconds(delay));

    timer->async_wait([this, task, timer](const boost::system::error_code& error) {
        if (!error) {
            task();
            delete timer;
        } else {
            std::cout << "expired" << std::endl;
            delete timer;
        }
    });
}

#endif
