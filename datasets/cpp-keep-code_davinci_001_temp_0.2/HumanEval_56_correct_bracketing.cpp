#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
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
    std::map<char, char> brackets_map = {
        {'<', '>'},
        {'[', ']'},
        {'{', '}'},
    };
    std::vector<char> stack;
    for (char bracket : brackets) {
        if (brackets_map.find(bracket) != brackets_map.end()) {
            stack.push_back(bracket);
        } else {
            if (stack.empty()) {
                return false;
            }
            char last_bracket = stack.back();
            if (brackets_map[last_bracket] != bracket) {
                return false;
            }
            stack.pop_back();
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