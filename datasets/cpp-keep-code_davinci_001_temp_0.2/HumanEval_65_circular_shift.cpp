#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Circular shift the digits of the integer x, shift the digits right by shift
// and return the result as a string.
// If shift > number of digits, return digits reversed.
// >>> circular_shift(12, 1)
// "21"
// >>> circular_shift(12, 2)
// "12"
std::string circular_shift(long x, long shift) {
    std::string s = std::to_string(x);
    std::string result = "";
    if (shift > s.size()) {
        for (int i = 0; i < s.size(); i++) {
            result += s[i];
        }
        for (int i = 0; i < shift - s.size(); i++) {
            result += s[i];
        }
    } else {
        for (int i = s.size() - shift; i < s.size(); i++) {
            result += s[i];
        }
        for (int i = 0; i < s.size() - shift; i++) {
            result += s[i];
        }
    }
    return result;
}


int main() {
    auto candidate = circular_shift;
    assert(candidate((100), (2)) == ("001"));
    assert(candidate((12), (2)) == ("12"));
    assert(candidate((97), (8)) == ("79"));
    assert(candidate((12), (1)) == ("21"));
    assert(candidate((11), (101)) == ("11"));
}