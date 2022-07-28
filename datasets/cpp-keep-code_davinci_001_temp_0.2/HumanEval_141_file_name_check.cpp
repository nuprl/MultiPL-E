#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Create a function which takes a string representing a file's name, and returns
// 'Yes' if the the file's name is valid, and returns 'No' otherwise.
// A file's name is considered to be valid if and only if all the following conditions 
// are met:
// - There should not be more than three digits ('0'-'9') in the file's name.
// - The file's name contains exactly one dot '.'
// - The substring before the dot should not be empty, and it starts with a letter from 
// the latin alphapet ('a'-'z' and 'A'-'Z').
// - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
// Examples:
// file_name_check("example.txt") # => 'Yes'
// file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
std::string file_name_check(std::string file_name) {
    std::vector<char> v;
    std::string s = file_name;
    std::string s1 = s.substr(0, s.find('.'));
    std::string s2 = s.substr(s.find('.') + 1);
    if (s1.length() > 3) {
        return "No";
    }
    for (int i = 0; i < s1.length(); i++) {
        if (s1[i] < '0' || s1[i] > '9') {
            v.push_back(s1[i]);
        }
    }
    if (v.size() > 1) {
        return "No";
    }
    if (s2 != "txt" && s2 != "exe" && s2 != "dll") {
        return "No";
    }
    return "Yes";
}
std::cout << file_name_check("example.txt") << std::endl;
std::cout << file_name_check("1example.dll") << std::endl;
std::cout << file_name_check("example.exe") << std::endl;
std::cout << file_name_check("example.dll") << std::endl;
std::cout << file_name_check("example.txt") << std::endl;
std::cout << file_name_check("example.exe") << std::endl;
std::cout << file_name_check("example.dll") << std::endl;
std::cout << file_name_check("example.txt") << std::endl;
std::cout << file_name_check("example.exe") << std::endl;
std::cout << file_name_check("example.dll") << std::endl;
std::cout << file_name_check("example.txt") << std::endl;
std::cout << file_name_check("example.exe") << std::endl;
std::cout << file_name_check("example.dll") << std::endl;
std


int main() {
    auto candidate = file_name_check;
    assert(candidate(("example.txt")) == ("Yes"));
    assert(candidate(("1example.dll")) == ("No"));
    assert(candidate(("s1sdf3.asd")) == ("No"));
    assert(candidate(("K.dll")) == ("Yes"));
    assert(candidate(("MY16FILE3.exe")) == ("Yes"));
    assert(candidate(("His12FILE94.exe")) == ("No"));
    assert(candidate(("_Y.txt")) == ("No"));
    assert(candidate(("?aREYA.exe")) == ("No"));
    assert(candidate(("/this_is_valid.dll")) == ("No"));
    assert(candidate(("this_is_valid.wow")) == ("No"));
    assert(candidate(("this_is_valid.txt")) == ("Yes"));
    assert(candidate(("this_is_valid.txtexe")) == ("No"));
    assert(candidate(("#this2_i4s_5valid.ten")) == ("No"));
    assert(candidate(("@this1_is6_valid.exe")) == ("No"));
    assert(candidate(("this_is_12valid.6exe4.txt")) == ("No"));
    assert(candidate(("all.exe.txt")) == ("No"));
    assert(candidate(("I563_No.exe")) == ("Yes"));
    assert(candidate(("Is3youfault.txt")) == ("Yes"));
    assert(candidate(("no_one#knows.dll")) == ("Yes"));
    assert(candidate(("1I563_Yes3.exe")) == ("No"));
    assert(candidate(("I563_Yes3.txtt")) == ("No"));
    assert(candidate(("final..txt")) == ("No"));
    assert(candidate(("final132")) == ("No"));
    assert(candidate(("_f4indsartal132.")) == ("No"));
    assert(candidate((".txt")) == ("No"));
    assert(candidate(("s.")) == ("No"));
}