#include <iostream>
#include <map>
#include <algorithm>
#include <vector>
#include <set>
std::vector<std::string> extract_keys(std::map<std::string, std::string> const& input_map) {
    std::vector<std::string> retval;
    for (auto const& element : input_map) {
      retval.push_back(element.first);
    }
    return retval;
}

bool compareFirst(const std::pair<std::string, std::string>& p1, const std::pair<std::string, std::string>& p2)
{
    return p1.first < p2.first; 
}
bool comparePair(const std::pair<std::string, std::string>& p1, const std::pair<std::string, std::string>& p2)
{
    if (p1.first < p2.first) {
        return true;
    } else if (p1.first > p2.first){
        return false;
    } else {
        return p1.second < p2.second;
    }
}

int main() {


    // Comparing maps first added/deleted
    std::map<std::string, std::string> ccc;
    std::map<std::string, std::string> ModifiedKeys;
    std::map<std::string, std::string> CommonKeys;
    std::map<std::string, std::string> NonModifiedCommonKeys;

    std::set<std::string> sss;

        std::map<std::string, std::string> kvs_a = {
            {{"there1"},{"1"}},
            {{"there2"},{"2"}},
            {{"there3"},{"3"}},
            {{"there4"},{"4"}},
            {{"there5"},{"5"}}
        };
        std::map<std::string, std::string> kvs_b = {
            {{"there1"},{"1"}},
            {{"there2"},{"2"}},
            {{"there3"},{"3"}},
            {{"there4"},{"4"}},
            {{"there5"},{"6"}}
        };


    std::set_difference(kvs_a.begin(), kvs_a.end(),
                                  kvs_b.begin(), kvs_b.end(),
                                  //std::inserter(ccc, ccc.end()),
                                  std::inserter(sss, sss.end()),
                                  compareFirst
                                  );
    
    std::cerr<< "Deleted" << std::endl;
    for(auto & p: ccc){
            std::cerr << p.first << ":"<< p.second << std::endl;
    }
    ccc.clear(); 
    std::set_difference(kvs_b.begin(), kvs_b.end(),
                                  kvs_a.begin(), kvs_a.end(),
                                  std::inserter(ccc, ccc.end()),
                                  compareFirst
                                  );
    
    std::cerr<< "Added" << std::endl;
    for(auto & p: ccc){
            std::cerr << p.first << ":"<< p.second << std::endl;
    }
    
    ccc.clear(); 
    std::set_intersection(kvs_a.begin(), kvs_a.end(),
                                  kvs_b.begin(), kvs_b.end(),
                                  std::inserter(CommonKeys, CommonKeys.end()),
                                  compareFirst
                                  );
    std::set_intersection(kvs_a.begin(), kvs_a.end(),
                                  kvs_b.begin(), kvs_b.end(),
                                  std::inserter(NonModifiedCommonKeys, NonModifiedCommonKeys.end()),
                                  comparePair
                                  );
    std::set_difference(CommonKeys.begin(), CommonKeys.end(),
                                  NonModifiedCommonKeys.begin(), NonModifiedCommonKeys.end(),
                                  std::inserter(ModifiedKeys, ModifiedKeys.end()),
                                  compareFirst
                                  );
   

    std::cerr<< "Modified" << std::endl;
    for(auto & p: ModifiedKeys){
            std::cerr << p.first << ":"<< p.second << std::endl;
    }

    
/*
 * //COMPARING SETS
 *
    std::set<std::string> ccc;

        std::set<std::string> kvs_a = {
            {"there1"},
          //  {"there2"},
          //  {"there3"},
            {"there4"},
            {"there5"}
        };
        std::set<std::string> kvs_b = {
            {"there1"},
            {"there2"},
            {"there3"},
            {"there6"},
   //         {"there5"}
        };

    std::set_difference(kvs_a.begin(), kvs_a.end(),
                                  kvs_b.begin(), kvs_b.end(),
                                  std::inserter(ccc, ccc.end()));
   
    std::cerr<< "Deleted" << std::endl;
    for(auto & p: ccc){
            std::cerr << p << std::endl;
    }
    
    ccc.clear(); 
    std::set_difference(kvs_b.begin(), kvs_b.end(),
                                  kvs_a.begin(), kvs_a.end(),
                                  std::inserter(ccc, ccc.end()));
    
    std::cerr<< "Added" << std::endl;
    for(auto & p: ccc){
            std::cerr << p << std::endl;
    }
   */
}
