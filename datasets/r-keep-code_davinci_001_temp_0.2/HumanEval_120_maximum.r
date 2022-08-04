# Given an array arr of integers and a positive integer k, return a sorted list 
# of length k with the maximum k numbers in arr.
# Example 1:
# >>> maximum([-3, -4, 5], 3)
# [-4, -3, 5]
# Example 2:
# >>> maximum([4, -4, 4], 2)
# [4, 4]
# Example 3:
# >>> maximum([-3, 2, 1, 2, -1, -2, 1], 1)
# [2]
# Note:
# 1. The length of the array will be in the range of [1, 1000].
# 2. The elements in the array will be in the range of [-1000, 1000].
# 3. 0 <= k <= len(arr)
maximum <- function(arr, k) {
    if (k > length(arr)) {
        return(arr)
    }
    max <- arr[1]
    max_idx <- 1
    for (i in 2:length(arr)) {
        if (arr[i] > max) {
            max <- arr[i]
            max_idx <- i
        }
    }
    arr[max_idx] <- arr[1]
    arr[1] <- max
    return(arr[1:k])
}
maximum([-3, -4, 5], 3)
maximum([4, -4, 4], 2)
maximum([-3, 2, 1, 2, -1, -2, 1], 1)


test_humaneval <- function() {
candidate <- maximum
    if(!identical(candidate(c(-3, -4, 5), 3), list(-4, -3, 5))){quit('no', 1)}
    if(!identical(candidate(c(4, -4, 4), 2), list(4, 4))){quit('no', 1)}
    if(!identical(candidate(c(-3, 2, 1, 2, -1, -2, 1), 1), list(2))){quit('no', 1)}
    if(!identical(candidate(c(123, -123, 20, 0, 1, 2, -3), 3), list(2, 20, 123))){quit('no', 1)}
    if(!identical(candidate(c(-123, 20, 0, 1, 2, -3), 4), list(0, 1, 2, 20))){quit('no', 1)}
    if(!identical(candidate(c(5, 15, 0, 3, -13, -8, 0), 7), list(-13, -8, 0, 0, 3, 5, 15))){quit('no', 1)}
    if(!identical(candidate(c(-1, 0, 2, 5, 3, -10), 2), list(3, 5))){quit('no', 1)}
    if(!identical(candidate(c(1, 0, 5, -7), 1), list(5))){quit('no', 1)}
    if(!identical(candidate(c(4, -4), 2), list(-4, 4))){quit('no', 1)}
    if(!identical(candidate(c(-10, 10), 2), list(-10, 10))){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, -23, 243, -400, 0), 0), list())){quit('no', 1)}
}
test_humaneval()