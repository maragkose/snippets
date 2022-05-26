#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>
#include <iostream>

using namespace boost::property_tree;

int main() {

ptree myptree;
boost::property_tree::json_parser::read_json("./tree5.json", myptree);

std::cerr << myptree.get<std::string> ("generic.msc-server-parameters.dscp-for-signalling..dscp-for-signalling") << std:endl;

}

