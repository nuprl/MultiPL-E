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
    int max_unique_char = 0;
    for (auto word : words) {
        int unique_char = 0;
        for (auto c : word) {
            if (std::find(word.begin(), word.end(), c) == word.end()) {
                unique_char++;
            }
        }
        if (unique_char > max_unique_char) {
            max_unique_char = unique_char;
            max_word = word;
        }
    }
    return max_word;

}
int main() {
    auto candidate = find_max;
    assert(candidate((std::vector<std::string>({(std::string)"name", (std::string)"of", (std::string)"string"}))) == ("string"));
    assert(candidate((std::vector<std::string>({(std::string)"name", (std::string)"enam", (std::string)"game"}))) == ("enam"));
    assert(candidate((std::vector<std::string>({(std::string)"aaaaaaa", (std::string)"bb", (std::string)"cc"}))) == ("aaaaaaa"));
    assert(candidate((std::vector<std::string>({(std::string)"abc", (std::string)"cba"}))) == ("abc"));
    assert(candidate((std::vector<std::string>({(std::string)"play", (std::string)"this", (std::string)"game", (std::string)"of", (std::string)"footbott"}))) == ("footbott"));
    assert(candidate((std::vector<std::string>({(std::string)"we", (std::string)"are", (std::string)"gonna", (std::string)"rock"}))) == ("gonna"));
    assert(candidate((std::vector<std::string>({(std::string)"we", (std::string)"are", (std::string)"a", (std::string)"mad", (std::string)"nation"}))) == ("nation"));
    assert(candidate((std::vector<std::string>({(std::string)"this", (std::string)"is", (std::string)"a", (std::string)"prrk"}))) == ("this"));
    assert(candidate((std::vector<std::string>({(std::string)"b"}))) == ("b"));
    assert(candidate((std::vector<std::string>({(std::string)"play", (std::string)"play", (std::string)"play"}))) == ("play"));
}
