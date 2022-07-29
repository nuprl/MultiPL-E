# Given a positive integer n, you have to make a pile of n levels of stones.
# The first level has n stones.
# The number of stones in the next level is:
# - the next odd number if n is odd.
# - the next even number if n is even.
# Return the number of stones in each level in a list, where element at index
# i represents the number of stones in the level (i+1).
# Examples:
# >>> make_a_pile(3)
# [3, 5, 7]
make_a_pile <- function(n) {
    levels <- c(n)
    while (levels[length(levels)] < n) {
        if (n %% 2 == 0) {
            levels <- c(levels, levels[length(levels)] + 2)
        } else {
            levels <- c(levels, levels[length(levels)] + 1)
        }
    }
    levels
}


test_humaneval <- function() {
candidate <- make_a_pile
    if(!identical(candidate(3), c(3, 5, 7))){quit('no', 1)}
    if(!identical(candidate(4), c(4, 6, 8, 10))){quit('no', 1)}
    if(!identical(candidate(5), c(5, 7, 9, 11, 13))){quit('no', 1)}
    if(!identical(candidate(6), c(6, 8, 10, 12, 14, 16))){quit('no', 1)}
    if(!identical(candidate(8), c(8, 10, 12, 14, 16, 18, 20, 22))){quit('no', 1)}
}
test_humaneval()