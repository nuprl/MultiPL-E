# Given an array arr of integers and a positive integer k, return a sorted list 
# of length k with the maximum k numbers in arr.
# Example 1:
# Input: arr = [-3, -4, 5], k = 3
# Output: [-4, -3, 5]
# Example 2:
# Input: arr = [4, -4, 4], k = 2
# Output: [4, 4]
# Example 3:
# Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
# Output: [2]
# Note:
# 1. The length of the array will be in the range of [1, 1000].
# 2. The elements in the array will be in the range of [-1000, 1000].
# 3. 0 <= k <= len(arr)
maximum <- function(arr, k) {
    if (k == 0) {
        return (NULL)
    }
    if (k == 1) {
        return (arr[1])
    }
    if (k == 2) {
        return (max(arr[1], arr[2]))
    }
    if (k == 3) {
        return (max(arr[1], arr[2], arr[3]))
    }
    if (k == 4) {
        return (max(arr[1], arr[2], arr[3], arr[4]))
    }
    if (k == 5) {
        return (max(arr[1], arr[2], arr[3], arr[4], arr[5]))
    }
    if (k == 6) {
        return (max(arr[1], arr[2], arr[3], arr[4], arr[5], arr[6]))
    }
    if (k == 7) {
        return (max(arr[1], arr[2], arr[3], arr[4], arr[5], arr[6], arr[7]))
    }
    if (k == 8) {
        return (max(arr[1], arr[2], arr[3], arr[4], arr[5], arr[6], arr[7], arr[8]))
    }
    if (k == 9) {
        return (max(arr[1], arr[2], arr[3], arr[4], arr[5], arr[6], arr[7], arr[8], arr[9]))
    }
    if (k == 10) {
        return (max(arr[1], arr[2], arr[3], arr[4], arr[5], arr[6], arr[7], arr[8], arr[9], arr[10]))
    }
    if (k == 11) {
        return (max(arr[1], arr[2], arr[3], arr[4], arr[5], arr[6], arr[7], arr[8], arr[9], arr[10], arr[11]))
    }
    if (k == 12) {
       

test_humaneval <- function() {
candidate <- maximum
    if(!identical(candidate(list(-3, -4, 5), 3), list(-4, -3, 5))){quit('no', 1)}
    if(!identical(candidate(list(4, -4, 4), 2), list(4, 4))){quit('no', 1)}
    if(!identical(candidate(list(-3, 2, 1, 2, -1, -2, 1), 1), list(2))){quit('no', 1)}
    if(!identical(candidate(list(123, -123, 20, 0, 1, 2, -3), 3), list(2, 20, 123))){quit('no', 1)}
    if(!identical(candidate(list(-123, 20, 0, 1, 2, -3), 4), list(0, 1, 2, 20))){quit('no', 1)}
    if(!identical(candidate(list(5, 15, 0, 3, -13, -8, 0), 7), list(-13, -8, 0, 0, 3, 5, 15))){quit('no', 1)}
    if(!identical(candidate(list(-1, 0, 2, 5, 3, -10), 2), list(3, 5))){quit('no', 1)}
    if(!identical(candidate(list(1, 0, 5, -7), 1), list(5))){quit('no', 1)}
    if(!identical(candidate(list(4, -4), 2), list(-4, 4))){quit('no', 1)}
    if(!identical(candidate(list(-10, 10), 2), list(-10, 10))){quit('no', 1)}
    if(!identical(candidate(list(1, 2, 3, -23, 243, -400, 0), 0), list())){quit('no', 1)}
}
test_humaneval()