#!/bin/bash
# brackets is a string of "(" and ")".
# return True if every opening bracket has a corresponding closing bracket.
# >>> correct_bracketing("(")
# False
# >>> correct_bracketing("()")
# True
# >>> correct_bracketing("(()())")
# True
# >>> correct_bracketing(")(()")
# False
correct_bracketing() {
echo 0

}

candidate() {
    correct_bracketing "$@"
}

run_test() {
    [[ $(candidate "()") = true ]]
    [[ $(candidate "(()())") = true ]]
    [[ $(candidate "()()(()())()") = true ]]
    [[ $(candidate "()()((()()())())(()()(()))") = true ]]
    [[ $(candidate "((()())))") = false ]]
    [[ $(candidate ")(()") = false ]]
    [[ $(candidate "(") = false ]]
    [[ $(candidate "((((") = false ]]
    [[ $(candidate ")") = false ]]
    [[ $(candidate "(()") = false ]]
    [[ $(candidate "()()(()())())(()") = false ]]
    [[ $(candidate "()()(()())()))()") = false ]]
}

run_test