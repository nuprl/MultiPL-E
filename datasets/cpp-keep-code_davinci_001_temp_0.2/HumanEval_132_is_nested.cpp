#include<assert.h>
#include<bits/stdc++.h>
// Create a function that takes a string as input which contains only square brackets.
// The function should return True if and only if there is a valid subsequence of brackets 
// where at least one bracket in the subsequence is nested.
// is_nested('[[]]') ➞ True
// is_nested('[]]]]]]][[[[[]') ➞ False
// is_nested('[][]') ➞ False
// is_nested('[]') ➞ False
// is_nested('[[][]]') ➞ True
// is_nested('[[]][[') ➞ True
bool is_nested(std::string string) {
    std::stack<char> stack;
    for (int i = 0; i < string.length(); i++) {
        if (string[i] == '[') {
            stack.push(string[i]);
        } else if (string[i] == ']') {
            if (stack.empty()) {
                return false;
            }
            stack.pop();
        }
    }
    return stack.empty();

}
int main() {
    auto candidate = is_nested;
    assert(candidate(("[[]]")) == (true));
    assert(candidate(("[]]]]]]][[[[[]")) == (false));
    assert(candidate(("[][]")) == (false));
    assert(candidate(("[]")) == (false));
    assert(candidate(("[[[[]]]]")) == (true));
    assert(candidate(("[]]]]]]]]]]")) == (false));
    assert(candidate(("[][][[]]")) == (true));
    assert(candidate(("[[]")) == (false));
    assert(candidate(("[]]")) == (false));
    assert(candidate(("[[]][[")) == (true));
    assert(candidate(("[[][]]")) == (true));
    assert(candidate(("")) == (false));
    assert(candidate(("[[[[[[[[")) == (false));
    assert(candidate(("]]]]]]]]")) == (false));
}
