#!/bin/bash
# brackets is a string of "<" and ">".
# return True if every opening bracket has a corresponding closing bracket.
# >>> correct_bracketing("<")
# False
# >>> correct_bracketing("<>")
# True
# >>> correct_bracketing("<<><>>")
# True
# >>> correct_bracketing("><<>")
# False
#
# $1 is a string
correct_bracketing() {
    local brackets="$1"
    local stack=()
    local i=0
    local len=${#brackets}
    while [ $i -lt $len ]; do
        local char=${brackets:$i:1}
        if [ "$char" == "<" ]; then
            stack+=($char)
        elif [ "$char" == ">" ]; then
            if [ ${#stack[@]} -eq 0 ]; then
                return 1
            fi
            stack=(${stack[@]:1})
        fi
        i=$((i+1))
    done
    if [ ${#stack[@]} -eq 0 ]; then
        return 0
    fi
    return 1

}

candidate() {
    correct_bracketing "$@"
}

set -e
run_test() {
    [[ $(candidate "<>") = "true" ]]
    [[ $(candidate "<<><>>") = "true" ]]
    [[ $(candidate "<><><<><>><>") = "true" ]]
    [[ $(candidate "<><><<<><><>><>><<><><<>>>") = "true" ]]
    [[ $(candidate "<<<><>>>>") = "false" ]]
    [[ $(candidate "><<>") = "false" ]]
    [[ $(candidate "<") = "false" ]]
    [[ $(candidate "<<<<") = "false" ]]
    [[ $(candidate ">") = "false" ]]
    [[ $(candidate "<<>") = "false" ]]
    [[ $(candidate "<><><<><>><>><<>") = "false" ]]
    [[ $(candidate "<><><<><>><>>><>") = "false" ]]
}

run_test