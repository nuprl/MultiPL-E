#include<assert.h>
#include<bits/stdc++.h>
// brackets is a string of "(" and ")".
// return True if every opening bracket has a corresponding closing bracket.
// >>> correct_bracketing("(")
// False
// >>> correct_bracketing("()")
// True
// >>> correct_bracketing("(()())")
// True
// >>> correct_bracketing(")(()")
// False
bool correct_bracketing(std::string brackets) {
    std::stack<char> st;
    for(char c : brackets) {
        if(c == '(') {
            st.push(c);
        } else {
            if(st.empty()) {
                return false;
            }
            st.pop();
        }
    }
    return st.empty();

}
int main() {
    auto candidate = correct_bracketing;
    assert(candidate(("()")) == (true));
    assert(candidate(("(()())")) == (true));
    assert(candidate(("()()(()())()")) == (true));
    assert(candidate(("()()((()()())())(()()(()))")) == (true));
    assert(candidate(("((()())))")) == (false));
    assert(candidate((")(()")) == (false));
    assert(candidate(("(")) == (false));
    assert(candidate(("((((")) == (false));
    assert(candidate((")")) == (false));
    assert(candidate(("(()")) == (false));
    assert(candidate(("()()(()())())(()")) == (false));
    assert(candidate(("()()(()())()))()")) == (false));
}
