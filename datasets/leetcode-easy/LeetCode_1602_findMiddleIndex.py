from typing import List


def findMiddleIndex(nums: List[int]) -> int:
    """
    Given a 0-indexed integer array nums, find the leftmost middleIndex (i.e., the smallest amongst all the possible ones).
    A middleIndex is an index where nums[0] + nums[1] + ... + nums[middleIndex-1] == nums[middleIndex+1] + nums[middleIndex+2] + ... + nums[nums.length-1].
    If middleIndex == 0, the left side sum is considered to be 0. Similarly, if middleIndex == nums.length - 1, the right side sum is considered to be 0.
    Return the leftmost middleIndex that satisfies the condition, or -1 if there is no such index.
 
    Example 1:

    Input: nums = [2,3,-1,8,4]
    Output: 3
    Explanation: The sum of the numbers before index 3 is: 2 + 3 + -1 = 4
    The sum of the numbers after index 3 is: 4 = 4

    Example 2:

    Input: nums = [1,-1,4]
    Output: 2
    Explanation: The sum of the numbers before index 2 is: 1 + -1 = 0
    The sum of the numbers after index 2 is: 0

    Example 3:

    Input: nums = [2,5]
    Output: -1
    Explanation: There is no valid middleIndex.

 
    Constraints:

    1 <= nums.length <= 100
    -1000 <= nums[i] <= 1000

 
    Note: This question is the same as 724: https://leetcode.com/problems/find-pivot-index/
    """
    ### Canonical solution below ###
    total_sum = sum(nums)

    left_sum = 0
    for i, num in enumerate(nums):
        total_sum -= num
        if left_sum == total_sum:
            return i
        left_sum += num

    return -1




### Unit tests below ###
def check(candidate):
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == -1
	assert candidate([3, 3, 3, 3]) == -1
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31,
     32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
     61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89,
     90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100]) == -1
	assert candidate([1, 2, 3]) == -1
	assert candidate(
    [10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170]) == -1
	assert candidate([1, 5, 2, 2]) == -1
	assert candidate([1, 2, 3, 4, 2, 3, 1]) == 3
	assert candidate([1, 2, 1, 2, 1, 2, 1, 2, 1]) == 4
	assert candidate([2, 5, 2]) == 1
	assert candidate([1, 7, 3, 6, 5, 6]) == 3
	assert candidate([1, 2, 3, 0, 3, 2, 1]) == 3
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]) == -1
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == -1
	assert candidate([]) == -1
	assert candidate([10, 10]) == -1
	assert candidate([1]) == 0
def test_check():
	check(findMiddleIndex)
# Metadata Difficulty: Easy
# Metadata Topics: array,prefix-sum
# Metadata Coverage: 100
