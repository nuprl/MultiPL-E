#!/bin/bash
# You are given a string s.
# if s[i] is a letter, reverse its case from lower to upper or vise versa, 
# otherwise keep it as it is.
# If the string contains no letters, reverse the string.
# The function should return the resulted string.
# Examples
# solve("1234") = "4321"
# solve("ab") = "AB"
# solve("#a@C") = "#A@c"
solve() {
    local result=""
    local i
    for ((i=0; i<${#1}; i++)); do
        if [[ "${1:$i:1}" =~ [a-zA-Z] ]]; then
            if [[ "${1:$i:1}" =~ [a-z] ]]; then
                result+="${1:$i:1}" | tr '[:lower:]' '[:upper:]'
            else
                result+="${1:$i:1}" | tr '[:upper:]' '[:lower:]'
            fi
        else
            result+="${1:$i:1}"
        fi
    done
    echo "$result"

}

candidate() {
    local res=$(solve "$@")
    echo $res
}

test() {
        x0=$(candidate 'AsDf')
    assert_equals 'aSdF' "${x0[*]}"

        x1=$(candidate '1234')
    assert_equals '4321' "${x1[*]}"

        x2=$(candidate 'ab')
    assert_equals 'AB' "${x2[*]}"

        x3=$(candidate '#a@C')
    assert_equals '#A@c' "${x3[*]}"

        x4=$(candidate '#AsdfW^45')
    assert_equals '#aSDFw^45' "${x4[*]}"

        x5=$(candidate '#6@2')
    assert_equals '2@6#' "${x5[*]}"

        x6=$(candidate '#$a^D')
    assert_equals '#$A^d' "${x6[*]}"

        x7=$(candidate '#ccc')
    assert_equals '#CCC' "${x7[*]}"

}