#include<assert.h>
#include<bits/stdc++.h>
union Union_std_vector_std_string__long{
    std::vector<std::string> f0;
    long f1;    Union_std_vector_std_string__long(std::vector<std::string> _f0) : f0(_f0) {}
    Union_std_vector_std_string__long(long _f1) : f1(_f1) {}
    ~Union_std_vector_std_string__long() {}
    bool operator==(std::vector<std::string> f) {
        return f0 == f ;
    }    bool operator==(long f) {
        return f1 == f ;
    }
};
// Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
// Examples
// split_words("Hello world!") ➞ ["Hello", "world!"]
// split_words("Hello,world!") ➞ ["Hello", "world!"]
// split_words("abcdef") == 3
Union_std_vector_std_string__long split_words(std::string txt) {
    std::vector<std::string> res;
    std::stringstream ss(txt);
    std::string token;
    while (std::getline(ss, token, ' ')) {
        res.push_back(token);
    }
    if (res.size() == 0) {
        res.push_back(txt);
    }
    return Union_std_vector_std_string__long(res);

}
int main() {
    auto candidate = split_words;
    assert(candidate(("Hello world!")) == std::vector<std::string>({(std::string)"Hello", (std::string)"world!"}));
    assert(candidate(("Hello,world!")) == std::vector<std::string>({(std::string)"Hello", (std::string)"world!"}));
    assert(candidate(("Hello world,!")) == std::vector<std::string>({(std::string)"Hello", (std::string)"world,!"}));
    assert(candidate(("Hello,Hello,world !")) == std::vector<std::string>({(std::string)"Hello,Hello,world", (std::string)"!"}));
    assert(candidate(("abcdef")) == 3);
    assert(candidate(("aaabb")) == 2);
    assert(candidate(("aaaBb")) == 1);
    assert(candidate(("")) == 0);
}
