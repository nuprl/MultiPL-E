#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Write a function that takes a string and returns True if the string
// length is a prime number or False otherwise
// Examples
// prime_length('Hello') == True
// prime_length('abcdcba') == True
// prime_length('kittens') == True
// prime_length('orange') == False
bool prime_length(std::string string) {
    if (string.length() == 1) {
        return false;
    }
    for (int i = 2; i < string.length(); i++) {
        if (string.length() % i == 0) {
            return false;
        }
    }
    return true;
}


int main() {
    auto candidate = prime_length;
    assert(candidate(("Hello")) == (true));
    assert(candidate(("abcdcba")) == (true));
    assert(candidate(("kittens")) == (true));
    assert(candidate(("orange")) == (false));
    assert(candidate(("wow")) == (true));
    assert(candidate(("world")) == (true));
    assert(candidate(("MadaM")) == (true));
    assert(candidate(("Wow")) == (true));
    assert(candidate(("")) == (false));
    assert(candidate(("HI")) == (true));
    assert(candidate(("go")) == (true));
    assert(candidate(("gogo")) == (false));
    assert(candidate(("aaaaaaaaaaaaaaa")) == (false));
    assert(candidate(("Madam")) == (true));
    assert(candidate(("M")) == (false));
    assert(candidate(("0")) == (false));
}