from typing import List


def longestArithSeqLength(nums: List[int]) -> int:
    """
    Given an array nums of integers, return the length of the longest arithmetic subsequence in nums.
    Note that:

    A subsequence is an array that can be derived from another array by deleting some or no elements without changing the order of the remaining elements.
    A sequence seq is arithmetic if seq[i + 1] - seq[i] are all the same value (for 0 <= i < seq.length - 1).

 
    Example 1:

    Input: nums = [3,6,9,12]
    Output: 4
    Explanation:  The whole array is an arithmetic sequence with steps of length = 3.

    Example 2:

    Input: nums = [9,4,7,2,10]
    Output: 3
    Explanation:  The longest arithmetic subsequence is [4,7,10].

    Example 3:

    Input: nums = [20,1,15,3,10,5,8]
    Output: 4
    Explanation:  The longest arithmetic subsequence is [20,15,10,5].

 
    Constraints:

    2 <= nums.length <= 1000
    0 <= nums[i] <= 500

    """
    ### Canonical solution below ###
    n = len(nums)
    longest = 0
    dp = [{} for _ in range(n)]

    for i in range(n):
        for j in range(i):
            diff = nums[i] - nums[j]
            dp[i][diff] = dp[j].get(diff, 1) + 1
            longest = max(longest, dp[i][diff])

    return longest




### Unit tests below ###
def check(candidate):
	assert candidate([20, 1, 15, 3, 10, 5, 8]) == 4
	assert candidate([2, 4, 6, 8, 10, 12, 14, 16, 18, 20]) == 10
	assert candidate([3, 6, 9, 12]) == 4
	assert candidate([100, 200, 300, 400, 500, 600, 700, 800, 900, 1000]) == 10
	assert candidate([1, 3, 5, 7, 9, 11, 13, 15, 17, 19]) == 10
	assert candidate([83, 20, 17, 43, 52, 78, 68, 45]) == 2
	assert candidate([10, 20, 30, 40, 50, 60, 70, 80, 90]) == 9
	assert candidate([5, 10, 15, 20, 25, 30, 35, 40, 45, 50]) == 10
	assert candidate([2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]) == 2
	assert candidate(
    [12, 20, 21, 2, 14, 19, 18, 17, 4, 3, 23, 6, 7, 13, 22, 11, 15, 24]) == 4
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 10
	assert candidate(
    [3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41]) == 20
	assert candidate([9, 4, 7, 2, 10]) == 3
def test_check():
	check(longestArithSeqLength)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,binary-search,dynamic-programming
# Metadata Coverage: 100
