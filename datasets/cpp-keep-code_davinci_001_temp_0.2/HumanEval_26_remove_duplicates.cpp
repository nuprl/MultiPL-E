#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// From a list of integers, remove all elements that occur more than once.
// Keep order of elements left the same as in the input.
// >>> remove_duplicates([1, 2, 3, 2, 4])
// [1, 3, 4]
std::vector<long> remove_duplicates(std::vector<long> numbers) {
    std::vector<long> result;
    std::map<long, long> map;
    for (auto i : numbers) {
        if (map.find(i) == map.end()) {
            map[i] = 1;
            result.push_back(i);
        }
    }
    return result;
}


int main() {
    auto candidate = remove_duplicates;
    assert(candidate((std::vector<long>())) == (std::vector<long>()));
    assert(candidate((std::vector<long>({1, 2, 3, 4}))) == (std::vector<long>({1, 2, 3, 4})));
    assert(candidate((std::vector<long>({1, 2, 3, 2, 4, 3, 5}))) == (std::vector<long>({1, 4, 5})));
}