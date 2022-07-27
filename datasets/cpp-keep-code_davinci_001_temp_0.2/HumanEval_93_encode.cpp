#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Write a function that takes a message, and encodes in such a 
// way that it swaps case of all letters, replaces all vowels in 
// the message with the letter that appears 2 places ahead of that 
// vowel in the english alphabet. 
// Assume only letters. 
// Examples:
// >>> encode('test')
// 'TGST'
// >>> encode('This is a message')
// 'tHKS KS C MGSSCGG'
std::string encode(std::string message) {
    std::string result;
    for (auto c : message) {
        if (c >= 'a' && c <= 'z') {
            c = c - 'a' + 'A';
        }
        if (c >= 'A' && c <= 'Z') {
            c = c - 'A' + 'a';
        }
        result += c;
    }
    return result;
}


int main() {
    auto candidate = encode;
    assert(candidate(("TEST")) == ("tgst"));
    assert(candidate(("Mudasir")) == ("mWDCSKR"));
    assert(candidate(("YES")) == ("ygs"));
    assert(candidate(("This is a message")) == ("tHKS KS C MGSSCGG"));
    assert(candidate(("I DoNt KnOw WhAt tO WrItE")) == ("k dQnT kNqW wHcT Tq wRkTg"));
}