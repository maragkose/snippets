
    //-------------------------------------------
    inline bool ignoreCaseCompare_2(std::string& s1, std::string& s2) {
    //-------------------------------------------
        std::transform(s1.begin(), s1.end(), s1.begin(),
        [](unsigned char c){ return std::tolower(c); });
        std::transform(s2.begin(), s2.end(), s2.begin(),
        [](unsigned char c){ return std::tolower(c); });
            return (s1 == s2);
    }
    bool compareChar(char & c1, char & c2)
{
	if (c1 == c2)
		return true;
	else if (std::toupper(c1) == std::toupper(c2))
		return true;
	return false;
}

    //-------------------------------------------
    bool ignoreCaseCompare_3(std::string & str1, std::string &str2) {
    //-------------------------------------------
	return ( (str1.size() == str2.size() ) &&
			 std::equal(str1.begin(), str1.end(), str2.begin(), &compareChar) );
    }

    //-------------------------------------------
    bool ignoreCaseCompare_4(std::string & str1, std::string &str2){
    //-------------------------------------------
	return ((str1.size() == str2.size()) && std::equal(str1.begin(), str1.end(), str2.begin(), [](char & c1, char & c2){
							return (c1 == c2 || std::toupper(c1) == std::toupper(c2));
								}));
    }
