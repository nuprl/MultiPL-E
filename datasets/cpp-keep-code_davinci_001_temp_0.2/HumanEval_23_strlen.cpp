#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Return length of given string
// >>> strlen('')
// 0
// >>> strlen('abc')
// 3
long strlen(std::string string) {
    long length = 0;
    for (int i = 0; i < string.length(); i++) {
        length++;
    }
    return length;
}
// Return true if given string is palindrome
// >>> is_palindrome('')
// True
// >>> is_palindrome('abc')
// False


int main() {
    auto candidate = strlen;
    assert(candidate(("")) == (0));
    assert(candidate(("x")) == (1));
    assert(candidate(("asdasnakj")) == (9));
}