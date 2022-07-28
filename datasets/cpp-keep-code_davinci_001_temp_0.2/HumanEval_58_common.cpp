#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Return sorted unique common elements for two lists.
// >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
// [1, 5, 653]
// >>> common([5, 3, 2, 8], [3, 2])
// [2, 3]
std::vector<long> common(std::vector<long> l1, std::vector<long> l2) {
    std::vector<long> result;
    std::sort(l1.begin(), l1.end());
    std::sort(l2.begin(), l2.end());
    auto it1 = l1.begin();
    auto it2 = l2.begin();
    while (it1 != l1.end() && it2 != l2.end()) {
        if (*it1 == *it2) {
            result.push_back(*it1);
            it1++;
            it2++;
        } else if (*it1 < *it2) {
            it1++;
        } else {
            it2++;
        }
    }
    return result;
}
std::vector<long> common(std::vector<long> l1, std::vector<long> l2) {
    std::vector<long> result;
    std::sort(l1.begin(), l1.end());
    std::sort(l2.begin(), l2.end());
    auto it1 = l1.begin();
    auto it2 = l2.begin();
    while (it1 != l1.end() && it2 != l2.end()) {
        if (*it1 == *it2) {
            result.push_back(*it1);
            it1++;
            it2++;
        } else if (*it1 < *it2) {
            it1++;
        } else {
            it2++;
        }
    }
    return result;
}
std::vector<long> common(std::vector<long> l1, std::vector<long> l2) {
    std::vector<long> result;
    std::sort(l1.begin(), l1.end());
    std::sort(l2.begin(), l2.end());
    auto it1 = l1.begin();
    auto it2 = l2.begin();
    while (it1 != l1.end() && it2 != l2.end()) {
        if (*it1 == *it2) {
            result.push_back(*it1);
            it1++;
            it2++;
        }


int main() {
    auto candidate = common;
    assert(candidate((std::vector<long>({1, 4, 3, 34, 653, 2, 5})), (std::vector<long>({5, 7, 1, 5, 9, 653, 121}))) == (std::vector<long>({1, 5, 653})));
    assert(candidate((std::vector<long>({5, 3, 2, 8})), (std::vector<long>({3, 2}))) == (std::vector<long>({2, 3})));
    assert(candidate((std::vector<long>({4, 3, 2, 8})), (std::vector<long>({3, 2, 4}))) == (std::vector<long>({2, 3, 4})));
    assert(candidate((std::vector<long>({4, 3, 2, 8})), (std::vector<long>())) == (std::vector<long>()));
}