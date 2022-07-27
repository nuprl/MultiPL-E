#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Return list of all prefixes from shortest to longest of the input string
// >>> all_prefixes('abc')
// ['a', 'ab', 'abc']
std::vector<std::string> all_prefixes(std::string string) {
    std::vector<std::string> prefixes;
    for (int i = 0; i < string.size(); i++) {
        prefixes.push_back(string.substr(0, i + 1));
    }
    return prefixes;
}


int main() {
    auto candidate = all_prefixes;
    assert(candidate(("")) == (std::vector<std::string>()));
    assert(candidate(("asdfgh")) == (std::vector<std::string>({"a", "as", "asd", "asdf", "asdfg", "asdfgh"})));
    assert(candidate(("WWW")) == (std::vector<std::string>({"W", "WW", "WWW"})));
}