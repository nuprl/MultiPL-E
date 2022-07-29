# Given a non-empty array of integers arr and an integer k, return
# the sum of the elements with at most two digits from the first k elements of arr.
# Example:
# Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
# Output: 24 # sum of 21 + 3
# Constraints:
# 1. 1 <= len(arr) <= 100
# 2. 1 <= k <= len(arr)
add_elements <- function(arr, k) {
    sum <- 0
    for (i in 1:k) {
        sum <- sum + arr[i]
    }
    return(sum)
}

arr <- c(111,21,3,4000,5,6,7,8,9)
k <- 4
add_elements(arr, k)


test_humaneval <- function() {
candidate <- add_elements
    if(!identical(candidate(c(1, -2, -3, 41, 57, 76, 87, 88, 99), 3), -4)){quit('no', 1)}
    if(!identical(candidate(c(111, 121, 3, 4000, 5, 6), 2), 0)){quit('no', 1)}
    if(!identical(candidate(c(11, 21, 3, 90, 5, 6, 7, 8, 9), 4), 125)){quit('no', 1)}
    if(!identical(candidate(c(111, 21, 3, 4000, 5, 6, 7, 8, 9), 4), 24)){quit('no', 1)}
    if(!identical(candidate(c(1), 1), 1)){quit('no', 1)}
}
test_humaneval()