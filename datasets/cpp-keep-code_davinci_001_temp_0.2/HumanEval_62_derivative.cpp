#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// xs represent coefficients of a polynomial.
// xs[0] + xs[1] * x + xs[2] * x^2 + ....
// Return derivative of this polynomial in the same form.
// >>> derivative([3, 1, 2, 4, 5])
// [1, 4, 12, 20]
// >>> derivative([1, 2, 3])
// [2, 6]
std::vector<long> derivative(std::vector<long> xs) {
    std::vector<long> result;
    for (int i = 1; i < xs.size(); i++) {
        result.push_back(i * xs[i]);
    }
    return result;
}


int main() {
    auto candidate = derivative;
    assert(candidate((std::vector<long>({3, 1, 2, 4, 5}))) == (std::vector<long>({1, 4, 12, 20})));
    assert(candidate((std::vector<long>({1, 2, 3}))) == (std::vector<long>({2, 6})));
    assert(candidate((std::vector<long>({3, 2, 1}))) == (std::vector<long>({2, 2})));
    assert(candidate((std::vector<long>({3, 2, 1, 0, 4}))) == (std::vector<long>({2, 2, 0, 16})));
    assert(candidate((std::vector<long>({1}))) == (std::vector<long>()));
}