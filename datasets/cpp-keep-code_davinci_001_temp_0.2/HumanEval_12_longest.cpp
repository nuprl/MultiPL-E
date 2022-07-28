#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Out of list of strings, return the longest one. Return the first one in case of multiple
// strings of the same length. Return None in case the input list is empty.
// >>> longest([])
// >>> longest(['a', 'b', 'c'])
// 'a'
// >>> longest(['a', 'bb', 'ccc'])
// 'ccc'
std::optional<std::string> longest(std::vector<std::string> strings) {
    if (strings.empty()) {
        return std::nullopt;
    }
    std::string longest = strings[0];
    for (int i = 1; i < strings.size(); i++) {
        if (strings[i].size() > longest.size()) {
            longest = strings[i];
        }
    }
    return longest;
}


int main() {
    auto candidate = longest;
    assert(candidate((std::vector<std::string>())) == (std::optional<std::string>({})));
    assert(candidate((std::vector<std::string>({"x", "y", "z"}))) == (std::optional<std::string>("x")));
    assert(candidate((std::vector<std::string>({"x", "yyy", "zzzz", "www", "kkkk", "abc"}))) == (std::optional<std::string>("zzzz")));
}