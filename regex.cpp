#include <boost/regex.hpp>
#include <iostream>
#include "Logging.hpp"

int main() {



            std::string association_line = R"(m3ua-associations.association[0].association-id=33)";


            //m3ua-associations.association[0].association-id=33
            //m3ua-associations.association\[\(.*\)\].association-id=\(.*\)

            //boost::regex expr ("(m3ua-associations.association)""(\\[.*\\])""(.association-id=.*)");
            boost::regex expr ("(m3ua-associations.association\\[)""(.*)""(\\].association-id=)""(.*)");
            //boost::regex expr{"m3ua-associations.association.*"};
            boost::smatch what;
            if (boost::regex_search(association_line, what, expr)){
                TRACE("CHILD: " << " = " );
                for(auto &m:what){
                    TRACE("m: "<<m);
                }
            }
}
