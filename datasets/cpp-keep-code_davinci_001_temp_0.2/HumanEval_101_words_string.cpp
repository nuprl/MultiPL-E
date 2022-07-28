#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// You will be given a string of words separated by commas or spaces. Your task is
// to split the string into words and return an array of the words.
// For example:
// words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
// words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
std::vector<std::string> words_string(std::string s) {
    std::vector<std::string> result;
    std::string temp;
    for (int i = 0; i < s.size(); i++) {
        if (s[i] == ' ' || s[i] == ',') {
            result.push_back(temp);
            temp = "";
        } else {
            temp += s[i];
        }
    }
    result.push_back(temp);
    return result;
}
// You will be given a string of words separated by commas or spaces. Your task is
// to split the string into words and return an array of the words.
// For example:
// words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
// words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
std::vector<std::string> words_string(std::string s) {
    std::vector<std::string> result;
    std::string temp;
    for (int i = 0; i < s.size(); i++) {
        if (s[i] == ' ' || s[i] == ',') {
            result.push_back(temp);
            temp = "";
        } else {
            temp += s[i];
        }
    }
    result.push_back(temp);
    return result;
}
// You will be given a string of words separated by commas or spaces. Your task is
// to split the string into words and return an array of the words.
// For example:
// words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
// words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
std::vector<std::string> words_string(std::string s) {
    std::vector<std::string> result;
    std::string temp;
    for (int i = 0;


int main() {
    auto candidate = words_string;
    assert(candidate(("Hi, my name is John")) == (std::vector<std::string>({"Hi", "my", "name", "is", "John"})));
    assert(candidate(("One, two, three, four, five, six")) == (std::vector<std::string>({"One", "two", "three", "four", "five", "six"})));
    assert(candidate(("Hi, my name")) == (std::vector<std::string>({"Hi", "my", "name"})));
    assert(candidate(("One,, two, three, four, five, six,")) == (std::vector<std::string>({"One", "two", "three", "four", "five", "six"})));
    assert(candidate(("")) == (std::vector<std::string>()));
    assert(candidate(("ahmed     , gamal")) == (std::vector<std::string>({"ahmed", "gamal"})));
}