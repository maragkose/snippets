#include <map>
#include <vector>
#include <iostream>

template <template <typename, typename...> class ContainerType,
          typename ValueType, typename... Args>
void print_container(const ContainerType<ValueType, Args...>& c) {
  for (const auto& v : c) {
    std::cout << v << ' ';
  }
  std::cout << '\n';
}


int main () {

    std::map <std::string, std::string> _m = { {"hello", "there"},  {"yes", "no"}};

    std::vector<std::string> _v = {"hello", "thjre"};
    print_container(_v);

}

