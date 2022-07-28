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
    assert(candidate((std::vector<std::string>({"aa", "a", "aaa"}))) == (std::vector<std::string>({"aa"})));
    assert(candidate((std::vector<std::string>({"school", "AI", "asdf", "b"}))) == (std::vector<std::string>({"AI", "asdf", "school"})));
    assert(candidate((std::vector<std::string>({"d", "b", "c", "a"}))) == (std::vector<std::string>()));
    assert(candidate((std::vector<std::string>({"d", "dcba", "abcd", "a"}))) == (std::vector<std::string>({"abcd", "dcba"})));
    assert(candidate((std::vector<std::string>({"AI", "ai", "au"}))) == (std::vector<std::string>({"AI", "ai", "au"})));
    assert(candidate((std::vector<std::string>({"a", "b", "b", "c", "c", "a"}))) == (std::vector<std::string>()));
    assert(candidate((std::vector<std::string>({"aaaa", "bbbb", "dd", "cc"}))) == (std::vector<std::string>({"cc", "dd", "aaaa", "bbbb"})));
}
