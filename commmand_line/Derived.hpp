#include "CommandLineTool.hpp"

class MyTool : public CommandLineTool {
public:
    MyTool(int argc, char* argv[]) : CommandLineTool(argc, argv) {}

    void addOptions() {
        desc_.add_options()
            ("input-file,i", po::value<std::string>(&input_file_)->required(), "input file")
            ("output-file,o", po::value<std::string>(&output_file_)->required(), "output file");
    }

    void parseOptions() {
        std::cout << "input file: " << input_file_ << std::endl;
        std::cout << "output file: " << output_file_ << std::endl;
    }

private:
    std::string input_file_;
    std::string output_file_;
};


