#include <iostream>
#include <vector>
#include <string>

void tprintf(const char* format) // base function
{
    std::cout << format;
}
 
template<typename T, typename... Targs>
void tprintf(const char* format, T value, Targs... Fargs) // recursive variadic function
{
    for ( ; *format != '\0'; format++ ) {
        if ( *format == '%' ) {
           std::cout << value;
           tprintf(format+1, Fargs...); // recursive call
           return;
        }
        std::cout << *format;
    }
}

template<typename ...Targs>
void parse(Targs... strings) {

    std::vector<std::string> str { strings...};
    const char * arr[sizeof...(strings)] =  {strings...};
}
int main()
{
    parse("hello", "world");
    return 0;
}
