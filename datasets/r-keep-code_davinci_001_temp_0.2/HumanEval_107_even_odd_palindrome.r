# Given a positive integer n, return a tuple that has the number of even and odd
# integer palindromes that fall within the range(1, n), inclusive.
# Example 1:
# >>> even_odd_palindrome(3)
# (1, 2)
# Explanation:
# Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
# Example 2:
# >>> even_odd_palindrome(12)
# (4, 6)
# Explanation:
# Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
# Note:
# 1. 1 <= n <= 10^3
# 2. returned tuple has the number of even and odd integer palindromes respectively.
even_odd_palindrome <- function(n) {
    even <- 0
    odd <- 0
    for (i in 1:n) {
        if (is_palindrome(i) && is_even(i)) {
            even <- even + 1
        } else if (is_palindrome(i) && is_odd(i)) {
            odd <- odd + 1
        }
    }
    return(c(even, odd))
}


test_humaneval <- function() {
candidate <- even_odd_palindrome
    if(!identical(candidate(123), list(8, 13))){quit('no', 1)}
    if(!identical(candidate(12), list(4, 6))){quit('no', 1)}
    if(!identical(candidate(3), list(1, 2))){quit('no', 1)}
    if(!identical(candidate(63), list(6, 8))){quit('no', 1)}
    if(!identical(candidate(25), list(5, 6))){quit('no', 1)}
    if(!identical(candidate(19), list(4, 6))){quit('no', 1)}
    if(!identical(candidate(9), list(4, 5))){quit('no', 1)}
    if(!identical(candidate(1), list(0, 1))){quit('no', 1)}
}
test_humaneval()