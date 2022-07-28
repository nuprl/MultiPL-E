#!/bin/bash
# Given a positive integer n, return a tuple that has the number of even and odd
# integer palindromes that fall within the range(1, n), inclusive.
# Example 1:
# Input: 3
# Output: (1, 2)
# Explanation:
# Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
# Example 2:
# Input: 12
# Output: (4, 6)
# Explanation:
# Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
# Note:
# 1. 1 <= n <= 10^3
# 2. returned tuple has the number of even and odd integer palindromes respectively.
even_odd_palindrome() {
    local even_count=0
    local odd_count=0
    for ((i=1; i<=$1; i++)); do
        if [[ $(($i%2)) -eq 0 ]]; then
            even_count=$(($even_count+1))
        else
            odd_count=$(($odd_count+1))
        fi
    done
    echo $even_count $odd_count

}

candidate() {
    local res=$(even_odd_palindrome "$@")
    echo $res
}

test() {
    declare -a x1=(8 13)
        x0=$(candidate 123)
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=(4 6)
        x2=$(candidate 12)
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=(1 2)
        x4=$(candidate 3)
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=(6 8)
        x6=$(candidate 63)
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x9=(5 6)
        x8=$(candidate 25)
    assert_equals "${x9[*]}" "${x8[*]}"

    declare -a x11=(4 6)
        x10=$(candidate 19)
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x13=(4 5)
        x12=$(candidate 9)
    assert_equals "${x13[*]}" "${x12[*]}"

    declare -a x15=(0 1)
        x14=$(candidate 1)
    assert_equals "${x15[*]}" "${x14[*]}"

}