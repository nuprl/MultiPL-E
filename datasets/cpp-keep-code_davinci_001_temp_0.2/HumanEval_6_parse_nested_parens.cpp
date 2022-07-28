#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
// For each of the group, output the deepest level of nesting of parentheses.
// E.g. (()()) has maximum two levels of nesting while ((())) has three.
// >>> parse_nested_parens('(()()) ((())) () ((())()())')
// [2, 3, 1, 3]
std::vector<long> parse_nested_parens(std::string paren_string) {
    std::vector<long> result;
    std::map<long, long> level_map;
    long level = 0;
    long max_level = 0;
    for (long i = 0; i < paren_string.size(); i++) {
        if (paren_string[i] == '(') {
            level_map[level] = i;
            level++;
        } else if (paren_string[i] == ')') {
            level--;
            if (level == -1) {
                level = 0;
                result.push_back(i - level_map[level]);
                max_level = std::max(max_level, result.back());
            }
        }
    }
    for (long i = 0; i < result.size(); i++) {
        result[i] = max_level - result[i];
    }
    return result;
}


int main() {
    auto candidate = parse_nested_parens;
    assert(candidate(("(()()) ((())) () ((())()())")) == (std::vector<long>({2, 3, 1, 3})));
    assert(candidate(("() (()) ((())) (((())))")) == (std::vector<long>({1, 2, 3, 4})));
    assert(candidate(("(()(())((())))")) == (std::vector<long>({4})));
}