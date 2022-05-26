#include <iostream>
#include <boost/asio.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>

using namespace boost::asio;
using namespace std;

io_service io;

deadline_timer t(io, boost::posix_time::seconds(5));

void print(const boost::system::error_code& e)
{
 cout << e;
  cout << "Hello, world!\n";
}


int main()
{

  //deadline_timer t(io, boost::posix_time::seconds(5));
  t.expires_from_now(boost::posix_time::seconds(20));
  t.async_wait(print);
 // t.cancel();
  io.run();

  return 0;
}
