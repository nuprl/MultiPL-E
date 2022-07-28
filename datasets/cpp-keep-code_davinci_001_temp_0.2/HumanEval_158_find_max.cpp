#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Write a function that accepts a list of strings.
// The list contains different words. Return the word with maximum number
// of unique characters. If multiple strings have maximum number of unique
// characters, return the one which comes first in lexicographical order.
// find_max(["name", "of", "string"]) == "string"
// find_max(["name", "enam", "game"]) == "enam"
// find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
std::string find_max(std::vector<std::string> words) {
    std::string max_word;
    int max_unique_chars = 0;
    for (auto& word : words) {
        int unique_chars = 0;
        for (auto& c : word) {
            if (std::count(word.begin(), word.end(), c) == 1) {
                unique_chars++;
            }
        }
        if (unique_chars > max_unique_chars) {
            max_unique_chars = unique_chars;
            max_word = word;
        }
    }
    return max_word;
}


int main() {
    auto candidate = find_max;
    assert(candidate((std::vector<std::string>({"name", "of", "string"}))) == ("string"));
    assert(candidate((std::vector<std::string>({"name", "enam", "game"}))) == ("enam"));
    assert(candidate((std::vector<std::string>({"aaaaaaa", "bb", "cc"}))) == ("aaaaaaa"));
    assert(candidate((std::vector<std::string>({"abc", "cba"}))) == ("abc"));
    assert(candidate((std::vector<std::string>({"play", "this", "game", "of", "footbott"}))) == ("footbott"));
    assert(candidate((std::vector<std::string>({"we", "are", "gonna", "rock"}))) == ("gonna"));
    assert(candidate((std::vector<std::string>({"we", "are", "a", "mad", "nation"}))) == ("nation"));
    assert(candidate((std::vector<std::string>({"this", "is", "a", "prrk"}))) == ("this"));
    assert(candidate((std::vector<std::string>({"b"}))) == ("b"));
    assert(candidate((std::vector<std::string>({"play", "play", "play"}))) == ("play"));
}