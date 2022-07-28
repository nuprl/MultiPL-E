#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given a string, find out how many distinct characters (regardless of case) does it consist of
// >>> count_distinct_characters('xyzXYZ')
// 3
// >>> count_distinct_characters('Jerry')
// 4
long count_distinct_characters(std::string string) {
    std::map<char, int> map;
    for (auto c : string) {
        map[c]++;
    }
    return map.size();
}


int main() {
    auto candidate = count_distinct_characters;
    assert(candidate(("")) == (0));
    assert(candidate(("abcde")) == (5));
    assert(candidate(("abcdecadeCADE")) == (5));
    assert(candidate(("aaaaAAAAaaaa")) == (1));
    assert(candidate(("Jerry jERRY JeRRRY")) == (5));
}