#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Your task is to implement a function that will simplify the expression
// x * n. The function returns True if x * n evaluates to a whole number and False
// otherwise. Both x and n, are string representation of a fraction, and have the following format,
// <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
// You can assume that x, and n are valid fractions, and do not have zero as denominator.
// simplify("1/5", "5/1") = True
// simplify("1/6", "2/1") = False
// simplify("7/10", "10/2") = False
bool simplify(std::string x, std::string n) {
    std::string num = x.substr(0, x.find('/'));
    std::string den = x.substr(x.find('/') + 1);
    std::string num2 = n.substr(0, n.find('/'));
    std::string den2 = n.substr(n.find('/') + 1);
    int num3 = std::stoi(num) * std::stoi(den2);
    int den3 = std::stoi(den) * std::stoi(num2);
    if (num3 == den3) {
        return true;
    }
    return false;
}


int main() {
    auto candidate = simplify;
    assert(candidate(("1/5"), ("5/1")) == (true));
    assert(candidate(("1/6"), ("2/1")) == (false));
    assert(candidate(("5/1"), ("3/1")) == (true));
    assert(candidate(("7/10"), ("10/2")) == (false));
    assert(candidate(("2/10"), ("50/10")) == (true));
    assert(candidate(("7/2"), ("4/2")) == (true));
    assert(candidate(("11/6"), ("6/1")) == (true));
    assert(candidate(("2/3"), ("5/2")) == (false));
    assert(candidate(("5/2"), ("3/5")) == (false));
    assert(candidate(("2/4"), ("8/4")) == (true));
    assert(candidate(("2/4"), ("4/2")) == (true));
    assert(candidate(("1/5"), ("5/1")) == (true));
    assert(candidate(("1/5"), ("1/5")) == (false));
}