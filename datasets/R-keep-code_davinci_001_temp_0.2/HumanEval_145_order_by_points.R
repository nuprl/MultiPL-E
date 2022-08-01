# Write a function which sorts the given list of integers
# in ascending order according to the sum of their digits.
# Note: if there are several items with similar sum of their digits,
# order them based on their index in original list.
# For example:
# >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
# >>> order_by_points([]) == []
order_by_points <- function(nums) {
    if (length(nums) == 0) {
        return(nums)
    }
    else {
        nums <- sort(nums, decreasing = FALSE)
        nums <- nums[order(sapply(nums, sum), decreasing = FALSE)]
        return(nums)
    }
}


test_humaneval <- function() {
candidate <- order_by_points
    if(!identical(candidate(c(1, 11, -1, -11, -12)), c(-1, -11, 1, -12, 11))){quit('no', 1)}
    if(!identical(candidate(c(1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46)), c(0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457))){quit('no', 1)}
    if(!identical(candidate(list()), list())){quit('no', 1)}
    if(!identical(candidate(c(1, -11, -32, 43, 54, -98, 2, -3)), c(-3, -32, -98, -11, 1, 2, 43, 54))){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11)), c(1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9))){quit('no', 1)}
    if(!identical(candidate(c(0, 6, 6, -76, -21, 23, 4)), c(-76, -21, 0, 4, 23, 6, 6))){quit('no', 1)}
}
test_humaneval()