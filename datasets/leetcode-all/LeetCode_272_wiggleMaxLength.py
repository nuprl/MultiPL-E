from typing import List


def wiggleMaxLength(nums: List[int]) -> int:
    """
    A wiggle sequence is a sequence where the differences between successive numbers strictly alternate between positive and negative. The first difference (if one exists) may be either positive or negative. A sequence with one element and a sequence with two non-equal elements are trivially wiggle sequences.

    For example, [1, 7, 4, 9, 2, 5] is a wiggle sequence because the differences (6, -3, 5, -7, 3) alternate between positive and negative.
    In contrast, [1, 4, 7, 2, 5] and [1, 7, 4, 5, 5] are not wiggle sequences. The first is not because its first two differences are positive, and the second is not because its last difference is zero.

    A subsequence is obtained by deleting some elements (possibly zero) from the original sequence, leaving the remaining elements in their original order.
    Given an integer array nums, return the length of the longest wiggle subsequence of nums.
 
    Example 1:

    Input: nums = [1,7,4,9,2,5]
    Output: 6
    Explanation: The entire sequence is a wiggle sequence with differences (6, -3, 5, -7, 3).

    Example 2:

    Input: nums = [1,17,5,10,13,15,10,5,16,8]
    Output: 7
    Explanation: There are several subsequences that achieve this length.
    One is [1, 17, 10, 13, 10, 16, 8] with differences (16, -7, 3, -3, 6, -8).

    Example 3:

    Input: nums = [1,2,3,4,5,6,7,8,9]
    Output: 2

 
    Constraints:

    1 <= nums.length <= 1000
    0 <= nums[i] <= 1000

 
    Follow up: Could you solve this in O(n) time?
    """
    ### Canonical solution below ###
    if len(nums) < 2:
        return len(nums)

    up, down = 1, 1
    for i in range(1, len(nums)):
        if nums[i] > nums[i - 1]:
            up = down + 1
        elif nums[i] < nums[i - 1]:
            down = up + 1
    return max(up, down)




### Unit tests below ###
def check(candidate):
	assert candidate([0, 1000, 1000, 0, 1000, 0, 1000, 0, 1000]) == 8
	assert candidate([1, 2]) == 2
	assert candidate([4,5,6,7,8,9,10,11,12,13,14,15]) == 2
	assert candidate([1]) == 1
	assert candidate([1,7,4,9,2,5]) == 6
	assert candidate([0, 1000, 0, 1000, 0, 1000, 0, 1000, 0, 1000]) == 10
	assert candidate([9,8,7,6,5,4,3,2,1]) == 2
	assert candidate([1, 100, 100]) == 2
	assert candidate([1,17,5,10,13,15,10,5,16,8]) == 7
	assert candidate([1, 17, 5, 10, 13, 15, 10, 5, 16, 8]) == 7
	assert candidate([15,14,13,12,11,10,9,8,7,6,5,4]) == 2
	assert candidate([1, 17, 5, 10, 13, 15, 10, 5, 16, 8, 19, 20]) == 8
	assert candidate([5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5]) == 2
	assert candidate([1,1,1,1,1,1,1,1,1]) == 1
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9]) == 2
	assert candidate([1,2,3,4,5,6,7,8,9]) == 2
	assert candidate([100, 2, 3, 4, 100, 100]) == 3
	assert candidate([1, 1, 2, 2, 3, 3, 4, 4, 5, 5]) == 2
	assert candidate([23,21,19,17,15,13,11,9,7,5,3,1]) == 2
	assert candidate([]) == 0
	assert candidate([2, 1]) == 2
	assert candidate([2, 3, 4, 5, 6, 7, 8, 9]) == 2
	assert candidate([1,3,5,7,9,11,13,15,17,19,21,23]) == 2
def test_check():
	check(wiggleMaxLength)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,greedy
# Metadata Coverage: 100
