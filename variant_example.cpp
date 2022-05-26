#include <variant>
#include <string>
#include <cassert>

class Object {
public:
    int value = 1;
};

class None {

};
int main()
{
    std::variant<Object, None> myV;

    myV = None();
 
    try {
      std::get<Object>(myV);
    }
    catch (const std::bad_variant_access&) {
    
    }
}
