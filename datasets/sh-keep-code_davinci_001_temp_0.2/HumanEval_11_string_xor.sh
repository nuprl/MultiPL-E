#!/bin/bash
# Input are two strings a and b consisting only of 1s and 0s.
# Perform binary XOR on these inputs and return result also as a string.
# >>> string_xor('010', '110')
# '100'
string_xor() {
    local a="$1"
    local b="$2"
    local res=""
    local i
    for ((i=0; i<${#a}; i++)); do
        if [[ "${a:$i:1}" == "1" && "${b:$i:1}" == "1" ]]; then
            res+="0"
        elif [[ "${a:$i:1}" == "0" && "${b:$i:1}" == "0" ]]; then
            res+="0"
        else
            res+="1"
        fi
    done
    echo "$res"

}

candidate() {
    local res=$(string_xor "$@")
    echo $res
}

test() {
        x0=$(candidate '111000' '101010')
    assert_equals '010010' "${x0[*]}"

        x1=$(candidate '1' '1')
    assert_equals '0' "${x1[*]}"

        x2=$(candidate '0101' '0000')
    assert_equals '0101' "${x2[*]}"

}