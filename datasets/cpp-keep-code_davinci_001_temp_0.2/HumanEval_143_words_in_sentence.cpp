#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// You are given a string representing a sentence,
// the sentence contains some words separated by a space,
// and you have to return a string that contains the words from the original sentence,
// whose lengths are prime numbers,
// the order of the words in the new string should be the same as the original one.
// Example 1:
// Input: sentence = "This is a test"
// Output: "is"
// Example 2:
// Input: sentence = "lets go for swimming"
// Output: "go for"
// Constraints:
// * 1 <= len(sentence) <= 100
// * sentence contains only letters
std::string words_in_sentence(std::string sentence) {
    std::vector<std::string> words;
    std::stringstream ss(sentence);
    std::string word;
    while (ss >> word) {
        words.push_back(word);
    }
    std::map<int, std::string> prime_words;
    for (auto word : words) {
        int len = word.length();
        if (len > 1 && is_prime(len)) {
            prime_words[len] = word;
        }
    }
    std::string result;
    for (auto [len, word] : prime_words) {
        result += word + " ";
    }
    return result.substr(0, result.length() - 1);
}


int main() {
    auto candidate = words_in_sentence;
    assert(candidate(("This is a test")) == ("is"));
    assert(candidate(("lets go for swimming")) == ("go for"));
    assert(candidate(("there is no place available here")) == ("there is no place"));
    assert(candidate(("Hi I am Hussein")) == ("Hi am Hussein"));
    assert(candidate(("go for it")) == ("go for it"));
    assert(candidate(("here")) == (""));
    assert(candidate(("here is")) == ("is"));
}