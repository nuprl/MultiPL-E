# Given two positive integers a and b, return the even digits between a
# and b, in ascending order.
# For example:
# >>> generate_integers(2, 8) 
# [2, 4, 6, 8]
# >>> generate_integers(8, 2) 
# [2, 4, 6, 8]
# >>> generate_integers(10, 14) 
# []
generate_integers <- function(a, b) {
    if (a > b) {
        a <- b
        b <- a
    }
    if (a %% 2 == 1) {
        a <- a + 1
    }
    if (b %% 2 == 0) {
        b <- b - 1
    }
    return(seq(a, b, by = 2))
}
generate_integers(2, 8)
generate_integers(8, 2)
generate_integers(10, 14)


test_humaneval <- function() {
candidate <- generate_integers
    if(!identical(candidate(2, 10), list(2, 4, 6, 8))){quit('no', 1)}
    if(!identical(candidate(10, 2), list(2, 4, 6, 8))){quit('no', 1)}
    if(!identical(candidate(132, 2), list(2, 4, 6, 8))){quit('no', 1)}
    if(!identical(candidate(17, 89), list())){quit('no', 1)}
}
test_humaneval()