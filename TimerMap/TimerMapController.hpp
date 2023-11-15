#include <boost/asio.hpp>
#include <map>
#include <string>
#include "TimerMap.hpp"

//------------------------------------------------------
class TimerMapController : public TimerMap {
//------------------------------------------------------

public:

                                                TimerMapController();
                                                ~TimerMapController() = default;

  void                                          start();
  void                                          stop();

private:

    boost::asio::io_service                     _io_service; 
    std::unique_ptr<std::thread>                _thread;
    boost::asio::executor_work_guard
    <boost::asio::io_context::executor_type>    _work;
};

//------------------------------------------------------
TimerMapController::TimerMapController() :
//------------------------------------------------------
    TimerMap(_io_service, 1000),
    _work(boost::asio::make_work_guard(_io_service))
{
}

//------------------------------------------------------
void TimerMapController::start() {
//------------------------------------------------------
    _thread = std::make_unique<std::thread>([this]() {
        _io_service.run();
    });
}

//------------------------------------------------------
void TimerMapController::stop() {
//------------------------------------------------------
    _work.reset();
    _io_service.stop();

    if(_thread) {
        _thread->join();
    }
}

