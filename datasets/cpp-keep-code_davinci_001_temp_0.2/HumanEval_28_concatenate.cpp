#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Concatenate list of strings into a single string
// >>> concatenate([])
// ''
// >>> concatenate(['a', 'b', 'c'])
// 'abc'
std::string concatenate(std::vector<std::string> strings) {
    std::string result;
    for (const auto& s : strings) {
        result += s;
    }
    return result;
}


int main() {
    auto candidate = concatenate;
    assert(candidate((std::vector<std::string>())) == (""));
    assert(candidate((std::vector<std::string>({"x", "y", "z"}))) == ("xyz"));
    assert(candidate((std::vector<std::string>({"x", "y", "z", "w", "k"}))) == ("xyzwk"));
}