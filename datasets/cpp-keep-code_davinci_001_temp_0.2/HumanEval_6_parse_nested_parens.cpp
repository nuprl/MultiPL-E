#include<assert.h>
#include<bits/stdc++.h>
// Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
// For each of the group, output the deepest level of nesting of parentheses.
// E.g. (()()) has maximum two levels of nesting while ((())) has three.
// >>> parse_nested_parens('(()()) ((())) () ((())()())')
// [2, 3, 1, 3]
std::vector<long> parse_nested_parens(std::string paren_string) {
    std::vector<long> result;
    std::stack<long> st;
    long count = 0;
    for (auto c : paren_string) {
        if (c == '(') {
            st.push(count);
            count = 0;
        } else if (c == ')') {
            result.push_back(count + st.top());
            st.pop();
            count = 0;
        } else {
            count++;
        }
    }
    return result;

}
int main() {
    auto candidate = parse_nested_parens;
    assert(candidate(("(()()) ((())) () ((())()())")) == (std::vector<long>({2, 3, 1, 3})));
    assert(candidate(("() (()) ((())) (((())))")) == (std::vector<long>({1, 2, 3, 4})));
    assert(candidate(("(()(())((())))")) == (std::vector<long>({4})));
}
