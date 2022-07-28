#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
// Example
// is_equal_to_sum_even(4) == False
// is_equal_to_sum_even(6) == False
// is_equal_to_sum_even(8) == True
bool is_equal_to_sum_even(long n) {
    if (n < 4) {
        return false;
    }
    std::vector<long> evens;
    for (long i = 2; i <= n; i += 2) {
        evens.push_back(i);
    }
    std::vector<long> sums;
    for (long i = 0; i < evens.size(); i++) {
        for (long j = i + 1; j < evens.size(); j++) {
            for (long k = j + 1; k < evens.size(); k++) {
                for (long l = k + 1; l < evens.size(); l++) {
                    sums.push_back(evens[i] + evens[j] + evens[k] + evens[l]);
                }
            }
        }
    }
    for (long i = 0; i < sums.size(); i++) {
        if (sums[i] == n) {
            return true;
        }
    }
    return false;
}


int main() {
    auto candidate = is_equal_to_sum_even;
    assert(candidate((4)) == (false));
    assert(candidate((6)) == (false));
    assert(candidate((8)) == (true));
    assert(candidate((10)) == (true));
    assert(candidate((11)) == (false));
    assert(candidate((12)) == (true));
    assert(candidate((13)) == (false));
    assert(candidate((16)) == (true));
}