# This function takes a list l and returns a list l' such that
# l' is identical to l in the odd indicies, while its values at the even indicies are equal
# to the values of the even indicies of l, but sorted.
# >>> sort_even([1, 2, 3])
# [1, 2, 3]
# >>> sort_even([5, 6, 3, 4])
# [3, 6, 5, 4]
sort_even <- function(l) {
    l[seq(1, length(l), 2)] <- sort(l[seq(1, length(l), 2)])
    return(l)
}


test_humaneval <- function() {
candidate <- sort_even
    if(!identical(candidate(c(1, 2, 3)), list(1, 2, 3))){quit('no', 1)}
    if(!identical(candidate(c(5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10)), list(-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123))){quit('no', 1)}
    if(!identical(candidate(c(5, 8, -12, 4, 23, 2, 3, 11, 12, -10)), list(-12, 8, 3, 4, 5, 2, 12, 11, 23, -10))){quit('no', 1)}
}
test_humaneval()