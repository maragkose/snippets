#include <iostream>
#include <string>
#include <tuple>

template <typename T>
std::string to_string(T value)
{
  return std::to_string(value);
}

std::string to_string(const char* value)
{
  return value;
}

class Logger
{
public:
  Logger() = default;

  template <typename... Args>
  void log(const char* fmt, Args... args)
  {
    std::string str;
    log(str, fmt, std::make_tuple(args...));
    std::cout << str << std::endl;
  }

private:
  template <typename... Args>
  void log(std::string& str, const char* fmt, std::tuple<Args...> args)
  {
    for (const char* p = fmt; *p; ++p)
    {
      if (*p == '%')
      {
        ++p;
        if (*p == '%')
        {
          str += '%';
        }
        else
        {
          str += ", ";
          switch (*p)
          {
            case 'd':
              str += to_string(std::get<0>(args));
              break;
            case 'f':
              str += to_string(std::get<0>(args));
              break;
            case 's':
              str += to_string(std::get<0>(args));
              break;
          }
        }
      }
      else
      {
        str += *p;
      }
    }
  }
};

Logger logger;

#define DEBUG(fmt, ...) logger.log(fmt, __VA_ARGS__)

int main()
{
  // Log some values using the DEBUG macro
  DEBUG("The number is %d", 42);
  DEBUG("The floating-point number is %f", 3.14);
  DEBUG("The string is %s", "hello, world");

  // Log a string and an integer using the DEBUG macro
  DEBUG("The string is %s, and the integer %d", "hello, world", 5);

  return 0;
}

