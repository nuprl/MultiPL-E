#include<assert.h>
#include<bits/stdc++.h>
// Filter an input list of strings only for ones that contain given substring
// >>> filter_by_substring([], 'a')
// []
// >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
// ['abc', 'bacd', 'array']
std::vector<std::string> filter_by_substring(std::vector<std::string> strings, std::string substring) {
    std::vector<std::string> result;
    for (auto s : strings) {
        if (s.find(substring) != std::string::npos) {
            result.push_back(s);
        }
    }
    return result;

}
int main() {
    auto candidate = filter_by_substring;
    assert(candidate((std::vector<std::string>()), ("john")) == (std::vector<std::string>()));
    assert(candidate((std::vector<std::string>({"xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"})), ("xxx")) == (std::vector<std::string>({"xxx", "xxxAAA", "xxx"})));
    assert(candidate((std::vector<std::string>({"xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx"})), ("xx")) == (std::vector<std::string>({"xxx", "aaaxxy", "xxxAAA", "xxx"})));
    assert(candidate((std::vector<std::string>({"grunt", "trumpet", "prune", "gruesome"})), ("run")) == (std::vector<std::string>({"grunt", "prune"})));
}
