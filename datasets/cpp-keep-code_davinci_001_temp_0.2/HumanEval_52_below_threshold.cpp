#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Return True if all numbers in the list l are below threshold t.
// >>> below_threshold([1, 2, 4, 10], 100)
// True
// >>> below_threshold([1, 20, 4, 10], 5)
// False
bool below_threshold(std::vector<long> l, long t) {
    for (auto i : l) {
        if (i > t) {
            return false;
        }
    }
    return true;
}


int main() {
    auto candidate = below_threshold;
    assert(candidate((std::vector<long>({1, 2, 4, 10})), (100)) == (true));
    assert(candidate((std::vector<long>({1, 20, 4, 10})), (5)) == (false));
    assert(candidate((std::vector<long>({1, 20, 4, 10})), (21)) == (true));
    assert(candidate((std::vector<long>({1, 20, 4, 10})), (22)) == (true));
    assert(candidate((std::vector<long>({1, 8, 4, 10})), (11)) == (true));
    assert(candidate((std::vector<long>({1, 8, 4, 10})), (10)) == (false));
}