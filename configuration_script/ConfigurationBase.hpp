#ifndef CONFIGURATIONBASE_HPP
#define CONFIGURATIONBASE_HPP

#include <boost/thread.hpp>

#include <map>
#include <vector>
#include <string>
#include <sstream>
#include <fstream>
#include <boost/any.hpp>
#include <string>
#include <algorithm>

std::vector<std::string> split(const std::string& str, char delimiter) {
    std::vector<std::string> result;
    std::stringstream ss(str);
    std::string item;
    while (std::getline(ss, item, delimiter)) {
        result.push_back(item);
    }
    return result;
}

bool is_int(const std::string& s) {
    if(s.empty() || ((!isdigit(s[0])) && (s[0] != '-') && (s[0] != '+'))) return false ;
    char * p ;
    strtol(s.c_str(), &p, 10) ;
    return (*p == 0) ;
}

// 
/// @brief ConfigurationBase is a base class for configuration classes.
/// @details ConfigurationBase is a base class for configuration classes.
/// It provides a simple interface for reading and writing configuration
/// parameters from and to a file. The configuration parameters are stored
/// in a map. The map is filled by reading a configuration file. The
/// configuration file is a text file with the following format:
/// # This is a comment
/// parameter1 = value1
/// parameter2 = value2
/// ...
//
//-----------------------------------------------
class ConfigurationBase {
//-----------------------------------------------
public:

                                        ConfigurationBase(const std::string& file);
                                        ConfigurationBase();
    virtual                            ~ConfigurationBase();

    template <typename T>
    T                                   get(const std::string& key);
    template <typename T>
    void                                set(const std::string& key, T value);

    void                                read_file(const std::string& file_path);
    void                                read_env();

    virtual void                        print() = 0;
    virtual void                        set_defaults() = 0;

private:

    std::map<std::string, boost::any>   _config_map;
    std::string                         _configuration_filename {};
    
    boost::shared_mutex                 _mutex;
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

//-----------------------------------------------
ConfigurationBase::~ConfigurationBase() {
//-----------------------------------------------
}

template <typename T>
//-----------------------------------------------
T ConfigurationBase::get(const std::string& key) {
//-----------------------------------------------
    boost::unique_lock<boost::shared_mutex> lock{_mutex};
    return boost::any_cast<T>(_config_map[key]);
}

template <typename T>
//-----------------------------------------------
void ConfigurationBase::set(const std::string& key, T value) {
//-----------------------------------------------
    boost::unique_lock<boost::shared_mutex> lock{_mutex};
    _config_map[key] = value;
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
        auto value = _config_map[key];
        if(value.type() == typeid(int)) {
            if(is_int(value_str)) {
                _config_map[key] = std::stoi(value_str);
            }
        } else if(value.type() == typeid(std::string)) {
            _config_map[key] = value_str;
        } else if(value.type() == typeid(std::vector<int>)) {
            auto values = split(value_str, ',');
            std::vector<int> result;
            for(auto& v : values) {
                if(is_int(v)) {
                    result.push_back(std::stoi(v));
                }
            }
            _config_map[key] = result;
        } else if(value.type() == typeid(std::vector<std::string>)) {
            auto values = split(value_str, ',');
            _config_map[key] = values;
        }
    }
}

//-----------------------------------------------
void ConfigurationBase::read_env() {
//-----------------------------------------------

    for (const auto &kv : _config_map) {
        std::string env_key = kv.first;
        std::transform(env_key.begin(), env_key.end(), env_key.begin(), ::toupper);
        char *env_value = std::getenv(env_key.c_str());
        if (env_value != nullptr) {
            std::string value_str {env_value};
            // @todo put to a function
            if(kv.second.type() == typeid(std::string)) {
                set<std::string>(kv.first, value_str);
            } else if(kv.second.type() == typeid(int)) {
                set<int>(kv.first, std::stoi(value_str));
            } else if(kv.second.type() == typeid(bool)) {
                set<bool>(kv.first, value_str == "true");
            } else if(kv.second.type() == typeid(std::vector<int>)) {
                std::vector<std::string> values = split(value_str, ',');
                std::vector<int> int_values;
                for (const auto& v : values) {
                    int_values.push_back(std::stoi(v));
                }
                set<std::vector<int>>(kv.first, int_values);
            } else if(kv.second.type() == typeid(std::vector<std::string>)) {
                std::vector<std::string> values = split(value_str, ',');
                set<std::vector<std::string>>(kv.first, values);
            }
        }
    }
}

#endif // CONFIGURATIONBASE_HPP
