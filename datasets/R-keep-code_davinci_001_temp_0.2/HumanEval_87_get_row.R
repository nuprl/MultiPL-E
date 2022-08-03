# You are given a 2 dimensional data, as a nested lists,
# which is similar to matrix, however, unlike matrices,
# each row may contain a different number of columns.
# Given lst, and integer x, find integers x in the list,
# and return list of tuples, [(x1, y1), (x2, y2) ...] such that
# each tuple is a coordinate - (row, columns), starting with 0.
# Sort coordinates initially by rows in ascending order.
# Also, sort coordinates of the row by columns in descending order.
# Examples:
# get_row([
# [1,2,3,4,5,6],
# [1,2,3,4,1,6],
# [1,2,3,4,5,1]
# ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
# get_row([], 1) == []
# get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
get_row <- function(lst, x) {
    # your code here
    return(NULL)
}
get_row([
[1,2,3,4,5,6],
[1,2,3,4,1,6],
[1,2,3,4,5,1]
], 1)
get_row([], 1)
get_row([[], [1], [1, 2, 3]], 3)


test_humaneval <- function() {
candidate <- get_row
    if(!identical(candidate(c(c(1, 2, 3, 4, 5, 6), c(1, 2, 3, 4, 1, 6), c(1, 2, 3, 4, 5, 1)), 1), c(c(0, 0), c(1, 4), c(1, 0), c(2, 5), c(2, 0)))){quit('no', 1)}
    if(!identical(candidate(c(c(1, 2, 3, 4, 5, 6), c(1, 2, 3, 4, 5, 6), c(1, 2, 3, 4, 5, 6), c(1, 2, 3, 4, 5, 6), c(1, 2, 3, 4, 5, 6), c(1, 2, 3, 4, 5, 6)), 2), c(c(0, 1), c(1, 1), c(2, 1), c(3, 1), c(4, 1), c(5, 1)))){quit('no', 1)}
    if(!identical(candidate(c(c(1, 2, 3, 4, 5, 6), c(1, 2, 3, 4, 5, 6), c(1, 1, 3, 4, 5, 6), c(1, 2, 1, 4, 5, 6), c(1, 2, 3, 1, 5, 6), c(1, 2, 3, 4, 1, 6), c(1, 2, 3, 4, 5, 1)), 1), c(c(0, 0), c(1, 0), c(2, 1), c(2, 0), c(3, 2), c(3, 0), c(4, 3), c(4, 0), c(5, 4), c(5, 0), c(6, 5), c(6, 0)))){quit('no', 1)}
    if(!identical(candidate(c(), 1), c())){quit('no', 1)}
    if(!identical(candidate(c(c(1)), 2), c())){quit('no', 1)}
    if(!identical(candidate(c(c(), c(1), c(1, 2, 3)), 3), c(c(2, 2)))){quit('no', 1)}
}
test_humaneval()