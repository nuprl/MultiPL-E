#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Write a function count_nums which takes an array of integers and returns
// the number of elements which has a sum of digits > 0.
// If a number is negative, then its first signed digit will be negative:
// e.g. -123 has signed digits -1, 2, and 3.
// >>> count_nums([]) == 0
// >>> count_nums([-1, 11, -11]) == 1
// >>> count_nums([1, 1, 2]) == 3
long count_nums(std::vector<long> arr) {
    std::map<long, int> m;
    long sum = 0;
    for (long i : arr) {
        sum += i;
        if (sum > 0) {
            m[sum]++;
        }
    }
    return m.size();
}


int main() {
    auto candidate = count_nums;
    assert(candidate((std::vector<long>())) == (0));
    assert(candidate((std::vector<long>({-1, -2, 0}))) == (0));
    assert(candidate((std::vector<long>({1, 1, 2, -2, 3, 4, 5}))) == (6));
    assert(candidate((std::vector<long>({1, 6, 9, -6, 0, 1, 5}))) == (5));
    assert(candidate((std::vector<long>({1, 100, 98, -7, 1, -1}))) == (4));
    assert(candidate((std::vector<long>({12, 23, 34, -45, -56, 0}))) == (5));
    assert(candidate((std::vector<long>({0, 1}))) == (1));
    assert(candidate((std::vector<long>({1}))) == (1));
}