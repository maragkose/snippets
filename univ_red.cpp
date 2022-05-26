#include <iostream>



class A {
public:
A(){}
~A(){}

template<typename T> 
constexpr void setV(T&& val){
    m_V.assign(std::forward<T>(val));
}
std::string m_V;
};


std::string hello() {
    std::string hello {"hello"};
    return hello;
};
int main() {

A a;
a.setV("Hello");
std::cerr << a.m_V << std::endl;
a.setV(hello());
std::cerr << a.m_V << std::endl;

}
