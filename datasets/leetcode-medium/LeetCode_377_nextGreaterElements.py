from typing import List


def nextGreaterElements(nums: List[int]) -> List[int]:
    """
    Given a circular integer array nums (i.e., the next element of nums[nums.length - 1] is nums[0]), return the next greater number for every element in nums.
    The next greater number of a number x is the first greater number to its traversing-order next in the array, which means you could search circularly to find its next greater number. If it doesn't exist, return -1 for this number.
 
    Example 1:

    Input: nums = [1,2,1]
    Output: [2,-1,2]
    Explanation: The first 1's next greater number is 2; 
    The number 2 can't find next greater number. 
    The second 1's next greater number needs to search circularly, which is also 2.

    Example 2:

    Input: nums = [1,2,3,4,3]
    Output: [2,3,4,-1,4]

 
    Constraints:

    1 <= nums.length <= 104
    -109 <= nums[i] <= 109

    """
    ### Canonical solution below ###
    result = [-1] * len(nums)
    stack = []

    for i in range(len(nums) * 2):
        index = i % len(nums)
        while stack and nums[stack[-1]] < nums[index]:
            result[stack.pop()] = nums[index]
        if i < len(nums):
            stack.append(index)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([2,2,1,1,1]) == [-1,-1,2,2,2]
	assert candidate([9,8,7,6,5,4,3,2,1]) == [-1,9,9,9,9,9,9,9,9]
	assert candidate([1,2,3,4,3]) == [2,3,4,-1,4]
	assert candidate([1]) == [-1]
	assert candidate(
    [9,8,7,6,5,4,3,2,1,0]) == [-1,9,9,9,9,9,9,9,9,9]
	assert candidate([1,1,2,2,3,3,4,4,5,5]) == [2,2,3,3,4,4,5,5,-1,-1]
	assert candidate([1,3,2,4,6,5,7,9,8]) == [3,4,4,6,7,7,9,-1,9]
	assert candidate([1,1,2,2,3,3,4,4,5,5,6,6]) == [2,2,3,3,4,4,5,5,6,6,-1,-1]
	assert candidate([1,1,2,2,3,3,4,4,5,5,6,6,7,7]) == [2,2,3,3,4,4,5,5,6,6,7,7,-1,-1]
	assert candidate([1,1,1,2,2]) == [2,2,2,-1,-1]
	assert candidate([1,2,3,4,5,6,7,8,9]) == [2,3,4,5,6,7,8,9,-1]
	assert candidate([1,1,2,2,3,3]) == [2, 2, 3, 3, -1, -1]
	assert candidate([1,2,1]) == [2, -1, 2]
	assert candidate([5,4,3,2,1]) == [-1,5,5,5,5]
	assert candidate(range(5, 0, -1)) == [-1,5,5,5,5]
	assert candidate(range(9, 0, -1)) == [-1,9,9,9,9,9,9,9,9]
	assert candidate([2,2,2,2,2]) == [-1,-1,-1,-1,-1]
	assert candidate([1,2,1]) == [2,-1,2]
	assert candidate([1,2,3,4,3]) == [2, 3, 4, -1, 4]
def test_check():
	check(nextGreaterElements)
# Metadata Difficulty: Medium
# Metadata Topics: array,stack,monotonic-stack
# Metadata Coverage: 100
