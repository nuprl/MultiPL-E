#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given a list of positive integers x. return a sorted list of all 
// elements that hasn't any even digit.
// Note: Returned list should be sorted in increasing order.
// For example:
// >>> unique_digits([15, 33, 1422, 1])
// [1, 15, 33]
// >>> unique_digits([152, 323, 1422, 10])
// []
std::vector<long> unique_digits(std::vector<long> x) {
    std::vector<long> result;
    for(auto i : x){
        bool flag = true;
        for(auto j : std::to_string(i)){
            if(j == '0' || j == '2' || j == '4' || j == '6' || j == '8'){
                flag = false;
                break;
            }
        }
        if(flag)
            result.push_back(i);
    }
    return result;
}


int main() {
    auto candidate = unique_digits;
    assert(candidate((std::vector<long>({15, 33, 1422, 1}))) == (std::vector<long>({1, 15, 33})));
    assert(candidate((std::vector<long>({152, 323, 1422, 10}))) == (std::vector<long>()));
    assert(candidate((std::vector<long>({12345, 2033, 111, 151}))) == (std::vector<long>({111, 151})));
    assert(candidate((std::vector<long>({135, 103, 31}))) == (std::vector<long>({31, 135})));
}