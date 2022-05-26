#include <iostream>
#include <memory>

std::string setHello;

void setA(std::string && hello) {
    std::cerr << "universal ref called" << std::endl;
    setHello = std::forward<std::string>(hello);
}
void setA(const std::string & hello) {
    std::cerr << "const ref called" << std::endl;
    setHello = hello;
}

std::string getString() {
    return "helo";
}
int main() {

    std::string h{"hello"};

    const std::string hh = "hell";

    setA(h);
    setA(hh);
    setA(getString());

}
