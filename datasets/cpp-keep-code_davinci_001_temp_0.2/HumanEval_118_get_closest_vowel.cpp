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
    int i = word.length() - 1;
    while (i >= 0) {
        if (vowels.find(word[i]) != std::string::npos) {
            break;
        }
        i--;
    }
    if (i < 0) {
        return result;
    }
    int j = i - 1;
    while (j >= 0) {
        if (consonants.find(word[j]) != std::string::npos) {
            break;
        }
        j--;
    }
    if (j < 0) {
        return result;
    }
    for (int k = 0; k < vowels.length(); k++) {
        if (vowels[k] == word[i]) {
            result = vowels[k];
            break;
        }
        if (vowels[k] == word[j]) {
            result = vowels[k];
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
