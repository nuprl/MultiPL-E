#include<assert.h>
#include<bits/stdc++.h>
// Write a function that accepts two lists of strings and returns the list that has 
// total number of chars in the all strings of the list less than the other list.
// if the two lists have the same number of chars, return the first list.
// Examples
// total_match([], []) ➞ []
// total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
// total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
// total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
// total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
std::vector<std::string> total_match(std::vector<std::string> lst1, std::vector<std::string> lst2) {
    // Write your code here
    int lst1_len = 0;
    int lst2_len = 0;
    for(auto s : lst1) {
        lst1_len += s.length();
    }
    for(auto s : lst2) {
        lst2_len += s.length();
    }
    if(lst1_len < lst2_len) {
        return lst1;
    } else if(lst1_len > lst2_len) {
        return lst2;
    } else {
        return lst1;
    }

}
int main() {
    auto candidate = total_match;
    assert(candidate((std::vector<std::string>()), (std::vector<std::string>())) == (std::vector<std::string>()));
    assert(candidate((std::vector<std::string>({(std::string)"hi", (std::string)"admin"})), (std::vector<std::string>({(std::string)"hi", (std::string)"hi"}))) == (std::vector<std::string>({(std::string)"hi", (std::string)"hi"})));
    assert(candidate((std::vector<std::string>({(std::string)"hi", (std::string)"admin"})), (std::vector<std::string>({(std::string)"hi", (std::string)"hi", (std::string)"admin", (std::string)"project"}))) == (std::vector<std::string>({(std::string)"hi", (std::string)"admin"})));
    assert(candidate((std::vector<std::string>({(std::string)"4"})), (std::vector<std::string>({(std::string)"1", (std::string)"2", (std::string)"3", (std::string)"4", (std::string)"5"}))) == (std::vector<std::string>({(std::string)"4"})));
    assert(candidate((std::vector<std::string>({(std::string)"hi", (std::string)"admin"})), (std::vector<std::string>({(std::string)"hI", (std::string)"Hi"}))) == (std::vector<std::string>({(std::string)"hI", (std::string)"Hi"})));
    assert(candidate((std::vector<std::string>({(std::string)"hi", (std::string)"admin"})), (std::vector<std::string>({(std::string)"hI", (std::string)"hi", (std::string)"hi"}))) == (std::vector<std::string>({(std::string)"hI", (std::string)"hi", (std::string)"hi"})));
    assert(candidate((std::vector<std::string>({(std::string)"hi", (std::string)"admin"})), (std::vector<std::string>({(std::string)"hI", (std::string)"hi", (std::string)"hii"}))) == (std::vector<std::string>({(std::string)"hi", (std::string)"admin"})));
    assert(candidate((std::vector<std::string>()), (std::vector<std::string>({(std::string)"this"}))) == (std::vector<std::string>()));
    assert(candidate((std::vector<std::string>({(std::string)"this"})), (std::vector<std::string>())) == (std::vector<std::string>()));
}
