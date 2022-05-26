#include <iostream>

struct supi_literal { 
    constexpr static char const* str() { return "supi"; }
};
struct gpsi_literal { 
    constexpr static char const* str() { return "gpsi"; }
};

template <typename T> 
void add_field() {

    std::cout << T::str() << std::endl;

}
template<>
void add_field<int> (){
    std::cout << "hello int";
}

int main() {

   add_field<supi_literal>();
   add_field<gpsi_literal>();
   add_field<int>();
}

