#include<assert.h>
#include<bits/stdc++.h>
// Write a function that accepts a list of strings as a parameter,
// deletes the strings that have odd lengths from it,
// and returns the resulted list with a sorted order,
// The list is always a list of strings and never an array of numbers,
// and it may contain duplicates.
// The order of the list should be ascending by length of each word, and you
// should return the list sorted by that rule.
// If two words have the same length, sort the list alphabetically.
// The function should return a list of strings in sorted order.
// You may assume that all words will have the same length.
// For example:
// assert list_sort(["aa", "a", "aaa"]) => ["aa"]
// assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
std::vector<std::string> sorted_list_sum(std::vector<std::string> lst) {
    std::sort(lst.begin(), lst.end(), [](std::string a, std::string b) {
        if (a.size() == b.size()) {
            return a < b;
        }
        return a.size() < b.size();
    });
    return lst;

}
int main() {
    auto candidate = sorted_list_sum;
    assert(candidate((std::vector<std::string>({(std::string)"aa", (std::string)"a", (std::string)"aaa"}))) == (std::vector<std::string>({(std::string)"aa"})));
    assert(candidate((std::vector<std::string>({(std::string)"school", (std::string)"AI", (std::string)"asdf", (std::string)"b"}))) == (std::vector<std::string>({(std::string)"AI", (std::string)"asdf", (std::string)"school"})));
    assert(candidate((std::vector<std::string>({(std::string)"d", (std::string)"b", (std::string)"c", (std::string)"a"}))) == (std::vector<std::string>()));
    assert(candidate((std::vector<std::string>({(std::string)"d", (std::string)"dcba", (std::string)"abcd", (std::string)"a"}))) == (std::vector<std::string>({(std::string)"abcd", (std::string)"dcba"})));
    assert(candidate((std::vector<std::string>({(std::string)"AI", (std::string)"ai", (std::string)"au"}))) == (std::vector<std::string>({(std::string)"AI", (std::string)"ai", (std::string)"au"})));
    assert(candidate((std::vector<std::string>({(std::string)"a", (std::string)"b", (std::string)"b", (std::string)"c", (std::string)"c", (std::string)"a"}))) == (std::vector<std::string>()));
    assert(candidate((std::vector<std::string>({(std::string)"aaaa", (std::string)"bbbb", (std::string)"dd", (std::string)"cc"}))) == (std::vector<std::string>({(std::string)"cc", (std::string)"dd", (std::string)"aaaa", (std::string)"bbbb"})));
}
