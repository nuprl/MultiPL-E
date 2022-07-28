#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Task
// We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
// then check if the result string is palindrome.
// A string is called palindrome if it reads the same backward as forward.
// You should return a tuple containing the result string and True/False for the check.
// Example
// For s = "abcde", c = "ae", the result should be ('bcd',False)
// For s = "abcdef", c = "b"  the result should be ('acdef',False)
// For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
std::tuple<std::string, bool> reverse_delete(std::string s, std::string c) {
    std::string result;
    for (int i = 0; i < s.size(); i++) {
        if (c.find(s[i]) == std::string::npos) {
            result += s[i];
        }
    }
    if (result.size() == 0) {
        return {result, false};
    }
    if (result == result.substr(result.size() - 1, result.size())) {
        return {result, true};
    }
    return {result, false};
}


int main() {
    auto candidate = reverse_delete;
    assert(candidate(("abcde"), ("ae")) == (std::make_tuple(std::string("bcd"), bool(false))));
    assert(candidate(("abcdef"), ("b")) == (std::make_tuple(std::string("acdef"), bool(false))));
    assert(candidate(("abcdedcba"), ("ab")) == (std::make_tuple(std::string("cdedc"), bool(true))));
    assert(candidate(("dwik"), ("w")) == (std::make_tuple(std::string("dik"), bool(false))));
    assert(candidate(("a"), ("a")) == (std::make_tuple(std::string(""), bool(true))));
    assert(candidate(("abcdedcba"), ("")) == (std::make_tuple(std::string("abcdedcba"), bool(true))));
    assert(candidate(("abcdedcba"), ("v")) == (std::make_tuple(std::string("abcdedcba"), bool(true))));
    assert(candidate(("vabba"), ("v")) == (std::make_tuple(std::string("abba"), bool(true))));
    assert(candidate(("mamma"), ("mia")) == (std::make_tuple(std::string(""), bool(true))));
}