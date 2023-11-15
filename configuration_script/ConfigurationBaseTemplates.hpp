#ifndef CONFIGURATIONBASE_HPP_
#define CONFIGURATIONBASE_HPP_

#include <string>
#include <unordered_map>
#include <exception>
#include <stdexcept>
#include <boost/thread.hpp>

namespace tmpl {

//
/// @brief Configuration base class
/// @details This class is used to store configuration data.
/// It is used by the Configuration class to store the configuration data.
/// The data is stored in a std::unordered_map based on their type. 
/// The class provides methods to read the data from a file or the environment.
/// There are also two virtual methods that the derived class can override to
/// provide custom print and set_default methods.
//
//-----------------------------------------------
class ConfigurationBase {
//-----------------------------------------------

public:

                                                    ConfigurationBase(const std::string& file);
                                                    ConfigurationBase(); 

    template <typename T> 
    T                                               get(const std::string& key); 
    template <typename T>                           
    void                                            set(const std::string& key, T value); 
    
    void                                            read_file(const std::string& file_path);
    void                                            read_env();

    //virtual void                                  print() = 0;
    //virtual void                                  set_defaults() = 0;

private:
    
    template <typename T> 
    T                                               get_impl(const std::string& key, T*);
    template <typename T>
    void                                            set_impl(const std::string& key, T value, T*);

    std::unordered_map<std::string, int>            _int_config_map;
    std::unordered_map<std::string, std::string>    _string_config_map;

    std::string                                     _configuration_filename;
    
    boost::shared_mutex       _mutex;
};
    
//-----------------------------------------------
ConfigurationBase::ConfigurationBase(const std::string& file) :
//-----------------------------------------------
        _configuration_filename(file)
{
}

//-----------------------------------------------
ConfigurationBase::ConfigurationBase() {
//-----------------------------------------------
}

template <typename T>
//-----------------------------------------------
T ConfigurationBase::get(const std::string& key) {
//-----------------------------------------------
    return get_impl(key, (T*)nullptr);
}

template <typename T>
//-----------------------------------------------
void ConfigurationBase::set(const std::string& key, T value) {
//-----------------------------------------------
    set_impl(key, value, (T*)nullptr);
}

//-----------------------------------------------
void ConfigurationBase::read_file(const std::string& file_path) {
//-----------------------------------------------
    std::ifstream file(file_path);
    std::string line;
    while (std::getline(file, line)) {
        auto delimiter_pos = line.find("=");
        std::string key = line.substr(0, delimiter_pos);
        std::string value_str = line.substr(delimiter_pos + 1);

        if (value_str.find(",") != std::string::npos) {
            // List values
            std::vector<std::string> values = split(value_str, ',');
            if (is_int(values[0])) {
                std::vector<int> int_values;
                for (const auto& v : values) {
                    int_values.push_back(std::stoi(v));
                }
                //set<std::vector<int>>(key, int_values);
            } else {
                //set<std::vector<std::string>>(key, values);
            }
        } else {
            // Single value
            if (is_int(value_str)) {
                set<int>(key, std::stoi(value_str));
            //} else if (value_str == "true" || value_str == "false") {
            //    set<bool>(key, value_str == "true");
            } else {
                set<std::string>(key, value_str);
            }
        }
    }
}

//-----------------------------------------------
void ConfigurationBase::read_env() {
//-----------------------------------------------

    for (const auto &kv : _int_config_map) {
        std::string env_key = kv.first;
        std::transform(env_key.begin(), env_key.end(), env_key.begin(), ::toupper);
        char *env_value = std::getenv(env_key.c_str());
        set<int>(env_key, std::stoi(env_value));
    }
    for(const auto &kv : _string_config_map) {
        std::string env_key = kv.first;
        std::transform(env_key.begin(), env_key.end(), env_key.begin(), ::toupper);
        char *env_value = std::getenv(env_key.c_str());
        set<std::string>(env_key, env_value);
    }
}

template <>
//-----------------------------------------------
int ConfigurationBase::get_impl(const std::string& key, int*) {
//-----------------------------------------------
    boost::unique_lock<boost::shared_mutex> lock{_mutex};
    auto it = _int_config_map.find(key);
    if (it != _int_config_map.end()) {
        return it->second;
    } else {
        throw std::runtime_error("Key not found in int configuration map.");
    }
}

template <>
//-----------------------------------------------
std::string ConfigurationBase::get_impl(const std::string& key, std::string*) {
//-----------------------------------------------
    boost::unique_lock<boost::shared_mutex> lock{_mutex};
    auto it = _string_config_map.find(key);
    if (it != _string_config_map.end()) {
        return it->second;
    } else {
        throw std::runtime_error("Key not found in string configuration map.");
    }
}

template <>
//-----------------------------------------------
void ConfigurationBase::set_impl(const std::string& key, int value, int*) {
//-----------------------------------------------
    boost::unique_lock<boost::shared_mutex> lock{_mutex};
    _int_config_map[key] = value;
}

template <>
//-----------------------------------------------
void ConfigurationBase::set_impl(const std::string& key, std::string value, std::string*) {
//-----------------------------------------------
    boost::unique_lock<boost::shared_mutex> lock{_mutex};
    _string_config_map[key] = value;
}

}
#endif
