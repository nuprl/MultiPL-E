#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Return sorted unique elements in a list
// >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
// [0, 2, 3, 5, 9, 123]
std::vector<long> unique(std::vector<long> l) {
    std::vector<long> res;
    std::sort(l.begin(), l.end());
    std::vector<long>::iterator it = std::unique(l.begin(), l.end());
    res.assign(it, l.end());
    return res;
}


int main() {
    auto candidate = unique;
    assert(candidate((std::vector<long>({5, 3, 5, 2, 3, 3, 9, 0, 123}))) == (std::vector<long>({0, 2, 3, 5, 9, 123})));
}