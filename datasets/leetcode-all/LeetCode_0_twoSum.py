from typing import List


def twoSum(nums: List[int], target: int) -> List[int]:
    """
    Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
    You may assume that each input would have exactly one solution, and you may not use the same element twice.
    You can return the answer in any order.
 
    Example 1:

    Input: nums = [2,7,11,15], target = 9
    Output: [0,1]
    Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

    Example 2:

    Input: nums = [3,2,4], target = 6
    Output: [1,2]

    Example 3:

    Input: nums = [3,3], target = 6
    Output: [0,1]

 
    Constraints:

    2 <= nums.length <= 104
    -109 <= nums[i] <= 109
    -109 <= target <= 109
    Only one valid answer exists.

 
    Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?"""
    ### Canonical solution below ###
    map = {}
    for i, num in enumerate(nums):
        complement = target - num
        if complement in map:
            return [map[complement], i]
        map[num] = i
    return []




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3,4,5,6,7,8,9,10], 19) == [8,9]
	assert candidate([3,3], 6) == [0,1]
	assert candidate([-3,4,3,90], 0) == [0,2]
	assert candidate([3,2,4], 6) == [1,2]
	assert candidate([4,4], 8) == [0,1]
	assert candidate([3,2,95,4,-3], 92) == [2,4]
	assert candidate([-1,-2,-3,-4,-5], -8) == [2,4]
	assert candidate([3,2,3], 6) == [0,2]
	assert candidate([2,7,11,15], 9) == [0,1]
	assert candidate([0,0], 0) == [0,1]
	assert candidate([], 0) == []
	assert candidate([2,5,5,11], 10) == [1,2]
	assert candidate([1,613,4,3], 4) == [0,3]
	assert candidate([0,4,3,0], 0) == [0,3]
def test_check():
	check(twoSum)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table
# Metadata Coverage: 100
