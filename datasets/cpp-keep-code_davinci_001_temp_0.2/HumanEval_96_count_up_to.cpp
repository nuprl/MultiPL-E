#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Implement a function that takes an non-negative integer and returns an array of the first n
// integers that are prime numbers and less than n.
// for example:
// count_up_to(5) => [2,3]
// count_up_to(11) => [2,3,5,7]
// count_up_to(0) => []
// count_up_to(20) => [2,3,5,7,11,13,17,19]
// count_up_to(1) => []
// count_up_to(18) => [2,3,5,7,11,13,17]
std::vector<long> count_up_to(long n) {
    std::vector<long> result;
    if (n <= 1) {
        return result;
    }
    if (n == 2) {
        result.push_back(2);
        return result;
    }
    long i = 2;
    while (i < n) {
        long j = 2;
        bool is_prime = true;
        while (j * j <= i) {
            if (i % j == 0) {
                is_prime = false;
                break;
            }
            j++;
        }
        if (is_prime) {
            result.push_back(i);
        }
        i++;
    }
    return result;
}


int main() {
    auto candidate = count_up_to;
    assert(candidate((5)) == (std::vector<long>({2, 3})));
    assert(candidate((6)) == (std::vector<long>({2, 3, 5})));
    assert(candidate((7)) == (std::vector<long>({2, 3, 5})));
    assert(candidate((10)) == (std::vector<long>({2, 3, 5, 7})));
    assert(candidate((0)) == (std::vector<long>()));
    assert(candidate((22)) == (std::vector<long>({2, 3, 5, 7, 11, 13, 17, 19})));
    assert(candidate((1)) == (std::vector<long>()));
    assert(candidate((18)) == (std::vector<long>({2, 3, 5, 7, 11, 13, 17})));
    assert(candidate((47)) == (std::vector<long>({2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43})));
    assert(candidate((101)) == (std::vector<long>({2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97})));
}