#include <iostream>
#include <string>
#include <type_traits>

namespace utility {
    using std::to_string;

    std::string
    concat()
    {
        return " ";
    }

    template<typename Head, typename... Tail>
    decltype( to_string(std::declval<Head>()) )
    concat(Head&& h, Tail&&... t);

    template<typename Head, typename... Tail>
    decltype(std::string() + std::declval<Head>())
    concat(Head&& h, Tail&&... t)
    {
        std::string tmp{" "};
        tmp+=std::forward<Head>(h);
        tmp+=concat(std::forward<Tail>(t)...);
        return tmp;
    }

    template<typename Head, typename... Tail>
    decltype( to_string(std::declval<Head>()) )
    concat(Head&& h, Tail&&... t)
    {
        std::string tmp{to_string(std::forward<Head>(h))};
        tmp+=concat(std::forward<Tail>(t)...);
        return tmp;
    }

    struct RedisError: public std::runtime_error {
        RedisError(const std::string error) : std::runtime_error("redis error - " + error) {}
    };
}

template<typename... Args>
std::string concat(Args&&... args)
{
    return utility::concat(std::forward<Args>(args)...);
}
