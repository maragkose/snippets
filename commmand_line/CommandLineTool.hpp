#include <boost/program_options.hpp>
#include <iostream>
namespace po = boost::program_options;
class CommandLineTool {
public:
    // Constructor
    CommandLineTool(int argc, char* argv[]) : 
        argc_(argc), argv_(argv), desc_("Allowed options") {
        // Add a "help" option
        desc_.add_options()("help", "produce help message");
    }

    // Interface for derived classes to add their own options
    virtual void addOptions() = 0;

    // Interface for derived classes to parse their own options
    virtual void parseOptions() = 0;

    // Run the tool
    int run() {
        addOptions();
        try {
            po::store(po::parse_command_line(argc_, argv_, desc_), vm_);
            po::notify(vm_);
        } catch (const po::error& e) {
            std::cerr << e.what() << std::endl << std::endl;
            std::cerr << desc_ << std::endl;
            return 1;
        }

        if (vm_.count("help")) {
            std::cout << desc_ << std::endl;
            return 0;
        }

        parseOptions();
        return 0;
    }

protected:
    int argc_;
    char** argv_;
    po::options_description desc_;
    po::variables_map vm_;
};

