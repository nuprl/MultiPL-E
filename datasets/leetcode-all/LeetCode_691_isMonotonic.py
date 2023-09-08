from typing import List


def isMonotonic(nums: List[int]) -> bool:
    """
    An array is monotonic if it is either monotone increasing or monotone decreasing.
    An array nums is monotone increasing if for all i <= j, nums[i] <= nums[j]. An array nums is monotone decreasing if for all i <= j, nums[i] >= nums[j].
    Given an integer array nums, return true if the given array is monotonic, or false otherwise.
 
    Example 1:

    Input: nums = [1,2,2,3]
    Output: true

    Example 2:

    Input: nums = [6,5,4,4]
    Output: true

    Example 3:

    Input: nums = [1,3,2]
    Output: false

 
    Constraints:

    1 <= nums.length <= 105
    -105 <= nums[i] <= 105

    """
    ### Canonical solution below ###
    increasing = decreasing = True
    for i in range(1, len(nums)):
        if nums[i] > nums[i - 1]:
            decreasing = False
        if nums[i] < nums[i - 1]:
            increasing = False
    return increasing or decreasing




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4]) == True
	assert candidate([1, 3, 2]) == False
	assert candidate([4, 3, 2, 1]) == True
	assert candidate([1, 2, 1, 2, 1, 2, 1, 2, 1, 2]) == False
	assert candidate([11, 10, 9, 10, 11, 10, 11]) == False
	assert candidate([1]) == True
	assert candidate([10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1, 2, 3, 4]) == False
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == True
	assert candidate([3, 1, 2, 4]) == False
	assert candidate([]) == True
	assert candidate([2, 2, 2, 2, 1, 2]) == False
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == False
	assert candidate(
    [1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10,
     10, 10]) == True
	assert candidate(
    [1, 2, 3, 4, 4, 4, 4, 3, 2, 1]) == False
	assert candidate([9, 10, 11, 10, 11]) == False
	assert candidate([10, 20, 30, 40, 50, 60, 70, 80, 90, 100]) == True
	assert candidate([10, 8, 6, 4, 2, 9, 7, 5, 3, 1]) == False
	assert candidate([-1, -1, -2, -2, -3, -3, -3, -4, -4, -5]) == True
	assert candidate([2, 2, 2]) == True
	assert candidate([2, 2, 2, 2, 3]) == True
	assert candidate([2, 2, 2, 2, 2, 2]) == True
	assert candidate(range(10, 0, -1)) == True
	assert candidate([2, 2, 2, 2, 2, 2, 2, 2, 2, 2]) == True
	assert candidate([2, 2, 2, 2]) == True
	assert candidate(
    [-5, -4, -3, -2, -1, 0, -1, -2, -3, -4, -5]) == False
	assert candidate(range(10)) == True
	assert candidate([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == True
	assert candidate([2, 2, 2, 2, 2]) == True
	assert candidate([1, 2, 3, 4, 5, 5, 4, 3, 2, 1]) == False
	assert candidate([1, 3, 2, 4, 5, 7, 6, 8, 9, 10]) == False
	assert candidate(
    [3, 3, 3, 3, 3, 3, 3, 3, 3, 3]) == True
	assert candidate([1, 1, 1, 1, 1]) == True
	assert candidate([1, 1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == True
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 7, 6]) == False
	assert candidate([11, 10, 9, 10, 11]) == False
	assert candidate([11, 10, 9, 9, 10, 11]) == False
	assert candidate([2, 3]) == True
	assert candidate(
    [9, 10, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == False
	assert candidate([1, 2, 3, 2, 1]) == False
	assert candidate([2, 2]) == True
	assert candidate([5, 4, 3, 2, 1, 2, 3, 4, 5]) == False
	assert candidate(
    [1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == False
def test_check():
	check(isMonotonic)
# Metadata Difficulty: Easy
# Metadata Topics: array
# Metadata Coverage: 100
