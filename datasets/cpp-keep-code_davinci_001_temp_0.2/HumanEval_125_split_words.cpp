#include<assert.h>
#include<bits/stdc++.h>
union Union_std_vector_std_string__long{
    std::vector<std::string> f0;
    long f1;    Union_std_vector_std_string__long(std::vector<std::string> _f0) : f0(_f0) {}
    Union_std_vector_std_string__long(long _f1) : f1(_f1) {}
    ~Union_std_vector_std_string__long() {}
    bool operator==(Union_std_vector_std_string__long u2) {
        return f0 == u2.f0 || f1 == u2.f1 ;
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
    std::string word;
    while (ss >> word) {
        res.push_back(word);
    }
    return Union_std_vector_std_string__long(res);

}
int main() {
    auto candidate = split_words;
    assert(candidate(("Hello world!")) == (Union_std_vector_std_string__long({"Hello", "world!"})));
    assert(candidate(("Hello,world!")) == (Union_std_vector_std_string__long({"Hello", "world!"})));
    assert(candidate(("Hello world,!")) == (Union_std_vector_std_string__long({"Hello", "world,!"})));
    assert(candidate(("Hello,Hello,world !")) == (Union_std_vector_std_string__long({"Hello,Hello,world", "!"})));
    assert(candidate(("abcdef")) == (Union_std_vector_std_string__long(3)));
    assert(candidate(("aaabb")) == (Union_std_vector_std_string__long(2)));
    assert(candidate(("aaaBb")) == (Union_std_vector_std_string__long(1)));
    assert(candidate(("")) == (Union_std_vector_std_string__long(0)));
}
