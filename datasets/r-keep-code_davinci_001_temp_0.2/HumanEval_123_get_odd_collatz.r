# Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.
# The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
# as follows: start with any positive integer n. Then each term is obtained from the 
# previous term as follows: if the previous term is even, the next term is one half of 
# the previous term. If the previous term is odd, the next term is 3 times the previous
# term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
# Note: 
# 1. Collatz(1) is [1].
# 2. returned list sorted in increasing order.
# For example:
# get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
# >>> get_odd_collatz(5) 
# [1, 5]
get_odd_collatz <- function(n) {
    if (n == 1) {
        return (c(1))
    }
    if (n %% 2 == 0) {
        return (c(n, get_odd_collatz(n/2)))
    } else {
        return (c(n, get_odd_collatz(3*n + 1)))
    }
}
get_odd_collatz(5)


test_humaneval <- function() {
candidate <- get_odd_collatz
    if(!identical(candidate(14), list(1, 5, 7, 11, 13, 17))){quit('no', 1)}
    if(!identical(candidate(5), list(1, 5))){quit('no', 1)}
    if(!identical(candidate(12), list(1, 3, 5))){quit('no', 1)}
    if(!identical(candidate(1), list(1))){quit('no', 1)}
}
test_humaneval()