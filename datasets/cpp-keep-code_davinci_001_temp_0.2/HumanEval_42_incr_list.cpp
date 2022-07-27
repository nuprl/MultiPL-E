#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Return list with elements incremented by 1.
// >>> incr_list([1, 2, 3])
// [2, 3, 4]
// >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
// [6, 4, 6, 3, 4, 4, 10, 1, 124]
std::vector<long> incr_list(std::vector<long> l) {
    std::vector<long> res;
    for (long i : l) {
        res.push_back(i + 1);
    }
    return res;
}


int main() {
    auto candidate = incr_list;
    assert(candidate((std::vector<long>())) == (std::vector<long>()));
    assert(candidate((std::vector<long>({3, 2, 1}))) == (std::vector<long>({4, 3, 2})));
    assert(candidate((std::vector<long>({5, 2, 5, 2, 3, 3, 9, 0, 123}))) == (std::vector<long>({6, 3, 6, 3, 4, 4, 10, 1, 124})));
}