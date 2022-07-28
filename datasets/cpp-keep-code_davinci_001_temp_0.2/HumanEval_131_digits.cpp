#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given a positive integer n, return the product of the odd digits.
// Return 0 if all digits are even.
// For example:
// digits(1)  == 1
// digits(4)  == 0
// digits(235) == 15
long digits(long n) {
    std::string s = std::to_string(n);
    long result = 1;
    for (int i = 0; i < s.length(); i++) {
        if (s[i] - '0' % 2 == 1) {
            result *= s[i] - '0';
        }
    }
    return result;
}


int main() {
    auto candidate = digits;
    assert(candidate((5)) == (5));
    assert(candidate((54)) == (5));
    assert(candidate((120)) == (1));
    assert(candidate((5014)) == (5));
    assert(candidate((98765)) == (315));
    assert(candidate((5576543)) == (2625));
    assert(candidate((2468)) == (0));
}