#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Checks if given string is a palindrome
// >>> is_palindrome('')
// True
// >>> is_palindrome('aba')
// True
// >>> is_palindrome('aaaaa')
// True
// >>> is_palindrome('zbcd')
// False
bool is_palindrome(std::string text) {
    if (text.size() == 0) {
        return true;
    }
    for (int i = 0; i < text.size() / 2; i++) {
        if (text[i] != text[text.size() - i - 1]) {
            return false;
        }
    }
    return true;
}


int main() {
    auto candidate = is_palindrome;
    assert(candidate(("")) == (true));
    assert(candidate(("aba")) == (true));
    assert(candidate(("aaaaa")) == (true));
    assert(candidate(("zbcd")) == (false));
    assert(candidate(("xywyx")) == (true));
    assert(candidate(("xywyz")) == (false));
    assert(candidate(("xywzx")) == (false));
}