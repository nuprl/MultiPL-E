#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given an array of integers, sort the integers that are between 1 and 9 inclusive,
// reverse the resulting array, and then replace each digit by its corresponding name from
// "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
// For example:
// arr = [2, 1, 1, 4, 5, 8, 2, 3]   
// -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
// -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
// return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
// If the array is empty, return an empty array:
// arr = []
// return []
// If the array has any strange number ignore it:
// arr = [1, -1 , 55] 
// -> sort arr -> [-1, 1, 55]
// -> reverse arr -> [55, 1, -1]
// return = ['One']
std::vector<std::string> by_length(std::vector<long> arr) {
    std::vector<long> sorted = arr;
    std::sort(sorted.begin(), sorted.end());
    std::reverse(sorted.begin(), sorted.end());
    std::vector<std::string> result;
    for (long i : sorted) {
        if (i > 0 && i < 10) {
            result.push_back(std::to_string(i));
        }
    }
    return result;
}


int main() {
    auto candidate = by_length;
    assert(candidate((std::vector<long>({2, 1, 1, 4, 5, 8, 2, 3}))) == (std::vector<std::string>({"Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"})));
    assert(candidate((std::vector<long>())) == (std::vector<std::string>()));
    assert(candidate((std::vector<long>({1, -1, 55}))) == (std::vector<std::string>({"One"})));
    assert(candidate((std::vector<long>({1, -1, 3, 2}))) == (std::vector<std::string>({"Three", "Two", "One"})));
    assert(candidate((std::vector<long>({9, 4, 8}))) == (std::vector<std::string>({"Nine", "Eight", "Four"})));
}