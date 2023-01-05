#include <map>
#include <string>
#include <iostream>
#include <functional>

int main() {
    std::map<std::string, std::function<int(int, int)>> map_of_callables;

