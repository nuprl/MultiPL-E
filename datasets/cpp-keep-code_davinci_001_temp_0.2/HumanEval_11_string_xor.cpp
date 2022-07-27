#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Input are two strings a and b consisting only of 1s and 0s.
// Perform binary XOR on these inputs and return result also as a string.
// >>> string_xor('010', '110')
// '100'
std::string string_xor(std::string a, std::string b) {
    std::string result;
    for (int i = 0; i < a.size(); i++) {
        if (a[i] == '0' && b[i] == '0') {
            result.push_back('0');
        } else if (a[i] == '1' && b[i] == '1') {
            result.push_back('0');
        } else {
            result.push_back('1');
        }
    }
    return result;
}


int main() {
    auto candidate = string_xor;
    assert(candidate(("111000"), ("101010")) == ("010010"));
    assert(candidate(("1"), ("1")) == ("0"));
    assert(candidate(("0101"), ("0000")) == ("0101"));
}