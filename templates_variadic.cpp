#include <iostream>

template <typename... services>
class A {

    public:

    void set();
};

template <typename... services>
void A<services...>::set() {
    std::cerr << "hello";
}
int main() {

    A<int>  a;
}
