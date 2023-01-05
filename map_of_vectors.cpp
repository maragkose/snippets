#include <map>
#include <vector>
#include <iostream>


int main() {

    std::map<std::string, std::vector<int>> map_of_vectors;

    map_of_vectors["one"].push_back(1);
    map_of_vectors["one"].push_back(2);
    map_of_vectors["one"].push_back(3);

    map_of_vectors["two"].push_back(4);
    map_of_vectors["two"].push_back(5);
    map_of_vectors["two"].push_back(6);


    for(auto &member: map_of_vectors["one"]) {
        std::cout << member << std::endl;
    }
    return 0;

}
