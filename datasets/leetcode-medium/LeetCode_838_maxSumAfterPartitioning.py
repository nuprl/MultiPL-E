from typing import List


def maxSumAfterPartitioning(arr: list, k: int) -> int:
    """
    Given an integer array arr, partition the array into (contiguous) subarrays of length at most k. After partitioning, each subarray has their values changed to become the maximum value of that subarray.
    Return the largest sum of the given array after partitioning. Test cases are generated so that the answer fits in a 32-bit integer.
 
    Example 1:

    Input: arr = [1,15,7,9,2,5,10], k = 3
    Output: 84
    Explanation: arr becomes [15,15,15,9,10,10,10]

    Example 2:

    Input: arr = [1,4,1,5,7,3,6,1,9,9,3], k = 4
    Output: 83

    Example 3:

    Input: arr = [1], k = 1
    Output: 1

 
    Constraints:

    1 <= arr.length <= 500
    0 <= arr[i] <= 109
    1 <= k <= arr.length

    """
    ### Canonical solution below ###
    n = len(arr)
    dp = [0] * (n + 1)
    for i in range(1, n + 1):
        current_max = 0
        for j in range(1, k + 1):
            if i - j < 0:
                break
            current_max = max(current_max, arr[i - j])
            dp[i] = max(dp[i], dp[i - j] + current_max * j)
    return dp[n]




### Unit tests below ###
def check(candidate):
	assert candidate([2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2], 6) == 72
	assert candidate(
    [1,4,1,5,7,3,6,1,9,9,3], 4) == 83
	assert candidate([], 1) == 0
	assert candidate([1,4,1], 3) == 12
	assert candidate([1], 1) == 1
	assert candidate([1,1,1,1,1,1,1,1,1,1], 5) == 10
	assert candidate([1,15,7,9,2,5,10], 3) == 84
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 5) == 36
	assert candidate([2,2,2,2,2,2], 2) == 12
	assert candidate(
    [1, 4, 1, 5, 7, 3, 6, 1, 9, 9, 3], 4) == 83
	assert candidate([1,2,3,4,5,6,7,8,9,10], 1) == 55
	assert candidate([1,4,1,5,7,3,6,1,9,9,3], 4) == 83
def test_check():
	check(maxSumAfterPartitioning)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
