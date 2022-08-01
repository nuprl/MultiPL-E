#!/bin/bash
# Check if two words have the same characters.
# >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
# True
# >>> same_chars('abcd', 'dddddddabc')
# True
# >>> same_chars('dddddddabc', 'abcd')
# True
# >>> same_chars('eabcd', 'dddddddabc')
# False
# >>> same_chars('abcd', 'dddddddabce')
# False
# >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
# False
#
# $1 is a string
# $2 is a string
same_chars() {
echo 0

}

candidate() {
    same_chars "$@"
}

run_test() {
    [[ $(candidate eabcdzzzz dddzzzzzzzddeddabc) = true ]]
    [[ $(candidate abcd dddddddabc) = true ]]
    [[ $(candidate dddddddabc abcd) = true ]]
    [[ $(candidate eabcd dddddddabc) = false ]]
    [[ $(candidate abcd dddddddabcf) = false ]]
    [[ $(candidate eabcdzzzz dddzzzzzzzddddabc) = false ]]
    [[ $(candidate aabb aaccc) = false ]]
}

run_test