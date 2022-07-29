#include<assert.h>
#include<bits/stdc++.h>
// Input are two strings a and b consisting only of 1s and 0s.
// Perform binary XOR on these inputs and return result also as a string.
// >>> string_xor('010', '110')
// '100'
std::string string_xor(std::string a, std::string b) {
    std::string res;
    assert(a.size() == b.size());
    for (int i = 0; i < a.size(); i++) {
        res.push_back((a[i] == '0' && b[i] == '0') || (a[i] == '1' && b[i] == '1') ? '0' : '1');
    }
    return res;

}
int main() {
    auto candidate = string_xor;
    assert(candidate(("111000"), ("101010")) == ("010010"));
    assert(candidate(("1"), ("1")) == ("0"));
    assert(candidate(("0101"), ("0000")) == ("0101"));
}
