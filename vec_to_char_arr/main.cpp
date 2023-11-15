char ** vector_to_char_array(const std::vector<std::string> & vec) {
    // Allocate memory for the char * array
    char ** char_array = new char *[vec.size() + 1];

    // Convert each string in the vector to a char *
    for (size_t i = 0; i < vec.size(); ++i) {
        char_array[i] = new char[vec[i].size() + 1];
        strcpy(char_array[i], vec[i].c_str());
    }

    // Null-terminate the char * array
    char_array[vec.size()] = nullptr;

    return char_array;
}
