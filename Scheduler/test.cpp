#include <boost/asio.hpp>
#include <chrono>
#include <iostream>

using namespace boost::asio;

int main()
{
  io_context ioc;

  // Create a deadline_timer that expires from now
  deadline_timer timer{ioc, std::chrono::seconds(5)};

  // Start an asynchronous wait on the timer
  timer.async_wait([](const boost::system::error_code& error)
  {
    if (error)
    {
      // The timer was cancelled
      std::cout << "Timer was cancelled" << std::endl;
    }
    else
    {
      // The timer expired
      std::cout << "Timer expired" << std::endl;
    }
  });

  // Run the io_context loop
  ioc.run();

  return 0;
}

