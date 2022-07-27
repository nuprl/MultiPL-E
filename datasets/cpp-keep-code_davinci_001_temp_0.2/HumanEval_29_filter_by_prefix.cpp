#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Filter an input list of strings only for ones that start with a given prefix.
// >>> filter_by_prefix([], 'a')
// []
// >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
// ['abc', 'array']
std::vector<std::string> filter_by_prefix(std::vector<std::string> strings, std::string prefix) {
    std::vector<std::string> result;
    for (auto &s : strings) {
        if (s.find(prefix) == 0) {
            result.push_back(s);
        }
    }
    return result;
}


int main() {
    auto candidate = filter_by_prefix;
    assert(candidate((std::vector<std::string>()), ("john")) == (std::vector<std::string>()));
    assert(candidate((std::vector<std::string>({"xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"})), ("xxx")) == (std::vector<std::string>({"xxx", "xxxAAA", "xxx"})));
}