#include <cstdlib>

class instance {
public:
instance();
~instance();

};

class object {
public:

object(){};
~object(){};

instance get() {
    return nullptr;
}
private:

    instance _i;

};

int main() {

object o;

object.get();

}
