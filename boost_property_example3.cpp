#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/xml_parser.hpp>

int main() {
    // Create the first tree with two elements, name and contents
    boost::property_tree::ptree ptr1;
    ptr1.put("association-set-name.name1");
    ptr1.put("sctp-role.server");
    ptr1.put("sctp-parameters.asp-messages-in-use.true");
    ptr1.put("sctp-parameters.registration-request-in-use.true");
    ptr1.put("sctp-parameters.broadcast-ssnm-messages-to-all-asp.true");
    ptr1.put("sctp-parameters.first-data-stream-number.123");
    ptr1.put("sctp-parameters.send-asp-messages-in-ipsp-connection.true");
    ptr1.put("data-stream-count.10");
    ptr1.put("m3ua-specification-version.rfc-1-0");
    ptr1.put("traffic-mode.loadshare");
    ptr1.put("network-appearance.not-in-use");
    ptr1.put("routing-context.45");
    ptr1.put("tack.56");
    ptr1.put("m3ua-heartbeat-interval.15");
    ptr1.put("activation-delay.10");


    // Create the a second tree with two elements, name and contents
    boost::property_tree::ptree ptr2;
    ptr2.put("association-id.1");
    ptr2.put("source-port.123");
    ptr2.put("destination-port.456");
    ptr2.put("primary-source-ipv4-address.1.2.3.4");
    ptr2.put("primary-destination-ipv6-address.some_v6_address");
    ptr2.put("secondary-source-ipv4-address.1.2.3.5");
    ptr2.put("secondary-destination-ipv6-address.some_v6_address2");
    ptr2.put("intended-association-state.active");

    // Add both trees to a third and place them in node "spreadsheet.cell"
    boost::property_tree::ptree ptr3;
    ptr3.add_child("spreadsheet.cell", ptr1);
    ptr3.add_child("spreadsheet.cell", ptr2);

   boost::property_tree::write_json("output.xml", ptr3);

    return 0;
}

