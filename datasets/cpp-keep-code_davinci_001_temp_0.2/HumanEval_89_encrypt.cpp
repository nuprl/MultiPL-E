#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Create a function encrypt that takes a string as an argument and
// returns a string encrypted with the alphabet being rotated. 
// The alphabet should be rotated in a manner such that the letters 
// shift down by two multiplied to two places.
// For example:
// encrypt('hi') returns 'lm'
// encrypt('asdfghjkl') returns 'ewhjklnop'
// encrypt('gf') returns 'kj'
// encrypt('et') returns 'ix'
std::string encrypt(std::string s) {
    std::string alphabet = "abcdefghijklmnopqrstuvwxyz";
    std::string encrypted = "";
    for (char c : s) {
        int index = alphabet.find(c);
        if (index == std::string::npos) {
            encrypted += c;
        } else {
            encrypted += alphabet[(index + 2) % 26];
        }
    }
    return encrypted;
}


int main() {
    auto candidate = encrypt;
    assert(candidate(("hi")) == ("lm"));
    assert(candidate(("asdfghjkl")) == ("ewhjklnop"));
    assert(candidate(("gf")) == ("kj"));
    assert(candidate(("et")) == ("ix"));
    assert(candidate(("faewfawefaewg")) == ("jeiajeaijeiak"));
    assert(candidate(("hellomyfriend")) == ("lippsqcjvmirh"));
    assert(candidate(("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh")) == ("hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl"));
    assert(candidate(("a")) == ("e"));
}