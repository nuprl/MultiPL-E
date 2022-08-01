# Given a list of positive integers x. return a sorted list of all 
# elements that hasn't any even digit.
# Note: Returned list should be sorted in increasing order.
# For example:
# >>> unique_digits([15, 33, 1422, 1])
# [1, 15, 33]
# >>> unique_digits([152, 323, 1422, 10])
# []
unique_digits <- function(x) {
    return(sort(unique(x[!sapply(x, function(x) any(nchar(as.character(x)) %% 2 == 0))])))
}
unique_digits(c(15, 33, 1422, 1))
unique_digits(c(152, 323, 1422, 10))


test_humaneval <- function() {
candidate <- unique_digits
    if(!identical(candidate(c(15, 33, 1422, 1)), c(1, 15, 33))){quit('no', 1)}
    if(!identical(candidate(c(152, 323, 1422, 10)), list())){quit('no', 1)}
    if(!identical(candidate(c(12345, 2033, 111, 151)), c(111, 151))){quit('no', 1)}
    if(!identical(candidate(c(135, 103, 31)), c(31, 135))){quit('no', 1)}
}
test_humaneval()