# Return sorted unique common elements for two lists.
# >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
# [1, 5, 653]
# >>> common([5, 3, 2, 8], [3, 2])
# [2, 3]
common <- function(l1, l2) {
    return(sort(unique(c(l1, l2))))
}

common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
common([5, 3, 2, 8], [3, 2])


test_humaneval <- function() {
candidate <- common
    if(!identical(candidate(c(1, 4, 3, 34, 653, 2, 5), c(5, 7, 1, 5, 9, 653, 121)), list(1, 5, 653))){quit('no', 1)}
    if(!identical(candidate(c(5, 3, 2, 8), c(3, 2)), list(2, 3))){quit('no', 1)}
    if(!identical(candidate(c(4, 3, 2, 8), c(3, 2, 4)), list(2, 3, 4))){quit('no', 1)}
    if(!identical(candidate(c(4, 3, 2, 8), c()), list())){quit('no', 1)}
}
test_humaneval()