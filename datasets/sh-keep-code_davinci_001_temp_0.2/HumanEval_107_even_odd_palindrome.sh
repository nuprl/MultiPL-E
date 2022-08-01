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
#
# $1 is an integer
even_odd_palindrome() {
echo 0

}

candidate() {
    even_odd_palindrome "$@"
}

run_test() {
    [[ $(candidate 123) = "8 13" ]]
    [[ $(candidate 12) = "4 6" ]]
    [[ $(candidate 3) = "1 2" ]]
    [[ $(candidate 63) = "6 8" ]]
    [[ $(candidate 25) = "5 6" ]]
    [[ $(candidate 19) = "4 6" ]]
    [[ $(candidate 9) = "4 5" ]]
    [[ $(candidate 1) = "0 1" ]]
}

run_test