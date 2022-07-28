#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// You are given a word. Your task is to find the closest vowel that stands between 
// two consonants from the right side of the word (case sensitive).
// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
// find any vowel met the above condition. 
// You may assume that the given string contains English letter only.
// Example:
// get_closest_vowel("yogurt") ==> "u"
// get_closest_vowel("FULL") ==> "U"
// get_closest_vowel("quick") ==> ""
// get_closest_vowel("ab") ==> ""
std::string get_closest_vowel(std::string word) {
    std::string vowels = "aeiou";
    std::string consonants = "qwrtypsdfghjklzxcvbnm";
    std::string result;
    int vowel_index = 0;
    int consonant_index = 0;
    int vowel_count = 0;
    int consonant_count = 0;
    for (int i = word.length() - 1; i >= 0; i--) {
        if (vowels.find(word[i]) != std::string::npos) {
            vowel_count++;
            vowel_index = i;
        }
        if (consonants.find(word[i]) != std::string::npos) {
            consonant_count++;
            consonant_index = i;
        }
        if (vowel_count == 2 && consonant_count == 1) {
            result = word[i];
            break;
        }
    }
    return result;
}


int main() {
    auto candidate = get_closest_vowel;
    assert(candidate(("yogurt")) == ("u"));
    assert(candidate(("full")) == ("u"));
    assert(candidate(("easy")) == (""));
    assert(candidate(("eAsy")) == (""));
    assert(candidate(("ali")) == (""));
    assert(candidate(("bad")) == ("a"));
    assert(candidate(("most")) == ("o"));
    assert(candidate(("ab")) == (""));
    assert(candidate(("ba")) == (""));
    assert(candidate(("quick")) == (""));
    assert(candidate(("anime")) == ("i"));
    assert(candidate(("Asia")) == (""));
    assert(candidate(("Above")) == ("o"));
}