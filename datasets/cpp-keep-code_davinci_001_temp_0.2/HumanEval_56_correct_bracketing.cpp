#include<assert.h>
#include<bits/stdc++.h>
// brackets is a string of "<" and ">".
// return True if every opening bracket has a corresponding closing bracket.
// >>> correct_bracketing("<")
// False
// >>> correct_bracketing("<>")
// True
// >>> correct_bracketing("<<><>>")
// True
// >>> correct_bracketing("><<>")
// False
bool correct_bracketing(std::string brackets) {
    std::stack<char> stack;
    for (char bracket : brackets) {
        if (bracket == '<') {
            stack.push(bracket);
        } else {
            if (stack.empty()) {
                return false;
            }
            stack.pop();
        }
    }
    return stack.empty();

}
int main() {
    auto candidate = correct_bracketing;
    assert(candidate(("<>")) == (true));
    assert(candidate(("<<><>>")) == (true));
    assert(candidate(("<><><<><>><>")) == (true));
    assert(candidate(("<><><<<><><>><>><<><><<>>>")) == (true));
    assert(candidate(("<<<><>>>>")) == (false));
    assert(candidate(("><<>")) == (false));
    assert(candidate(("<")) == (false));
    assert(candidate(("<<<<")) == (false));
    assert(candidate((">")) == (false));
    assert(candidate(("<<>")) == (false));
    assert(candidate(("<><><<><>><>><<>")) == (false));
    assert(candidate(("<><><<><>><>>><>")) == (false));
}
