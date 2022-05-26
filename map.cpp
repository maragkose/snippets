#include <map>
#include <iostream>

class A {

public:

int value;

};

int main() {

std::map<int, A> m;
A a;
a.value = 10;

m[1] = a;

A *pa = &(m[1]);

std::cout << pa->value;

}
