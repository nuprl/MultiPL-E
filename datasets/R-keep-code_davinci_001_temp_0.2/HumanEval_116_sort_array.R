# In this Kata, you have to sort an array of non-negative integers according to
# number of ones in their binary representation in ascending order.
# For similar number of ones, sort based on decimal value.
# It must be implemented like this:
# >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
# >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
# >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
sort_array <- function(arr) {
    # your code here
}


test_humaneval <- function() {
candidate <- sort_array
    if(!identical(candidate(c(1, 5, 2, 3, 4)), c(1, 2, 4, 3, 5))){quit('no', 1)}
    if(!identical(candidate(c(-2, -3, -4, -5, -6)), c(-4, -2, -6, -5, -3))){quit('no', 1)}
    if(!identical(candidate(c(1, 0, 2, 3, 4)), c(0, 1, 2, 4, 3))){quit('no', 1)}
    if(!identical(candidate(list()), list())){quit('no', 1)}
    if(!identical(candidate(c(2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4)), c(2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77))){quit('no', 1)}
    if(!identical(candidate(c(3, 6, 44, 12, 32, 5)), c(32, 3, 5, 6, 12, 44))){quit('no', 1)}
    if(!identical(candidate(c(2, 4, 8, 16, 32)), c(2, 4, 8, 16, 32))){quit('no', 1)}
    if(!identical(candidate(c(2, 4, 8, 16, 32)), c(2, 4, 8, 16, 32))){quit('no', 1)}
}
test_humaneval()