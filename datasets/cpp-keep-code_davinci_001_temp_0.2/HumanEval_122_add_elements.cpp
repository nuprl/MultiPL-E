#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given a non-empty array of integers arr and an integer k, return
// the sum of the elements with at most two digits from the first k elements of arr.
// Example:
// Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
// Output: 24 # sum of 21 + 3
// Constraints:
// 1. 1 <= len(arr) <= 100
// 2. 1 <= k <= len(arr)
long add_elements(std::vector<long> arr, long k) {
    long sum = 0;
    for (long i = 0; i < k; i++) {
        sum += arr[i];
    }
    return sum;
}


int main() {
    auto candidate = add_elements;
    assert(candidate((std::vector<long>({1, -2, -3, 41, 57, 76, 87, 88, 99})), (3)) == (-4));
    assert(candidate((std::vector<long>({111, 121, 3, 4000, 5, 6})), (2)) == (0));
    assert(candidate((std::vector<long>({11, 21, 3, 90, 5, 6, 7, 8, 9})), (4)) == (125));
    assert(candidate((std::vector<long>({111, 21, 3, 4000, 5, 6, 7, 8, 9})), (4)) == (24));
    assert(candidate((std::vector<long>({1})), (1)) == (1));
}