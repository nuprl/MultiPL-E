#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Return a string containing space-delimited numbers starting from 0 upto n inclusive.
// >>> string_sequence(0)
// '0'
// >>> string_sequence(5)
// '0 1 2 3 4 5'
std::string string_sequence(long n) {
    std::string s;
    for (long i = 0; i <= n; i++) {
        s += std::to_string(i);
        if (i != n) {
            s += " ";
        }
    }
    return s;
}


int main() {
    auto candidate = string_sequence;
    assert(candidate((0)) == ("0"));
    assert(candidate((3)) == ("0 1 2 3"));
    assert(candidate((10)) == ("0 1 2 3 4 5 6 7 8 9 10"));
}