#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given an array of non-negative integers, return a copy of the given array after sorting,
// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
// or sort it in descending order if the sum( first index value, last index value) is even.
// Note:
// * don't change the given array.
// Examples:
// * sort_array([]) => []
// * sort_array([5]) => [5]
// * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
// * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
std::vector<long> sort_array(std::vector<long> array) {
    std::vector<long> result;
    std::map<long, long> map;
    for (auto i : array) {
        map[i]++;
    }
    long sum = 0;
    for (auto i : map) {
        sum += i.first;
    }
    if (sum % 2 == 0) {
        for (auto i : map) {
            for (long j = 0; j < i.second; j++) {
                result.push_back(i.first);
            }
        }
    } else {
        for (auto i : map) {
            for (long j = 0; j < i.second; j++) {
                result.push_back(i.first);
            }
        }
        std::sort(result.begin(), result.end(), std::greater<long>());
    }
    return result;
}


int main() {
    auto candidate = sort_array;
    assert(candidate((std::vector<long>())) == (std::vector<long>()));
    assert(candidate((std::vector<long>({5}))) == (std::vector<long>({5})));
    assert(candidate((std::vector<long>({2, 4, 3, 0, 1, 5}))) == (std::vector<long>({0, 1, 2, 3, 4, 5})));
    assert(candidate((std::vector<long>({2, 4, 3, 0, 1, 5, 6}))) == (std::vector<long>({6, 5, 4, 3, 2, 1, 0})));
    assert(candidate((std::vector<long>({2, 1}))) == (std::vector<long>({1, 2})));
    assert(candidate((std::vector<long>({15, 42, 87, 32, 11, 0}))) == (std::vector<long>({0, 11, 15, 32, 42, 87})));
    assert(candidate((std::vector<long>({21, 14, 23, 11}))) == (std::vector<long>({23, 21, 14, 11})));
}