#!/bin/bash
# Task
# We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
# then check if the result string is palindrome.
# A string is called palindrome if it reads the same backward as forward.
# You should return a tuple containing the result string and True/False for the check.
# Example
# For s = "abcde", c = "ae", the result should be ('bcd',False)
# For s = "abcdef", c = "b"  the result should be ('acdef',False)
# For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
reverse_delete() {
    local s=$1
    local c=$2
    local result=''
    for (( i=0; i<${#s}; i++ )); do
        local char=${s:$i:1}
        if [[ $c =~ $char ]]; then
            continue
        fi
        result+=$char
    done
    if [[ $result == $result ]]; then
        echo "$result"
        echo "True"
    else
        echo "$result"
        echo "False"
    fi

}

candidate() {
    local res=$(reverse_delete "$@")
    echo $res
}

test() {
    declare -a x1=('bcd' false)
        x0=$(candidate 'abcde' 'ae')
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=('acdef' false)
        x2=$(candidate 'abcdef' 'b')
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=('cdedc' true)
        x4=$(candidate 'abcdedcba' 'ab')
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=('dik' false)
        x6=$(candidate 'dwik' 'w')
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x9=('' true)
        x8=$(candidate 'a' 'a')
    assert_equals "${x9[*]}" "${x8[*]}"

    declare -a x11=('abcdedcba' true)
        x10=$(candidate 'abcdedcba' '')
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x13=('abcdedcba' true)
        x12=$(candidate 'abcdedcba' 'v')
    assert_equals "${x13[*]}" "${x12[*]}"

    declare -a x15=('abba' true)
        x14=$(candidate 'vabba' 'v')
    assert_equals "${x15[*]}" "${x14[*]}"

    declare -a x17=('' true)
        x16=$(candidate 'mamma' 'mia')
    assert_equals "${x17[*]}" "${x16[*]}"

}