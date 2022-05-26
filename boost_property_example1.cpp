#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/xml_parser.hpp>
#include <iostream>

int main() {
    // Create the first tree with two elements, name and contents
    boost::property_tree::ptree ptr1;
    ptr1.put("name", "a2");
    ptr1.put("contents", "adsf");

    // Create the a second tree with two elements, name and contents
    boost::property_tree::ptree ptr2;
    ptr2.put("name", "d6");
    ptr2.put("contents", "345");

    // Add both trees to a third and place them in node "spreadsheet.cell"
    boost::property_tree::ptree ptr3;
    ptr3.add_child("spreadsheet.cell", ptr1);
    ptr3.add_child("spreadsheet.cell", ptr2);

    boost::property_tree::write_xml("output.xml", ptr3);

    return 0;
}

