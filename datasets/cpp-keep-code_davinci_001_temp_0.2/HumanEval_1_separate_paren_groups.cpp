#include<assert.h>
#include<bits/stdc++.h>
// Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
// separate those group into separate strings and return the list of those.
// Separate groups are balanced (each open brace is properly closed) and not nested within each other
// Ignore any spaces in the input string.
// >>> separate_paren_groups('( ) (( )) (( )( ))')
// ['()', '(())', '(()())']
std::vector<std::string> separate_paren_groups(std::string paren_string) {
    std::vector<std::string> result;
    std::string current;
    for (char c : paren_string) {
        if (c == '(') {
            if (current.size() > 0) {
                result.push_back(current);
                current.clear();
            }
            current.push_back(c);
        } else if (c == ')') {
            current.push_back(c);
            result.push_back(current);
            current.clear();
        } else {
            current.push_back(c);
        }
    }
    if (current.size() > 0) {
        result.push_back(current);
    }
    return result;

}
int main() {
    auto candidate = separate_paren_groups;
    assert(candidate(("(()()) ((())) () ((())()())")) == (std::vector<std::string>({"(()())", "((()))", "()", "((())()())"})));
    assert(candidate(("() (()) ((())) (((())))")) == (std::vector<std::string>({"()", "(())", "((()))", "(((())))"})));
    assert(candidate(("(()(())((())))")) == (std::vector<std::string>({"(()(())((())))"})));
    assert(candidate(("( ) (( )) (( )( ))")) == (std::vector<std::string>({"()", "(())", "(()())"})));
}
