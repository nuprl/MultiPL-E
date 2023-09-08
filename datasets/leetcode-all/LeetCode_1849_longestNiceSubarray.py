from typing import List


def longestNiceSubarray(nums: List[int]) -> int:
    """
    You are given an array nums consisting of positive integers.
    We call a subarray of nums nice if the bitwise AND of every pair of elements that are in different positions in the subarray is equal to 0.
    Return the length of the longest nice subarray.
    A subarray is a contiguous part of an array.
    Note that subarrays of length 1 are always considered nice.
 
    Example 1:

    Input: nums = [1,3,8,48,10]
    Output: 3
    Explanation: The longest nice subarray is [3,8,48]. This subarray satisfies the conditions:
    - 3 AND 8 = 0.
    - 3 AND 48 = 0.
    - 8 AND 48 = 0.
    It can be proven that no longer nice subarray can be obtained, so we return 3.
    Example 2:

    Input: nums = [3,1,5,11,13]
    Output: 1
    Explanation: The length of the longest nice subarray is 1. Any subarray of length 1 can be chosen.

 
    Constraints:

    1 <= nums.length <= 105
    1 <= nums[i] <= 109

    """
    ### Canonical solution below ###
    n = len(nums)
    max_len = 1
    for i in range(n):
        mask = 0
        for j in range(i, n):
            mask |= nums[j]
            if mask & (mask - 1) == 0:
                max_len = max(max_len, j - i + 1)
    return max_len




### Unit tests below ###
def check(candidate):
	assert candidate([3,1,5,11,13]) == 1
	assert candidate([5,4,3,2,1]) == 1
	assert candidate([2,3,5,7,11]) == 1
	assert candidate([1,0,0,3,1,5,11,13,8,48,10]) == 3
	assert candidate([3,1,4,1,5,9,2,6,5,3]) == 1
	assert candidate([10000000000000000000]) == 1
	assert candidate([1]) == 1
	assert candidate([1,1,1,1,1]) == 5
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8]) == 1
	assert candidate([2,2,2,2,2]) == 5
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 1
	assert candidate([1,2,3,4,5]) == 1
	assert candidate([1,3,6,10,15,21,28,36,45,55]) == 1
	assert candidate([1, 3, 5, 7, 9, 2, 6, 10, 14, 18, 22, 26, 30, 34, 38, 42]) == 1
	assert candidate([1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768,65536,131072,262144,524288,1048576]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 1
	assert candidate([1,3,5,7,9]) == 1
	assert candidate([1,3,5,7,9,11,13,15,17,19]) == 1
	assert candidate(range(1,1001)) == 1
	assert candidate([1, 3, 5, 7, 9, 2, 6, 10, 14, 18, 22, 26, 30, 34, 38, 42, 46, 50, 54, 58, 62]) == 1
	assert candidate([1, 2, 4, 8, 16, 32, 64]) == 1
def test_check():
	check(longestNiceSubarray)
# Metadata Difficulty: Medium
# Metadata Topics: array,bit-manipulation,sliding-window
# Metadata Coverage: 100
