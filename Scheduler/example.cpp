#include <iostream>
#include <chrono>

#include <boost/asio.hpp>

using namespace std;
using namespace boost::asio;

// Define a custom deleter function for a steady_timer.
// This function takes a pointer to a steady_timer and cancels it.
void timer_deleter(steady_timer* p)
{
    std::cout << "Deleted timer! " << std::endl;
  p->cancel();
  delete p;
}

int main()
{
  // Create an I/O service object.
  io_service io_service;

  // Create a shared_ptr that manages a dynamically-allocated steady_timer.
  // We will use the timer_deleter function as the custom deleter.
 //auto timer = std::make_shared<steady_timer>((io_service), timer_deleter);
    std::shared_ptr<steady_timer> timer(new steady_timer(io_service), timer_deleter);
  // Set a timeout for the timer.
  timer->expires_from_now(std::chrono::milliseconds(1000));

  // Start the timer and wait for it to expire.
  timer->async_wait([&](const boost::system::error_code & error) {
    std::cout << "Timer expired!" << std::endl;
  });

  std::cout << "Run" << std::endl;
  io_service.run();

  // The shared_ptr will use the custom deleter to cancel and delete the timer when it is no longer needed.
  // In this case, the timer will be deleted when the shared_ptr goes out of scope.

  for(;;) {};
  return 0;
}

