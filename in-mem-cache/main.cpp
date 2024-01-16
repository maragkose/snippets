#include "Cache.hpp"


int main() {

    Cache cache;

    // Adding users to different buckets with optional arguments

    for(int i=0;i<120000;i++) {
        std::string user = std::to_string(i);
        std::string other = "other" + std::to_string(i);
        cache.add_data(user, i, "other1");
    }

    // Dumping bucket contents
    //cache.dump();

    return 0;
}
