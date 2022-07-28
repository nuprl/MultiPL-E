#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
// cycpattern_check("abcd","abd") => False
// cycpattern_check("hello","ell") => True
// cycpattern_check("whassup","psus") => False
// cycpattern_check("abab","baa") => True
// cycpattern_check("efef","eeff") => False
// cycpattern_check("himenss","simen") => True
bool cycpattern_check(std::string a, std::string b) {
    if(a.length() < b.length()) return false;
    std::string temp = a;
    for(int i = 0; i < a.length(); i++) {
        if(temp.substr(i, b.length()) == b) return true;
        temp.push_back(temp[0]);
        temp.erase(0, 1);
    }
    return false;
}


int main() {
    auto candidate = cycpattern_check;
    assert(candidate(("xyzw"), ("xyw")) == (false));
    assert(candidate(("yello"), ("ell")) == (true));
    assert(candidate(("whattup"), ("ptut")) == (false));
    assert(candidate(("efef"), ("fee")) == (true));
    assert(candidate(("abab"), ("aabb")) == (false));
    assert(candidate(("winemtt"), ("tinem")) == (true));
}