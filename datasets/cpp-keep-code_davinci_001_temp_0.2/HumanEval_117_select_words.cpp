#include<assert.h>
#include<bits/stdc++.h>
// Given a string s and a natural number n, you have been tasked to implement 
// a function that returns a list of all words from string s that contain exactly 
// n consonants, in order these words appear in the string s.
// If the string s is empty then the function should return an empty list.
// Note: you may assume the input string contains only letters and spaces.
// Examples:
// select_words("Mary had a little lamb", 4) ==> ["little"]
// select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
// select_words("simple white space", 2) ==> []
// select_words("Hello world", 4) ==> ["world"]
// select_words("Uncle sam", 3) ==> ["Uncle"]
std::vector<std::string> select_words(std::string s, long n) {
    std::vector<std::string> result;
    if (s.empty()) {
        return result;
    }
    std::string word;
    for (auto c : s) {
        if (c == ' ') {
            if (word.size() == n) {
                result.push_back(word);
            }
            word.clear();
        } else {
            word.push_back(c);
        }
    }
    if (word.size() == n) {
        result.push_back(word);
    }
    return result;

}
int main() {
    auto candidate = select_words;
    assert(candidate(("Mary had a little lamb"), (4)) == (std::vector<std::string>({(std::string)"little"})));
    assert(candidate(("Mary had a little lamb"), (3)) == (std::vector<std::string>({(std::string)"Mary", (std::string)"lamb"})));
    assert(candidate(("simple white space"), (2)) == (std::vector<std::string>()));
    assert(candidate(("Hello world"), (4)) == (std::vector<std::string>({(std::string)"world"})));
    assert(candidate(("Uncle sam"), (3)) == (std::vector<std::string>({(std::string)"Uncle"})));
    assert(candidate((""), (4)) == (std::vector<std::string>()));
    assert(candidate(("a b c d e f"), (1)) == (std::vector<std::string>({(std::string)"b", (std::string)"c", (std::string)"d", (std::string)"f"})));
}
