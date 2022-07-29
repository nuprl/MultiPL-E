# Implement the function f that takes n as a parameter,
# and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
# or the sum of numbers from 1 to i otherwise.
# i starts from 1.
# the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
# Example:
# f(5) == [1, 2, 6, 24, 15]
f <- function(n) {
    # your code here
    return(rep(1,n) + (1:n)[-1])
}

test_humaneval <- function() {
candidate <- f
    if(!identical(candidate(5), list(1, 2, 6, 24, 15))){quit('no', 1)}
    if(!identical(candidate(7), list(1, 2, 6, 24, 15, 720, 28))){quit('no', 1)}
    if(!identical(candidate(1), list(1))){quit('no', 1)}
    if(!identical(candidate(3), list(1, 2, 6))){quit('no', 1)}
}
test_humaneval()