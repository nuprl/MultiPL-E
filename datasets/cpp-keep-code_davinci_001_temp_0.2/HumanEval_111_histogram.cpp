#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given a string representing a space separated lowercase letters, return a dictionary
// of the letter with the most repetition and containing the corresponding count.
// If several letters have the same occurrence, return all of them.
// Example:
// histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
// histogram('a b b a') == {'a': 2, 'b': 2}
// histogram('a b c a b') == {'a': 2, 'b': 2}
// histogram('b b b b a') == {'b': 4}
// histogram('') == {}
std::map<std::string, long> histogram(std::string test) {
    std::map<std::string, long> result;
    std::vector<std::string> letters;
    std::stringstream ss(test);
    std::string word;
    while (ss >> word) {
        letters.push_back(word);
    }
    for (auto& letter : letters) {
        if (result.find(letter) == result.end()) {
            result[letter] = 1;
        } else {
            result[letter] += 1;
        }
    }
    return result;
}
std::map<std::string, long> histogram(std::string test) {
    std::map<std::string, long> result;
    std::vector<std::string> letters;
    std::stringstream ss(test);
    std::string word;
    while (ss >> word) {
        letters.push_back(word);
    }
    for (auto& letter : letters) {
        if (result.find(letter) == result.end()) {
            result[letter] = 1;
        } else {
            result[letter] += 1;
        }
    }
    return result;
}
std::map<std::string, long> histogram(std::string test) {
    std::map<std::string, long> result;
    std::vector<std::string> letters;
    std::stringstream ss(test);
    std::string word;
    while (ss >> word) {
        letters.push_back(word);
    }
    for (auto& letter : letters) {
        if (result.find(letter) == result.end()) {
            result[letter] = 1;
        } else {
            result[letter] += 1;
        }
    }
    return result;
}
std::map<std::string, long> histogram(std::string test) {
    std::map<std::string, long> result;
    std::vector<std::string> letters;
    std::stringstream ss(test);
    std::string word;
    while (ss >> word) {
        letters.


int main() {
    auto candidate = histogram;
    assert(candidate(("a b b a")) == (std::map<std::string, long>({ {"a", 2}, {"b", 2} })));
    assert(candidate(("a b c a b")) == (std::map<std::string, long>({ {"a", 2}, {"b", 2} })));
    assert(candidate(("a b c d g")) == (std::map<std::string, long>({ {"a", 1}, {"b", 1}, {"c", 1}, {"d", 1}, {"g", 1} })));
    assert(candidate(("r t g")) == (std::map<std::string, long>({ {"r", 1}, {"t", 1}, {"g", 1} })));
    assert(candidate(("b b b b a")) == (std::map<std::string, long>({ {"b", 4} })));
    assert(candidate(("r t g")) == (std::map<std::string, long>({ {"r", 1}, {"t", 1}, {"g", 1} })));
    assert(candidate(("")) == (std::map<std::string, long>({})));
    assert(candidate(("a")) == (std::map<std::string, long>({ {"a", 1} })));
}