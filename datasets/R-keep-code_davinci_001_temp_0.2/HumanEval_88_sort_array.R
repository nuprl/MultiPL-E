# Given an array of non-negative integers, return a copy of the given array after sorting,
# you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
# or sort it in descending order if the sum( first index value, last index value) is even.
# Note:
# * don't change the given array.
# Examples:
# * sort_array([]) => []
# * sort_array([5]) => [5]
# * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
# * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
sort_array <- function(array) {
    if (length(array) == 0) {
        return(array)
    }
    if (length(array) == 1) {
        return(array)
    }
    if (sum(array[1], array[length(array)]) % 2 == 0) {
        return(array[order(array, decreasing = T)])
    } else {
        return(array[order(array)])
    }
}
sort_array(c(2, 4, 3, 0, 1, 5))
sort_array(c(2, 4, 3, 0, 1, 5, 6))


test_humaneval <- function() {
candidate <- sort_array
    if(!identical(candidate(c()), c())){quit('no', 1)}
    if(!identical(candidate(c(5)), c(5))){quit('no', 1)}
    if(!identical(candidate(c(2, 4, 3, 0, 1, 5)), c(0, 1, 2, 3, 4, 5))){quit('no', 1)}
    if(!identical(candidate(c(2, 4, 3, 0, 1, 5, 6)), c(6, 5, 4, 3, 2, 1, 0))){quit('no', 1)}
    if(!identical(candidate(c(2, 1)), c(1, 2))){quit('no', 1)}
    if(!identical(candidate(c(15, 42, 87, 32, 11, 0)), c(0, 11, 15, 32, 42, 87))){quit('no', 1)}
    if(!identical(candidate(c(21, 14, 23, 11)), c(23, 21, 14, 11))){quit('no', 1)}
}
test_humaneval()