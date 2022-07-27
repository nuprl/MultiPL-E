#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Input is a space-delimited string of numberals from 'zero' to 'nine'.
// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
// Return the string with numbers sorted from smallest to largest
// >>> sort_numbers('three one five')
// 'one three five'
std::string sort_numbers(std::string numbers) {
    std::vector<std::string> nums;
    std::string ret;
    std::map<int, std::string> m;
    m[0] = "zero";
    m[1] = "one";
    m[2] = "two";
    m[3] = "three";
    m[4] = "four";
    m[5] = "five";
    m[6] = "six";
    m[7] = "seven";
    m[8] = "eight";
    m[9] = "nine";
    for (auto i : numbers) {
        if (i == ' ') {
            continue;
        }
        nums.push_back(m[i - '0']);
    }
    std::sort(nums.begin(), nums.end());
    for (auto i : nums) {
        ret += i;
        ret += " ";
    }
    return ret;
}


int main() {
    auto candidate = sort_numbers;
    assert(candidate(("")) == (""));
    assert(candidate(("three")) == ("three"));
    assert(candidate(("three five nine")) == ("three five nine"));
    assert(candidate(("five zero four seven nine eight")) == ("zero four five seven eight nine"));
    assert(candidate(("six five four three two one zero")) == ("zero one two three four five six"));
}