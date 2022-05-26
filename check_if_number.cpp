#include <algorithm>
#include <string> 
#include <iostream>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

using namespace boost::property_tree;
bool is_number(const std::string &s) {
  return !s.empty() && std::all_of(s.begin(), s.end(), ::isdigit);
}
int main () {
  

    ptree       m_configuration;

    std::string env_vault_type = "vault_type"; 
    std::transform(env_vault_type.begin(), env_vault_type.end(), env_vault_type.begin(), ::toupper); 

    

    if(const char* env_val_vault_type = std::getenv( env_vault_type.c_str() )) { 
        std::cerr << env_val_vault_type << std::endl; 
        if (is_number( std::string(env_val_vault_type)) ) {
            std::cerr << "It is number!! " << env_val_vault_type << std::endl;
            int n= std::stoi(env_val_vault_type);
            m_configuration.put<int>("Config.vault_type", n); 
        } else {
            m_configuration.put<std::string>("Config.vault_type", env_val_vault_type);
        }
    }
    boost::property_tree::write_json("dump.json", m_configuration);

}
