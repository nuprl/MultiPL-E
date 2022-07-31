# This function takes a list l and returns a list l' such that
# l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
# to the values of the corresponding indicies of l, but sorted.
# >>> sort_third([1, 2, 3])
# [1, 2, 3]
# >>> sort_third([5, 6, 3, 4, 8, 9, 2])
# [2, 6, 3, 4, 8, 9, 5]
sort_third <- function(l) {
    l[seq(1, length(l), 3)] <- sort(l[seq(1, length(l), 3)])
    return(l)
}
sort_third([5, 6, 3, 4, 8, 9, 2])


test_humaneval <- function() {
candidate <- sort_third
    if(!identical(candidate(list(5, 6, 3, 4, 8, 9, 2)), list(2, 6, 3, 4, 8, 9, 5))){quit('no', 1)}
    if(!identical(candidate(list(5, 8, 3, 4, 6, 9, 2)), list(2, 8, 3, 4, 6, 9, 5))){quit('no', 1)}
    if(!identical(candidate(list(5, 6, 9, 4, 8, 3, 2)), list(2, 6, 9, 4, 8, 3, 5))){quit('no', 1)}
    if(!identical(candidate(list(5, 6, 3, 4, 8, 9, 2, 1)), list(2, 6, 3, 4, 8, 9, 5, 1))){quit('no', 1)}
}
test_humaneval()