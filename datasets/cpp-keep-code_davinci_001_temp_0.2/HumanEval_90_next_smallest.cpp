#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// You are given a list of integers.
// Write a function next_smallest() that returns the 2nd smallest element of the list.
// Return None if there is no such element.
// next_smallest([1, 2, 3, 4, 5]) == 2
// next_smallest([5, 1, 4, 3, 2]) == 2
// next_smallest([]) == None
// next_smallest([1, 1]) == None
std::optional<long> next_smallest(std::vector<long> lst) {
    if (lst.size() == 0) {
        return std::nullopt;
    }
    std::sort(lst.begin(), lst.end());
    if (lst.size() < 2) {
        return std::nullopt;
    }
    return lst[1];
}


int main() {
    auto candidate = next_smallest;
    assert(candidate((std::vector<long>({1, 2, 3, 4, 5}))) == (std::optional<long>(2)));
    assert(candidate((std::vector<long>({5, 1, 4, 3, 2}))) == (std::optional<long>(2)));
    assert(candidate((std::vector<long>())) == (std::optional<long>({})));
    assert(candidate((std::vector<long>({1, 1}))) == (std::optional<long>({})));
    assert(candidate((std::vector<long>({1, 1, 1, 1, 0}))) == (std::optional<long>(1)));
    assert(candidate((std::vector<long>({1, 1}))) == (std::optional<long>({})));
    assert(candidate((std::vector<long>({-35, 34, 12, -45}))) == (std::optional<long>(-35)));
}