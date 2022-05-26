#include <map>
#include <iostream>
#include <string>
#include <vector>
#include <regex>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

const char  delimiter = {'.'};

std::string transform(const std::string str) {
   std::string s = str;
   std::replace(s.begin(), s.end(), '.', delimiter);
   std::replace(s.begin(), s.end(), '[', delimiter);
   std::remove(s.begin(), s.end(), ']');
   return std::move(s);
}

std::vector<std::string> flatten (std::map<std::string, std::map<std::string, std::string>> container) {

    std::vector<std::string> fl;
    std::string line; 

    for (auto &item: container){
            
        for (auto &p: item.second){
            
            auto ss = transform(item.first);
            line += ss;
            line += delimiter;
           
            std::string s = transform(p.first);
            line += s;
            line += delimiter;
            line += p.second;
            fl.push_back(line);
            line.clear();
        }
    }

    return fl;
}
std::map<std::string, std::string> tokv (std::map<std::string, std::map<std::string, std::string>> container) {

    std::map<std::string, std::string> fl;
    std::string line; 

    for (auto &item: container){
            
        for (auto &p: item.second){
            
            auto ss = transform(item.first);
            line += ss;
            line += delimiter;
           
            std::string s = transform(p.first);
            line += s;
            fl[line] = p.second;
            line.clear();
        }
    }

    return fl;
}


int main() {
    
    using boost::property_tree::ptree;
    ptree pt;

    std::map<std::string, std::map<std::string, std::string>> ConfigA = 
    {
        {{"m3ua-associations-sets.IPSM1"}, {
                {{"association-set-name"},{"IPSM1"}},
                {{"m3ua-associations.association[1].primary-source-ipv4-address"},{"127.0.0.1"}},
                {{"network-appearance"},{"not-in-use"}},
                }
        },
        {{"m3ua-associations-sets.IPSM2"},  {
                {{"association-set-name"},{"IPSM1"}},
                {{"m3ua-associations.association[1].primary-source-ipv4-address"},{"127.0.0.1"}},
                {{"network-appearance"},{"not-in-use"}},
                }
        },
        {{"m3ua-associations-sets.IPSM3"},  {
                {{"association-set-name"},{"IPSM1"}},
                {{"m3ua-associations.association[1].primary-source-ipv4-address"},{"127.0.0.1"}},
                {{"m3ua-associations.association[1].secondary-source-ipv4-address"},{"127.0.0.1"}},
                {{"network-appearance"},{"not-in-use"}},
                }
        }
    };
    std::map<std::string, std::map<std::string, std::string>> ConfigB = 
    {
        {{"m3ua-associations-sets.A"}, {
                {{"association-set-name"},{"IPSM1"}},
                {{"m3ua-associations.association[1].primary-source-ipv4-address"},{"127.0.0.1"}},
                {{"network-appearance"},{"not-in-use"}},
                }
        },
        {{"m3ua-associations-sets.B"},  {
                {{"association-set-name"},{"IPSM111"}},
                {{"m3ua-associations.association[1].primary-source-ipv4-address"},{"127.0.0.1"}},
                {{"network-appearance"},{"not-in-use"}},
                }
        }
    };

    auto v = tokv(ConfigA);

    for(auto &str: v){
        pt.put(str.first, str.second);
    }

    for(auto &item: pt.get_child("m3ua-associations-sets")) {
        std::cerr << "+" << item.first <<std::endl;
        std::cerr << item.second.get_child("association-set-name_").data() << std::endl;
        //std::cerr << item.second.get<std::string>("association-set-nameaa", "not there") << std::endl;

        for(auto &p: item.second) {
            std::cerr << "++" << p.first << ":" << p.second.data() << std::endl;
        }
    }
    boost::property_tree::write_json("my.json", pt);
}

