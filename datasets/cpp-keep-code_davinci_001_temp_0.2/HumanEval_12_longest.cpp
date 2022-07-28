#include<assert.h>
#include<bits/stdc++.h>
// Out of list of strings, return the longest one. Return the first one in case of multiple
// strings of the same length. Return None in case the input list is empty.
// >>> longest([])
// >>> longest(['a', 'b', 'c'])
// 'a'
// >>> longest(['a', 'bb', 'ccc'])
// 'ccc'
std::optional<std::string> longest(std::vector<std::string> strings) {
    if (strings.empty()) {
        return std::nullopt;
    }
    std::string longest = strings[0];
    for (auto s : strings) {
        if (s.size() > longest.size()) {
            longest = s;
        }
    }
    return longest;

}
int main() {
    auto candidate = longest;
    assert(candidate((std::vector<std::string>())) == (std::optional<std::string>({})));
    assert(candidate((std::vector<std::string>({"x", "y", "z"}))) == (std::optional<std::string>("x")));
    assert(candidate((std::vector<std::string>({"x", "yyy", "zzzz", "www", "kkkk", "abc"}))) == (std::optional<std::string>("zzzz")));
}
