# Given an array of integers nums, find the minimum sum of any non-empty sub-array
# of nums.
# Example
# minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
# minSubArraySum([-1, -2, -3]) == -6
minSubArraySum <- function(nums) {
    if (length(nums) == 0) {
        return(0)
    }
    if (length(nums) == 1) {
        return(nums[1])
    }
    min_sum <- nums[1]
    sum <- nums[1]
    for (i in 2:length(nums)) {
        sum <- sum + nums[i]
        if (sum < min_sum) {
            min_sum <- sum
        }
        if (sum > 0) {
            sum <- 0
        }
    }
    return(min_sum)
}
minSubArraySum([2, 3, 4, 1, 2, 4])
minSubArraySum([-1, -2, -3])
minSubArraySum([-2, 1, -3, 4, -1, 2, 1, -5, 4])


test_humaneval <- function() {
candidate <- minSubArraySum
    if(!identical(candidate(list(2, 3, 4, 1, 2, 4)), 1)){quit('no', 1)}
    if(!identical(candidate(list(-1, -2, -3)), -6)){quit('no', 1)}
    if(!identical(candidate(list(-1, -2, -3, 2, -10)), -14)){quit('no', 1)}
    if(!identical(candidate(list(-9999999999999999)), -9999999999999999)){quit('no', 1)}
    if(!identical(candidate(list(0, 10, 20, 1000000)), 0)){quit('no', 1)}
    if(!identical(candidate(list(-1, -2, -3, 10, -5)), -6)){quit('no', 1)}
    if(!identical(candidate(list(100, -1, -2, -3, 10, -5)), -6)){quit('no', 1)}
    if(!identical(candidate(list(10, 11, 13, 8, 3, 4)), 3)){quit('no', 1)}
    if(!identical(candidate(list(100, -33, 32, -1, 0, -2)), -33)){quit('no', 1)}
    if(!identical(candidate(list(-10)), -10)){quit('no', 1)}
    if(!identical(candidate(list(7)), 7)){quit('no', 1)}
    if(!identical(candidate(list(1, -1)), -1)){quit('no', 1)}
}
test_humaneval()