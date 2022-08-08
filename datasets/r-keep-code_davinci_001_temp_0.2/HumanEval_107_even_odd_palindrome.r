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
even_odd_palindrome <- function(n) {
    even_palindrome <- 0
    odd_palindrome <- 0
    for (i in 1:n) {
        if (is_palindrome(i) && is_even(i)) {
            even_palindrome <- even_palindrome + 1
        } else if (is_palindrome(i) && is_odd(i)) {
            odd_palindrome <- odd_palindrome + 1
        }
    }
    return(c(even_palindrome, odd_palindrome))
}

is_palindrome <- function(n) {
    n_str <- as.character(n)
    n_str <- strsplit(n_str, "")[[1]]
    n_str <- unlist(n_str)
    n_str <- rev(n_str)
    n_str <- paste(n_str, collapse = "")
    return(n == as.integer(n_str))
}

is_even <- function(n) {
    return(n %% 2 == 0)
}

is_odd <- function(n) {
    return(n %% 2 == 1)
}


test_humaneval <- function() {
candidate <- even_odd_palindrome
    if(!identical(candidate(123), c(8, 13))){quit('no', 1)}
    if(!identical(candidate(12), c(4, 6))){quit('no', 1)}
    if(!identical(candidate(3), c(1, 2))){quit('no', 1)}
    if(!identical(candidate(63), c(6, 8))){quit('no', 1)}
    if(!identical(candidate(25), c(5, 6))){quit('no', 1)}
    if(!identical(candidate(19), c(4, 6))){quit('no', 1)}
    if(!identical(candidate(9), c(4, 5))){quit('no', 1)}
    if(!identical(candidate(1), c(0, 1))){quit('no', 1)}
}
test_humaneval()