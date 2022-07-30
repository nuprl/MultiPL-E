# Return list with elements incremented by 1.
# >>> incr_list([1, 2, 3])
# [2, 3, 4]
# >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
# [6, 4, 6, 3, 4, 4, 10, 1, 124]
incr_list <- function(l) {
    l <- l + 1
    return(l)
}
incr_list([1, 2, 3])
incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])


test_humaneval <- function() {
candidate <- incr_list
    if(!identical(candidate(list()), list())){quit('no', 1)}
    if(!identical(candidate(list(3, 2, 1)), list(4, 3, 2))){quit('no', 1)}
    if(!identical(candidate(list(5, 2, 5, 2, 3, 3, 9, 0, 123)), list(6, 3, 6, 3, 4, 4, 10, 1, 124))){quit('no', 1)}
}
test_humaneval()