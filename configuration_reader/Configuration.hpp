#ifndef CONFIGURATION_HPP
#define CONFIGURATION_HPP

#include <boost/thread.hpp>

#include <iostream>
#include <string>
#include <cstdlib>
#include <cctype>
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <algorithm>
#include <map>

#include "Logging.hpp"

#define _STR(s) %:s
    
using namespace std;

//----------------------------
class Configuration {
//----------------------------

public:

    //=======================================
    explicit Configuration(std::string file){
    //=======================================

        if(file.empty()) {
            read();
        } else {
            read(file);
        }
        buildMetaConfig();
    }

    //=======================================
    Configuration(){
    //=======================================

        read();
        buildMetaConfig();
    }

    //=======================================
     void print() {
    //=======================================
    
        #define DECLARE_CONFIGURATION(type, name, default) \
        INFO( %:name << _STR(=) << name () );
        #include "Configuration.inl"
        #undef DECLARE_CONFIGURATION
    }

    //=======================================
    // Following snippet generate the accessors
    // to the configuration json tree.
    // i.e 'std::string vault_type()'
    //=======================================
    #define DECLARE_CONFIGURATION(type, name, default) \
     type name () { \
        boost::unique_lock<boost::shared_mutex> lock{_mutex};\
        return _configuration_## type[_STR(name)];\
    } \
        void set_ ## name (const type & value) { \
        boost::unique_lock<boost::shared_mutex> lock{_mutex};\
        _configuration_ ## type[_STR(name)] = value;\
    }
    #include "Configuration.inl"
    #undef DECLARE_CONFIGURATION
   
private:
  
    std::map<std::string, std::string>  _configuration_string;
    std::map<std::string, uint32_t>     _configuration_int;
    std::map<std::string, bool>         _configuration_bool;

    boost::shared_mutex       _mutex;
    
    //=======================================
    void read(const std::string file){
    //=======================================

        INFO( "+ Reading configuration from file: [" << file << "]");

        try {
            #define DECLARE_CONFIGURATION(type, name, default) \
            _configuration_ ## type[_STR(name)] = default;

            #include "Configuration.inl"
            #undef DECLARE_CONFIGURATION

            parse_file(file);
            INFO( "+ Configuration loaded: ");
        
            #define DECLARE_CONFIGURATION(type, name, default) \
            std::string env_ %:%: name = %: name; \
            std::transform(env_ %:%: name.begin(), env_ %:%: name.end(), env_ %:%: name.begin(), ::toupper);\
            if(const char* env_val_ %:%: name = std::getenv( env_ %:%: name.c_str() )) {\
                TRACE( "Read from environment: " << _STR(name) << "=" << env_val_ %:%: name ); \
                if(std::string(_STR(type)) == std::string("integer")) {\
                    _configuration_int[_STR(name)] =  atoi(env_val_ ## name);\
                }\
                else if(std::string(_STR(type_json)) == std::string("bool")) {\
                    if(std::string(env_val_ %:%: name) == std::string("true")){\
                        _configuration_bool[_STR(name)] =  true;\
                    } else {\
                        _configuration_bool[_STR(name)] =  false;\
                    }\
                } else {\
                    _configuration_string[_STR(name)] =  env_val_ %:%: name;\
                }\
            }

            #include "Configuration.inl"
            #undef DECLARE_CONFIGURATION

        } catch (std::exception& e){
            TRACE(e.what());
            exit(1);
        }

        print();
    }
    //=======================================
    void read(){
    //=======================================
        #define DECLARE_CONFIGURATION(type, name, default) \
        _configuration_ ## type[_STR(name)] = default;

        #include "Configuration.inl"
        #undef DECLARE_CONFIGURATION

        INFO( "+ Reading configuration from environment!");

        #define DECLARE_CONFIGURATION(type, name, default) \
        std::string env_ %:%: name = %: name; \
        std::transform(env_ %:%: name.begin(), env_ %:%: name.end(), env_ %:%: name.begin(), ::toupper);\
        if(const char* env_val_ %:%: name = std::getenv( env_ %:%: name.c_str() )) {\
            TRACE( "Read from environment: " << _STR(name) << "=" << env_val_ %:%: name ); \
            if(std::string(_STR(type)) == std::string("integer")) {\
                _configuration_int[_STR(name)] =  atoi(env_val_ ## name);\
            }\
            else if(std::string(_STR(type_json)) == std::string("bool")) {\
                if(std::string(env_val_ %:%: name) == std::string("true")){\
                    _configuration_bool[_STR(name)] =  true;\
                } else {\
                    _configuration_bool[_STR(name)] =  false;\
                }\
            } else {\
                _configuration_string[_STR(name)] =  env_val_ %:%: name;\
            }\
        }
         
        #include "Configuration.inl"
        #undef DECLARE_CONFIGURATION

        print();
    }

    //=======================================
    void buildMetaConfig() {
    //=======================================

    }
   

    //----------------------------------
    inline bool is_number(const std::string &str) {
    //----------------------------------
        return !str.empty() && std::all_of(str.begin(), str.end(), ::isdigit);
    }

    //=======================================
    static std::vector<std::string> split(const std::string& s, const char delim, bool removeSpaces=false) {
    //=======================================

        auto i = 0;
        auto pos = s.find(delim);
        std::vector<std::string> v;
        std::vector<std::string> v_stripped;

        while (pos != std::string::npos) {
          v.push_back(s.substr(i, pos-i));
          i = ++pos
                  ;
          pos = s.find(delim, pos);

          if (pos == std::string::npos) {
             v.push_back(s.substr(i, s.length()));
          }
        }
        if(removeSpaces) {
            for(auto &str:v){
                str.erase(std::remove_if(str.begin(), str.end(), ::isspace), str.end());
                v_stripped.push_back(str);

            }
            return v_stripped;
        }
        return v;
    }
    //=======================================
    void parse_file(const std::string &filename) {
    //=======================================
        std::ifstream file(filename);
        std::string str;

        while (std::getline(file, str)) {
            auto token = split(str, '=', true);
            if(token.size() == 2) {
              std::cout << "[" <<  token[0] << "] = [" << token[1] << "]" << std::endl;
                if(is_number(token[1])) {
                    _configuration_int[token[0]] = atoi(std::string(token[1]).c_str());
                } else {
                    if(token[1] == "true") {
                        _configuration_bool[token[0]] = true;
                    } else if(token[1] == "false") {
                        _configuration_bool[token[0]] = false;
                    } else {
                        _configuration_string[token[0]] = token[1];
                    }
                } 
            }
        }
    }
};
#endif

