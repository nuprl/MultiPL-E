from typing import List


def longestSubsequence(arr: List[int], difference: int) -> int:
    """
    Given an integer array arr and an integer difference, return the length of the longest subsequence in arr which is an arithmetic sequence such that the difference between adjacent elements in the subsequence equals difference.
    A subsequence is a sequence that can be derived from arr by deleting some or no elements without changing the order of the remaining elements.
 
    Example 1:

    Input: arr = [1,2,3,4], difference = 1
    Output: 4
    Explanation: The longest arithmetic subsequence is [1,2,3,4].
    Example 2:

    Input: arr = [1,3,5,7], difference = 1
    Output: 1
    Explanation: The longest arithmetic subsequence is any single element.

    Example 3:

    Input: arr = [1,5,7,8,5,3,4,2,1], difference = -2
    Output: 4
    Explanation: The longest arithmetic subsequence is [7,5,3,1].

 
    Constraints:

    1 <= arr.length <= 105
    -104 <= arr[i], difference <= 104

    """
    ### Canonical solution below ###
    dp = {}
    maxLength = 0
    for num in arr:
        dp[num] = dp.get(num - difference, 0) + 1
        maxLength = max(maxLength, dp[num])
    return maxLength




### Unit tests below ###
def check(candidate):
	assert candidate(range(10000), 5) == 2000
	assert candidate([], 20) == 0
	assert candidate([1,3,5,7,9], 2) == 5
	assert candidate(range(10000), 4) == 2500
	assert candidate([10,20,30,40,50,60,70,80,90,100], 10) == 10
	assert candidate([3,6,9,12,15], 3) == 5
	assert candidate([10,20,30,40,50,60,70,80,90], 10) == 9
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], 0) == 1
	assert candidate([5,4,3,2,1], -1) == 5
	assert candidate([1,2,4,8,16,32,64,128,256,512], 2) == 2
	assert candidate([1], 1) == 1
	assert candidate([9,7,5,3,1], -2) == 5
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], 4) == 4
	assert candidate(range(10000), 10) == 1000
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], 1) == 15
	assert candidate([10,7,4,1,-2,-5], -3) == 6
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1) == 10
	assert candidate(range(10000), 8) == 1250
	assert candidate([1,2,3,4,5], 20) == 1
	assert candidate([1,2,3,4,5], 1) == 5
	assert candidate(range(10000), 2) == 5000
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 0) == 15
	assert candidate([1,3,9,27,81,243,729], 3) == 1
	assert candidate([2,3,1,5,4], 2) == 2
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], 3) == 5
	assert candidate([1,2,3,4,5], -1) == 1
	assert candidate([-1,2,-3,4,5,-6,7,8,-9,10], 5) == 2
	assert candidate([2,2,2,2,2], 0) == 5
	assert candidate([1,3,9,27,81,243,729,2187,6561], 3) == 1
def test_check():
	check(longestSubsequence)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,dynamic-programming
# Metadata Coverage: 100
