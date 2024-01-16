#include <iostream>

class Main {

public:

    Main() { 
            std::cout << "Hello" << std::endl; 
    };
    void incr() {
        _i++;
    }
    ~Main() = default;

private:
   int _i=0; 
};


int main(int argc, char *argv[])
{
    
    Main m;
    m.incr();

    return 0;
}
