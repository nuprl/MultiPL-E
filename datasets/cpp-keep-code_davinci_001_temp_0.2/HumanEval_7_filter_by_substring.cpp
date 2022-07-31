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
    assert(candidate((std::vector<std::string>({(std::string)"xxx", (std::string)"asd", (std::string)"xxy", (std::string)"john doe", (std::string)"xxxAAA", (std::string)"xxx"})), ("xxx")) == (std::vector<std::string>({(std::string)"xxx", (std::string)"xxxAAA", (std::string)"xxx"})));
    assert(candidate((std::vector<std::string>({(std::string)"xxx", (std::string)"asd", (std::string)"aaaxxy", (std::string)"john doe", (std::string)"xxxAAA", (std::string)"xxx"})), ("xx")) == (std::vector<std::string>({(std::string)"xxx", (std::string)"aaaxxy", (std::string)"xxxAAA", (std::string)"xxx"})));
    assert(candidate((std::vector<std::string>({(std::string)"grunt", (std::string)"trumpet", (std::string)"prune", (std::string)"gruesome"})), ("run")) == (std::vector<std::string>({(std::string)"grunt", (std::string)"prune"})));
}
