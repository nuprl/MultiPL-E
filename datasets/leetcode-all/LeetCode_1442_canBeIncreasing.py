from typing import List


def canBeIncreasing(nums: List[int]) -> bool:
    """
    Given a 0-indexed integer array nums, return true if it can be made strictly increasing after removing exactly one element, or false otherwise. If the array is already strictly increasing, return true.
    The array nums is strictly increasing if nums[i - 1] < nums[i] for each index (1 <= i < nums.length).
 
    Example 1:

    Input: nums = [1,2,10,5,7]
    Output: true
    Explanation: By removing 10 at index 2 from nums, it becomes [1,2,5,7].
    [1,2,5,7] is strictly increasing, so return true.

    Example 2:

    Input: nums = [2,3,1,2]
    Output: false
    Explanation:
    [3,1,2] is the result of removing the element at index 0.
    [2,1,2] is the result of removing the element at index 1.
    [2,3,2] is the result of removing the element at index 2.
    [2,3,1] is the result of removing the element at index 3.
    No resulting array is strictly increasing, so return false.
    Example 3:

    Input: nums = [1,1,1]
    Output: false
    Explanation: The result of removing any element is [1,1].
    [1,1] is not strictly increasing, so return false.

 
    Constraints:

    2 <= nums.length <= 1000
    1 <= nums[i] <= 1000

    """
    ### Canonical solution below ###
    count = 0
    for i in range(1, len(nums)):
        if nums[i - 1] >= nums[i]:
            count += 1
            if count > 1:
                return False
            if i > 1 and nums[i - 2] >= nums[i] and i < len(nums) - 1 and nums[i - 1] >= nums[i + 1]:
                return False
    return True




### Unit tests below ###
def check(candidate):
	assert candidate([3,1,3,2,5,4,6,7,8,9,10]) == False
	assert candidate([1,2,3,4,5]) == True
	assert candidate([5,4,3,2,1]) == False
	assert candidate([1,2,3,4,5,4]) == True
	assert candidate([2,1,3]) == True
	assert candidate([1,2,3,4,5,7]) == True
	assert candidate([1,2,10,5,7]) == True
	assert candidate([1,3,2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,20,19]) == False
	assert candidate([5,6,1,2,3,4]) == False
	assert candidate([2,3,1,2]) == False
	assert candidate([10,11,12,13,14,15]) == True
	assert candidate([1,3,2,4,4,4,5,6,7,8,9,10]) == False
	assert candidate([1,1,3]) == True
	assert candidate([1,2,3,5,4,6]) == True
	assert candidate([1,3,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == True
	assert candidate([1,3,2]) == True
	assert candidate([1,3,2,5,4,6,7,8,9,10]) == False
	assert candidate([100,50,25,12,6]) == False
	assert candidate([1,3,2,5,4,7,6,8,9,10]) == False
	assert candidate([1,3,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,21,20]) == False
	assert candidate([1,2,3,2]) == True
	assert candidate([21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]) == False
	assert candidate([1,2,3,4,5,10]) == True
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]) == True
	assert candidate([100,200,300,400,500]) == True
	assert candidate([1,1,1]) == False
	assert candidate([1,2,3,4,5,6]) == True
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,20,19]) == True
	assert candidate([3,5,67,98,100]) == True
	assert candidate([1,3,2,4,5,6,7,8,9,10]) == True
	assert candidate([1,2,3,4,5,5]) == True
	assert candidate([1,3,2,4]) == True
	assert candidate([1,3,2,4,4,5,6,7,8,9,10]) == False
	assert candidate([1,2,1]) == True
	assert candidate([20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]) == False
	assert candidate([1,5,3,4,2]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == True
	assert candidate([2,3,1]) == True
def test_check():
	check(canBeIncreasing)
# Metadata Difficulty: Easy
# Metadata Topics: array
# Metadata Coverage: 100
