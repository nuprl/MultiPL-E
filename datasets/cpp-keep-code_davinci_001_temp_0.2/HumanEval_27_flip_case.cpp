#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
// >>> flip_case('Hello')
// 'hELLO'
std::string flip_case(std::string string) {
    std::string result;
    for (auto c : string) {
        if (c >= 'a' && c <= 'z') {
            result += c - ('a' - 'A');
        } else if (c >= 'A' && c <= 'Z') {
            result += c + ('a' - 'A');
        } else {
            result += c;
        }
    }
    return result;
}


int main() {
    auto candidate = flip_case;
    assert(candidate(("")) == (""));
    assert(candidate(("Hello!")) == ("hELLO!"));
    assert(candidate(("These violent delights have violent ends")) == ("tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS"));
}