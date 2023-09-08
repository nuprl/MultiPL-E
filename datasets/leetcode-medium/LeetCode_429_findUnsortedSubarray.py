from typing import List


def findUnsortedSubarray(nums: List[int]) -> int:
    """
    Given an integer array nums, you need to find one continuous subarray such that if you only sort this subarray in non-decreasing order, then the whole array will be sorted in non-decreasing order.
    Return the shortest such subarray and output its length.
 
    Example 1:

    Input: nums = [2,6,4,8,10,9,15]
    Output: 5
    Explanation: You need to sort [6, 4, 8, 10, 9] in ascending order to make the whole array sorted in ascending order.

    Example 2:

    Input: nums = [1,2,3,4]
    Output: 0

    Example 3:

    Input: nums = [1]
    Output: 0

 
    Constraints:

    1 <= nums.length <= 104
    -105 <= nums[i] <= 105

 
    Follow up: Can you solve it in O(n) time complexity?"""
    ### Canonical solution below ###
    sorted_nums = sorted(nums)
    start, end = 0, len(nums) - 1
    while start < len(nums) and nums[start] == sorted_nums[start]:
        start += 1
    while end > start and nums[end] == sorted_nums[end]:
        end -= 1
    return end - start + 1




### Unit tests below ###
def check(candidate):
	assert candidate([10,1,2,3,4,5,6,7,8,9]) == 10
	assert candidate( [1,3,5,2,4] ) == 4
	assert candidate([9,8,7,6,5,4,3,2,1]) == 9
	assert candidate( [1,3,5,4,2] ) == 4
	assert candidate([1,2,3,4,5,6,7,8,9,11,10,12,13,14,15,16,17,18,19,20]) == 2
	assert candidate([3,2,1]) == 3
	assert candidate([2,6,4,8,10,9,15]) == 5
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,15,14,13]) == 3
	assert candidate([10,9,8,7,6,5,4,3,2,1]) == 10
	assert candidate([1,2,3,5,4,6,7,8,9,10]) == 2
	assert candidate([1]) == 0
	assert candidate([1,2,3,4,5,6,7,10,8,9]) == 3
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 0
	assert candidate( [1,2,4,3,5] ) == 2
	assert candidate([1,2,4,5,3,6,7,8,9]) == 3
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 0
	assert candidate([1,2,3,4]) == 0
	assert candidate( [1,3,2,2,2] ) == 4
	assert candidate( [3, 2, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == 3
def test_check():
	check(findUnsortedSubarray)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,stack,greedy,sorting,monotonic-stack
# Metadata Coverage: 100
