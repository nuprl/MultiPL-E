from typing import List


def findNumberOfLIS(nums: List[int]) -> int:
    """
    Given an integer array nums, return the number of longest increasing subsequences.
    Notice that the sequence has to be strictly increasing.
 
    Example 1:

    Input: nums = [1,3,5,4,7]
    Output: 2
    Explanation: The two longest increasing subsequences are [1, 3, 4, 7] and [1, 3, 5, 7].

    Example 2:

    Input: nums = [2,2,2,2,2]
    Output: 5
    Explanation: The length of the longest increasing subsequence is 1, and there are 5 increasing subsequences of length 1, so output 5.

 
    Constraints:

    1 <= nums.length <= 2000
    -106 <= nums[i] <= 106

    """
    ### Canonical solution below ###
    n = len(nums)
    maxLength = ans = 0
    length = [1] * n
    count = [1] * n

    for i in range(n):
        for j in range(i):
            if nums[i] > nums[j]:
                if length[i] == length[j] + 1:
                    count[i] += count[j]
                elif length[i] < length[j] + 1:
                    length[i] = length[j] + 1
                    count[i] = count[j]
        if maxLength == length[i]:
            ans += count[i]
        elif maxLength < length[i]:
            maxLength = length[i]
            ans = count[i]

    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,1,2,2,2,3,3,3]) == 27
	assert candidate([1]) == 1
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 1
	assert candidate([1, 2, 4, 3, 5, 4, 7]) == 3
	assert candidate(
    [3, 5, 6, 2, 5, 4, 19, 5, 6, 7, 12, 20, 13, 10, 14, 15, 2, 1, 1, 3, 11, 12, 13, 5, 6, 7, 11, 12, 13, 14, 15, 2, 3]) == 8
	assert candidate([10,9,2,5,3,7,101,18]) == 4
	assert candidate([1,2,4,3,5,4,7,2]) == 3
	assert candidate([10, 9, 2, 5, 3, 7, 101, 18]) == 4
	assert candidate([3,1,2]) == 1
	assert candidate([11,12,13,14,15,16,17,18,19,20]) == 1
	assert candidate([2,2,2,2,2]) == 5
	assert candidate([1,3,5,4,7]) == 2
	assert candidate([1,2,3,4,5]) == 1
	assert candidate([1, 2, 4, 3, 5, 4, 7, 2]) == 3
def test_check():
	check(findNumberOfLIS)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,binary-indexed-tree,segment-tree
# Metadata Coverage: 100
