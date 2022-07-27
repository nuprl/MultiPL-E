#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given a string text, replace all spaces in it with underscores, 
// and if a string has more than 2 consecutive spaces, 
// then replace all consecutive spaces with - 
// fix_spaces("Example") == "Example"
// fix_spaces("Example 1") == "Example_1"
// fix_spaces(" Example 2") == "_Example_2"
// fix_spaces(" Example   3") == "_Example-3"
std::string fix_spaces(std::string text) {
    std::string res;
    for(auto c : text) {
        if(c == ' ') {
            if(res.back() == ' ') {
                res.pop_back();
                res.push_back('-');
            } else {
                res.push_back('_');
            }
        } else {
            res.push_back(c);
        }
    }
    return res;
}


int main() {
    auto candidate = fix_spaces;
    assert(candidate(("Example")) == ("Example"));
    assert(candidate(("Mudasir Hanif ")) == ("Mudasir_Hanif_"));
    assert(candidate(("Yellow Yellow  Dirty  Fellow")) == ("Yellow_Yellow__Dirty__Fellow"));
    assert(candidate(("Exa   mple")) == ("Exa-mple"));
    assert(candidate(("   Exa 1 2 2 mple")) == ("-Exa_1_2_2_mple"));
}