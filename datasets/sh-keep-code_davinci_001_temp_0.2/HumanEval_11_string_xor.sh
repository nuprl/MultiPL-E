#!/bin/bash
# Input are two strings a and b consisting only of 1s and 0s.
# Perform binary XOR on these inputs and return result also as a string.
# >>> string_xor('010', '110')
# '100'
#
# $1 is a string
# $2 is a string
string_xor() {
    local a="$1"
    local b="$2"
    local res=""
    for (( i=0; i<${#a}; i++ )); do
        local c=${a:$i:1}
        local d=${b:$i:1}
        if [[ "$c" == "1" && "$d" == "1" ]]; then
            res+="0"
        elif [[ "$c" == "0" && "$d" == "0" ]]; then
            res+="0"
        else
            res+="1"
        fi
    done
    echo "$res"

}

candidate() {
    string_xor "$@"
}

run_test() {
    [[ $(candidate 111000 101010) = 010010 ]]
    [[ $(candidate 1 1) = 0 ]]
    [[ $(candidate 0101 0000) = 0101 ]]
}

run_test