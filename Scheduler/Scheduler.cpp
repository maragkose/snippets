#include <boost/asio.hpp>

class Scheduler
{
public:
  Scheduler();

  void schedule(std::function<void()> task);

  void schedule(std::function<void()> task, int delay);

  void run()
  {
    ioService_.run();
  }

private:
  void executeTask(std::function<void()> task, int delay);

  boost::asio::io_service ioService_;
  boost::asio::io_service::work work_;
};

Scheduler::Scheduler()
  : ioService_(),
    work_(ioService_)
{
}

void Scheduler::schedule(std::function<void()> task)
{
  ioService_.post(task);
}

void Scheduler::schedule(std::function<void()> task, int delay)
{
  ioService_.post(boost::bind(&Scheduler::executeTask, this, task, delay));
}

void Scheduler::executeTask(std::function<void()> task, int delay)
{
  boost::asio::deadline_timer timer(ioService_, boost::posix_time::milliseconds(delay));
  timer.async_wait([&](const boost::system::error_code& error)
                   {
                     if (!error)
                     {
                       task();
                     }
                   });
}

