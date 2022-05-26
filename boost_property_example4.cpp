#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>
#include "KmsProcessConfiguration.hpp"
#include <boost/foreach.hpp>

#include <iostream>

using namespace boost::property_tree;
template <typename T>
std::vector<T> as_vector(ptree const& pt, ptree::key_type const& key)
{
    std::vector<T> r;
    for (auto& item : pt.get_child(key))
        r.push_back(item.second.get_value<T>());
    return r;
}
int main() {

ptree      pos;
//boost::property_tree::json_parser::read_json("../config/kmsd.conf", pos);
//auto list = pos.get_child("ki_types");
//for(auto item: list){
//std::cerr<<item.first << ":" << item.second.data() << std::endl;
//}
//std::for_each(std::begin(pos), std::end(pos), [](ptree::value_type& kv) { 
//            std::cout << "K: " << kv.first << std::endl;
//            std::cout << "V: " << kv.second.get<std::string>("") << std::endl;
//        });

//==========================
//    KmsProcessConfiguration oConfig("../config/kmsd.conf");
//    auto l = oConfig.getArray("ki_types");
//==========================
    boost::property_tree::json_parser::read_json("../config/kmsd.conf.mod", pos);
    auto list =  pos.get_child("passwords");
/*    for (auto l: list){
        std::cerr << l.first.data() << ":" << l.second.data() << std::endl;
        for(auto a: l.second) {
        std::cerr << a.first.data() << "::" << a.second.data() << std::endl;
            for(auto f: a.second) {
                std::cerr << f.first.data() << ":::" << f.second.data() << std::endl;
            }
        }
    }
    */

    for (const auto& p_password: pos.get_child("passwords")) {
        const auto& p_type = p_password.second.get_child("type");
        std::cerr << "type:" << p_type.data() << std::endl;

        const auto& p_users = p_password.second.get_child("users");

        std::cerr << "=======================" << std::endl;
        for (const auto& p_user: p_users) {

            const std::string& username = p_user.second.get_child("username").data();
            const std::string& pwlen    = p_user.second.get_child("pwlen").data();

            std::cerr << "username:" << username << " pwlen:" << pwlen << std::endl;

            const auto& p_roles = p_user.second.get_child("roles");

            for (const auto& p_role: p_roles) {
                std::cerr << "role:" << p_role.second.data() << std::endl;
            }
        std::cerr << "=======================" << std::endl;
        }
    }//end first for
}

