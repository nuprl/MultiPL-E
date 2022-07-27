#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// You are given a list of numbers.
// You need to return the sum of squared numbers in the given list,
// round each element in the list to the upper int(Ceiling) first.
// Examples:
// For lst = [1,2,3] the output should be 14
// For lst = [1,4,9] the output should be 98
// For lst = [1,3,5,7] the output should be 84
// For lst = [1.4,4.2,0] the output should be 29
// For lst = [-2.4,1,1] the output should be 6
long sum_squares(std::vector<float> lst) {
    long sum = 0;
    for (auto i : lst) {
        sum += std::ceil(i) * std::ceil(i);
    }
    return sum;
}


int main() {
    auto candidate = sum_squares;
    assert(candidate((std::vector<float>({1.0, 2.0, 3.0}))) == (14));
    assert(candidate((std::vector<float>({1.0, 2.0, 3.0}))) == (14));
    assert(candidate((std::vector<float>({1.0, 3.0, 5.0, 7.0}))) == (84));
    assert(candidate((std::vector<float>({1.4, 4.2, 0.0}))) == (29));
    assert(candidate((std::vector<float>({-2.4, 1.0, 1.0}))) == (6));
    assert(candidate((std::vector<float>({100.0, 1.0, 15.0, 2.0}))) == (10230));
    assert(candidate((std::vector<float>({10000.0, 10000.0}))) == (200000000));
    assert(candidate((std::vector<float>({-1.4, 4.6, 6.3}))) == (75));
    assert(candidate((std::vector<float>({-1.4, 17.9, 18.9, 19.9}))) == (1086));
    assert(candidate((std::vector<float>({0.0}))) == (0));
    assert(candidate((std::vector<float>({-1.0}))) == (1));
    assert(candidate((std::vector<float>({-1.0, 1.0, 0.0}))) == (2));
}