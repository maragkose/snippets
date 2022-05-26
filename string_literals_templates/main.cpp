#include <iostream>

// helper function
constexpr unsigned c_strlen( char const* str, unsigned count = 0 )
{
    return ('\0' == str[0]) ? count : c_strlen(str+1, count+1);
}

// destination "template string" type
template < char... chars >
struct exploded_string
{
    static void print()
    {
        char const str[] = { chars... };
        std::cout.write(str, sizeof(str));
    }
};

// struct to explode a `char const*` to an `exploded_string` type
template < typename StrProvider, unsigned len, char... chars  >
struct explode_impl
{
    using result =
        typename explode_impl < StrProvider, len-1,
                                StrProvider::str()[len-1],
                                chars... > :: result;
};

    // recursion end
    template < typename StrProvider, char... chars >
    struct explode_impl < StrProvider, 0, chars... >
    {
         using result = exploded_string < chars... >;
    };

// syntactical sugar
template < typename StrProvider >
using explode =
    typename explode_impl < StrProvider, c_strlen(StrProvider::str()) > :: result;


int main()
{
    // the trick is to introduce a type which provides the string, rather than
    // storing the string itself
    struct my_str_provider
    {
        constexpr static char const* str() { return "hello world"; }
    };
    
    auto my_str = explode < my_str_provider >{};    // as a variable
    using My_Str = explode < my_str_provider >;    // as a type
    
    my_str.print();
}

