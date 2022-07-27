#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Find the shortest palindrome that begins with a supplied string.
// Algorithm idea is simple:
// - Find the longest postfix of supplied string that is a palindrome.
// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
// >>> make_palindrome('')
// ''
// >>> make_palindrome('cat')
// 'catac'
// >>> make_palindrome('cata')
// 'catac'
std::string make_palindrome(std::string string) {
    std::string result = string;
    std::string reversed = string;
    std::reverse(reversed.begin(), reversed.end());
    int i = 0;
    while (i < string.size()) {
        if (string.substr(i) == reversed.substr(0, string.size() - i)) {
            result = string.substr(0, i) + reversed;
            break;
        }
        ++i;
    }
    return result;
}


int main() {
    auto candidate = make_palindrome;
    assert(candidate(("")) == (""));
    assert(candidate(("x")) == ("x"));
    assert(candidate(("xyz")) == ("xyzyx"));
    assert(candidate(("xyx")) == ("xyx"));
    assert(candidate(("jerry")) == ("jerryrrej"));
}