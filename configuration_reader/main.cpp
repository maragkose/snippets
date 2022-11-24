#include "Configuration.hpp"


int main(int argc, char ** argv) {

    std::string file { argv[1] };
    Configuration conf(file);

    std::cout << conf.mystring() << "\n";
    std::cout << conf.myint() << "\n";
    std::cout << conf.mybool() << "\n";
    conf.set_myint(12);
    std::cout << conf.myint() << "\n";

}
