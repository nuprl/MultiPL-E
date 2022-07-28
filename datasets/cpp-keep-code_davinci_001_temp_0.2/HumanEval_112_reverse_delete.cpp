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
    for (auto &i : s) {
        if (c.find(i) == std::string::npos) {
            result.push_back(i);
        }
    }
    return std::make_tuple(result, std::equal(result.begin(), result.end(), result.rbegin()));

}
int main() {
    auto candidate = reverse_delete;
    assert(candidate(("abcde"), ("ae")) == (std::make_tuple("bcd", false)));
    assert(candidate(("abcdef"), ("b")) == (std::make_tuple("acdef", false)));
    assert(candidate(("abcdedcba"), ("ab")) == (std::make_tuple("cdedc", true)));
    assert(candidate(("dwik"), ("w")) == (std::make_tuple("dik", false)));
    assert(candidate(("a"), ("a")) == (std::make_tuple("", true)));
    assert(candidate(("abcdedcba"), ("")) == (std::make_tuple("abcdedcba", true)));
    assert(candidate(("abcdedcba"), ("v")) == (std::make_tuple("abcdedcba", true)));
    assert(candidate(("vabba"), ("v")) == (std::make_tuple("abba", true)));
    assert(candidate(("mamma"), ("mia")) == (std::make_tuple("", true)));
}
