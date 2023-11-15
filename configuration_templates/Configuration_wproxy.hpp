#include <map>
#include <vector>
#include <string>
#include <fstream>
#include <boost/any.hpp>

class Configuration {
public:
    // Constructor
    Configuration() {}

    // Mutators
    template <typename T>
    void set(const std::string& key, T value) {
        map_[key] = value;
    }

    // Accessors
    template <typename T>
    T get(const std::string& key) {
        return boost::any_cast<T>(map_[key]);
    }
    class AnyProxy {
    public:
        AnyProxy(boost::any& any_value) : any_value_(any_value) {}
        template <typename T>
        T as() {
            return boost::any_cast<T>(any_value_);
        }

    private:
        boost::any& any_value_;
    };

    AnyProxy get(const std::string& key) {
        return AnyProxy(map_[key]);
    }

private:
    std::map<std::string, boost::any> map_;
};

