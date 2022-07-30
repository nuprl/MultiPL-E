#include<assert.h>
#include<bits/stdc++.h>
// You will be given a string of words separated by commas or spaces. Your task is
// to split the string into words and return an array of the words.
// For example:
// words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
// words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
std::vector<std::string> words_string(std::string s) {
    std::vector<std::string> words;
    std::string word;
    for (auto c : s) {
        if (c == ' ' || c == ',') {
            if (!word.empty()) {
                words.push_back(word);
                word.clear();
            }
        } else {
            word += c;
        }
    }
    if (!word.empty()) {
        words.push_back(word);
    }
    return words;

}
int main() {
    auto candidate = words_string;
    assert(candidate(("Hi, my name is John")) == (std::vector<std::string>({(std::string)"Hi", (std::string)"my", (std::string)"name", (std::string)"is", (std::string)"John"})));
    assert(candidate(("One, two, three, four, five, six")) == (std::vector<std::string>({(std::string)"One", (std::string)"two", (std::string)"three", (std::string)"four", (std::string)"five", (std::string)"six"})));
    assert(candidate(("Hi, my name")) == (std::vector<std::string>({(std::string)"Hi", (std::string)"my", (std::string)"name"})));
    assert(candidate(("One,, two, three, four, five, six,")) == (std::vector<std::string>({(std::string)"One", (std::string)"two", (std::string)"three", (std::string)"four", (std::string)"five", (std::string)"six"})));
    assert(candidate(("")) == (std::vector<std::string>()));
    assert(candidate(("ahmed     , gamal")) == (std::vector<std::string>({(std::string)"ahmed", (std::string)"gamal"})));
}
