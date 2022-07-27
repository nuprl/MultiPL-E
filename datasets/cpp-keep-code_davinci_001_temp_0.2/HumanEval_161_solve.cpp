#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// You are given a string s.
// if s[i] is a letter, reverse its case from lower to upper or vise versa, 
// otherwise keep it as it is.
// If the string contains no letters, reverse the string.
// The function should return the resulted string.
// Examples
// solve("1234") = "4321"
// solve("ab") = "AB"
// solve("#a@C") = "#A@c"
std::string solve(std::string s) {
    std::string result;
    for (auto c : s) {
        if (std::isalpha(c)) {
            result += std::toupper(c) == c ? std::tolower(c) : std::toupper(c);
        } else {
            result += c;
        }
    }
    return result;
}


int main() {
    auto candidate = solve;
    assert(candidate(("AsDf")) == ("aSdF"));
    assert(candidate(("1234")) == ("4321"));
    assert(candidate(("ab")) == ("AB"));
    assert(candidate(("#a@C")) == ("#A@c"));
    assert(candidate(("#AsdfW^45")) == ("#aSDFw^45"));
    assert(candidate(("#6@2")) == ("2@6#"));
    assert(candidate(("#$a^D")) == ("#$A^d"));
    assert(candidate(("#ccc")) == ("#CCC"));
}