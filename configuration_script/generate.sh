#!/bin/bash

#
# This script generates a C++ class named Configuration from a file input in the following format:
# DECLARE_CONFIGURATION(string, hostname, localhost)
# DECLARE_CONFIGURATION(int, port, 50505)
# The first argument is the type, the second the name of the option and the third the value.
# The script generates accessors for these options i.e get hostname(), set_hostname() and a read file function
# that will be able to load values from a config file in the following format.
# Hostname=127.0.0.1
# Port = 50503

# Script options:
# -f : specify the output file name, default is Configuration.hpp
# -n : specify a namespace for the class, default is config
#
# Example:
# ./generate.sh -f Configuration.hpp -n config
#

#-----------------------
print() {
#-----------------------
    local level=$1
    local string=$2
    local spaces=""
    for ((i=0; i<$level; i++)); do
        spaces+="    "
    done
    if [ -z ${filename} ]; then
        echo "${spaces}${string}"
    else
        echo "${spaces}${string}" >> ${filename}
    fi
}

#-----------------------
print_blank_line() {
#-----------------------
    if [ -z ${filename} ]; then
        echo ""
    else
        echo "" >> ${filename}
    fi
}

#-----------------------
print_strings_list() {
#-----------------------
    input="$1"
    # remove the first two commas and the text before it
    input="${input#*,*,}"
    # remove the last parenthesis 
    input="${input%\)*}"
    # split the remaining string into an array using the IFS (Internal Field Separator)
    IFS=',' read -r -a values <<< "$input"
    # remove leading and trailing whitespaces and double quotes from each element in the array
    values=("${values[@]//\"}")
    values=("${values[@]// }")
    # Print the values in the desired format
    echo -n "{"
    for value in "${values[@]}"
    do
        if [ "$value" = "${values[-1]}" ]; then
            echo -n "\"$value\""
        else
            echo -n "\"$value\", "
        fi
    done
    echo -n "}"
}

#-----------------------
strip_whitespace() {
#-----------------------
    local string=$1
    string=${string// /}
    echo "${string}"
}

#-----------------------
trim_quotes() {
#-----------------------
    # Original string with quotes
    local string="$1"

    # Removing double quotes from the beginning and end of the string
    string="${string%\"}"
    string="${string#\"}"

    echo "$string"
}

#-----------------------
generate_header_guards() {
#-----------------------
    local guard=$(echo ${class_name} | tr '[:lower:]' '[:upper:]' | tr '.' '_')
    print 0 "#ifndef ${guard}"
    print 0 "#define ${guard}"
    print_blank_line
}

#-----------------------
generate_footer_guards() {
#-----------------------
    local guard=$(echo ${class_name} | tr '[:lower:]' '[:upper:]' | tr '.' '_')
    print_blank_line
    print 0 "#endif // ${guard}"
}

#-----------------------
generate_namespace() {
#-----------------------

    if [ -z ${namespace} ]; then
        return
    else
        print 0 "namespace ${namespace} {"
    fi
    print_blank_line
}

#-----------------------
generate_namespace_end() {
#-----------------------
    if [ -z ${namespace} ]; then
        return
    else
        print 0 "} // namespace ${namespace}"
    fi
}

#-----------------------
generate_headers() {
#-----------------------
    print 0 "#include <algorithm>"
    print 0 "#include <string>"
    print_blank_line
    print 0 "#include \"ConfigurationBase.hpp\""
    print 0 "#include \"Logging.hpp\""
    print_blank_line
}

#-----------------------
generate_class() {
#-----------------------
    print 0 "class $class_name : public ConfigurationBase {"
    print_blank_line
    print 0 "public:"
    print_blank_line
}

#-----------------------
generate_constructors() {
#-----------------------
    print 1 "$class_name(const std::string& filename) : ConfigurationBase(filename) {"
    print_blank_line
    print 2 "set_defaults();"
    print 2 "read_file(filename);"
    print 2 "read_env();"
    print_blank_line
    print 1 "}"
    
    print 1 "$class_name() : ConfigurationBase() {"
    print_blank_line
    print 2 "set_defaults();"
    print 2 "read_env();"
    print_blank_line
    print 1 "}"
    print_blank_line
}

#-----------------------
generate_set_get() {
#-----------------------
    while read line; do
        if [[ -z $line || "$line" == //* ]]; then continue; fi
        IFS=',' read -r -a array <<< "$line"
        name=$(strip_whitespace "${array[1]}")
        value=$(strip_whitespace "${array[2]//)}")
        cpptype=$(strip_whitespace "${array[0]//DECLARE_CONFIGURATION\(/}")
        if [ "$cpptype" = "string" ]; then
            print 1 "void set_$name(const std::$cpptype &value) {";
            print 2 "set<std::$cpptype>(\"$name\", value);"
            print 1 "}"
            print_blank_line
            print 1 "const std::$cpptype $name() {"
            print 2 "return get<std::$cpptype>(\"$name\");"
            print 1 "}"
        elif [ "$cpptype" = "strings" ]; then
            cpptype="std::vector<std::string>"
            print 1 "void set_$name($cpptype value) {";
            print 2 "set<$cpptype>(\"$name\", value);"
            print 1 "}";
            print_blank_line
            print 1 "$cpptype $name() {";
            print 2 "return get<$cpptype>(\"$name\");"
            print 1 "}";
        else
            print 1 "void set_$name($cpptype value) {";
            print 2 "set<$cpptype>(\"$name\", value);"
            print 1 "}"
            print_blank_line
            print 1 "$cpptype $name() {"
            print 2 "return get<$cpptype>(\"$name\");"
            print 1 "}"
        fi
        print_blank_line
    done < $input_file
    print_blank_line
}

#-----------------------
generate_set_defaults() {
#-----------------------
    print 1 "void set_defaults() {"
    while read line; do
        if [[ -z $line || "$line" == //* ]]; then continue; fi
        IFS=',' read -r -a array <<< "$line"
        name=$(strip_whitespace "${array[1]}")
        value=$(trim_quotes "$(strip_whitespace "${array[2]//)}")")
        cpptype=$(strip_whitespace "${array[0]//DECLARE_CONFIGURATION\(/}")
        if [ "$cpptype" = "string" ]; then
            print 2 "set_$name(\"$value\");"
        elif [ "$cpptype" = "strings" ]; then
            print 2 "set_$name(std::vector<std::string> $(print_strings_list "$line"));"
        else
            print 2 "set_$name($value);"
        fi
    done < $input_file
    print 1 "}"
    print_blank_line
}

#-----------------------
generate_print() {
#-----------------------
    print 1 "void print() override {"
    while read line; do
        if [[ -z $line || "$line" == //* ]]; then continue; fi
        IFS=',' read -r -a array <<< "$line"
        name=$(strip_whitespace "${array[1]}")
        cpptype=$(strip_whitespace "${array[0]//DECLARE_CONFIGURATION\(/}")
        if [ "$cpptype" = "strings" ]; then
            print 2 "for(const auto &value : $name()){"
            print 3 "TRACE(\"$name: \" <<  value);"
            print 2 "}"
        else
            print 2 "TRACE(\"$name: \" << $name());"
        fi
    done < $input_file
    print 1 "}"
    print_blank_line
}

#-----------------------
generate_class_end() {
#-----------------------
    print 0 "};"
}

#-----------------------
# Main program
#-----------------------

filename=""
namespace=""
input_file="Configuration.inl"
class_name="Configuration"

while getopts ":f:n:i:c:" opt; do
  case $opt in
    f)
      filename="$OPTARG"
      ;;
    n)
      namespace="$OPTARG"
      ;;
    i)
      input_file="$OPTARG"
      ;;
    c)
      class_name="$OPTARG"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      ;;
  esac
done

if [ ! -e "$input_file" ]; then
    echo "Input file specified not found: ($input_file)"
    exit 1
fi

if [ -n "$filename" ]; then
    if [ -e "$filename" ]; then
        echo "File $filename already exists. Will overwrite.";
        rm -f $filename
        touch $filename
    fi

    echo "----------------------------------------";
    echo " Generating $filename. from $input_file declarations.";
    echo " Using namespace: $namespace ...";
    echo " Using class name: $class_name ...";
    echo "----------------------------------------";
fi

generate_header_guards 
generate_headers
generate_namespace
generate_class
generate_constructors
generate_set_get
generate_set_defaults
generate_print
generate_class_end
generate_namespace_end
generate_footer_guards

if([ -n "$filename" ]); then
    echo " Done.";
    echo "========================================";
fi

