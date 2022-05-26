#include <algorithm>
#include <iostream>
#include <utility>
#include <string>
#include <map>


int main() {

    // current
    std::map <std::string, std::map<std::string, std::string>> currentConfItem = {
        {"k1",    {
                {"ck1", "cf1"},
                {"ck2", "cf2"},
                {"ck3", "cf3"},
                {"ck4", "cf4"}
            }
        },
        {"k2",    {
                {"ck111", "cf211"}, //<-- diff
                {"ck22", "cf22"},
                {"ck33", "cf33"},
                {"ck44", "cf44"}
            }
        },
        {"k3",    {                          //<-- diff
                {"ck3", "cf311"},
                {"ck4", "cf322"},
                {"ck5", "cf333"},
                {"ck6", "cf344"}
            }
        }
    };
    //previous
    std::map <std::string, std::map<std::string, std::string>> prevConfItem = {
        {"k1",    {
                {"ck1", "cf1"},
                {"ck2", "cf2"},
                {"ck3", "cf3"},
                {"ck4", "cf4"}
            }
        },
        {"k2",    {
                {"ck11", "cf11"},
                {"ck22", "cf22"},
                {"ck33", "cf33"},
                {"ck44", "cf44"}
            }
        }
    };

    std::map <std::string, std::map<std::string, std::string>> results;
    std::map <std::string, std::map<std::string, std::string>> deltaConfItem;

    std::set_difference(currentConfItem.begin(), currentConfItem.end(), prevConfItem.begin(), prevConfItem.end(), std::inserter(results, results.end()));

    auto buildDelta = [&](std::map <std::string, std::map<std::string, std::string>>::value_type &item) {
        auto it = prevConfItem.find(item.first);
        if(it != prevConfItem.end()) {
            //
            // child node found, thus the modification is in a field with key item.first
            //
            std::map<std::string, std::string> extracted_fields;

            std::set_difference (item.second.begin(), item.second.end(), it->second.begin(), it->second.end(), std::inserter(extracted_fields, extracted_fields.end()));

            deltaConfItem[it->first] = extracted_fields;
            extracted_fields.clear();

        } else {
            //
            // child node not found, thus this is a new node added key(item.first)
            // so copy it to the newly build deltaConfItem
            //
             deltaConfItem[item.first] = results[item.first];
        }
    };
    for_each (results.begin(), results.end(), buildDelta);
    auto print = [] (std::map <std::string, std::map<std::string, std::string>>::value_type &item) {
        std::cout << "+" << item.first << std::endl;
        for(auto &i: item.second){
            std::cout << " -" <<i.first<< ":" << i.second << std::endl;
        }
    };
    //
    // print
    //
    for_each (deltaConfItem.begin(), deltaConfItem.end(), print);
}

