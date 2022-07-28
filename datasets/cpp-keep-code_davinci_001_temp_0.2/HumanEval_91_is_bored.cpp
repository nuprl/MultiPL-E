#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// You'll be given a string of words, and your task is to count the number
// of boredoms. A boredom is a sentence that starts with the word "I".
// Sentences are delimited by '.', '?' or '!'.
// For example:
// >>> is_bored("Hello world")
// 0
// >>> is_bored("The sky is blue. The sun is shining. I love this weather")
// 1
long is_bored(std::string S) {
    long count = 0;
    std::string::size_type pos = 0;
    while ((pos = S.find(".", pos)) != std::string::npos) {
        if (S.substr(0, pos).find("I") != std::string::npos) {
            count++;
        }
        pos++;
    }
    return count;
}


int main() {
    auto candidate = is_bored;
    assert(candidate(("Hello world")) == (0));
    assert(candidate(("Is the sky blue?")) == (0));
    assert(candidate(("I love It !")) == (1));
    assert(candidate(("bIt")) == (0));
    assert(candidate(("I feel good today. I will be productive. will kill It")) == (2));
    assert(candidate(("You and I are going for a walk")) == (0));
}