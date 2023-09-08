from typing import List


def searchRange(nums: List[int], target: int) -> List[int]:
    """
    Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.
    If target is not found in the array, return [-1, -1].
    You must write an algorithm with O(log n) runtime complexity.
 
    Example 1:
    Input: nums = [5,7,7,8,8,10], target = 8
    Output: [3,4]
    Example 2:
    Input: nums = [5,7,7,8,8,10], target = 6
    Output: [-1,-1]
    Example 3:
    Input: nums = [], target = 0
    Output: [-1,-1]

 
    Constraints:

    0 <= nums.length <= 105
    -109 <= nums[i] <= 109
    nums is a non-decreasing array.
    -109 <= target <= 109

    """
    ### Canonical solution below ###
    start, end = -1, -1
    left, right = 0, len(nums) - 1

    while left <= right:
        mid = left + (right - left) // 2
        if nums[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
            if nums[mid] == target:
                start = mid

    left, right = 0, len(nums) - 1

    while left <= right:
        mid = left + (right - left) // 2
        if nums[mid] > target:
            right = mid - 1
        else:
            left = mid + 1
            if nums[mid] == target:
                end = mid

    return [start, end]




### Unit tests below ###
def check(candidate):
	assert candidate([], 1) == [-1,-1]
	assert candidate([1,2,3,4,5,6,7,8,9,10], 5) == [4,4]
	assert candidate([-1,-2,-3,-4,-5,-6,-7,-8,-9,-10], 0) == [-1,-1]
	assert candidate([0,0,0,0,0,0,0,0,0,0], 0) == [0,9]
	assert candidate([1,2,3,4,5,6,7,8,9,10], 6) == [5,5]
	assert candidate([10,10,10,10,10,10,10,10,10,10], 10) == [0,9]
	assert candidate([1], 0) == [-1,-1]
	assert candidate([-10,-9,-8,-7,-6,-5,-4,-3,-2,-1], -11) == [-1,-1]
	assert candidate([5,7,7,8,8,10], 8) == [3,4]
	assert candidate([1,2,3,4,5,6,7,8,9,10], -1) == [-1,-1]
	assert candidate([1,2,3,4,5,6,7,8,9,10], 8) == [7,7]
	assert candidate([-1,-2,-3,-4,-5,-6,-7,-8,-9,-10], -5) == [4,4]
	assert candidate([-9,-8,-7,-6,-5,-4,-3,-2,-1,0], -5) == [4,4]
	assert candidate([], -1) == [-1,-1]
	assert candidate([1,2,3,4,5,6,7,8,9,10], 7) == [6,6]
	assert candidate([1], -1) == [-1,-1]
	assert candidate([1,2,3,4,5,6,7,8,9,10], 4) == [3,3]
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1], 1) == [0,11]
	assert candidate([1], 1) == [0,0]
	assert candidate([1,2,3,4,5,6,7,8,9,10], 2) == [1,1]
	assert candidate([-1], -2) == [-1,-1]
	assert candidate([1,2,3,4,5,6,7,8,9,10], 11) == [-1,-1]
	assert candidate([-9,-8,-7,-6,-5,-4,-3,-2,-1,0], 0) == [9,9]
	assert candidate([-1,-2,-3,-4,-5,-6,-7,-8,-9,-10], -11) == [-1,-1]
	assert candidate([5,7,7,8,8,10], 6) == [-1,-1]
	assert candidate([], 0) == [-1,-1]
	assert candidate([1,2,3,4,5,6,7,8,9,10], 9) == [8,8]
	assert candidate([1,2,3,4,5,6,7,8,9,10], 3) == [2,2]
	assert candidate([1,2,3,4,5,6,7,8,9,10], 0) == [-1,-1]
	assert candidate([5,7,7,8,8,10], 10) == [5,5]
	assert candidate([5,7,7,8,8,10], 0) == [-1,-1]
	assert candidate([-10,-10,-10,-10,-10,-10,-10,-10,-10,-10], -10) == [0,9]
	assert candidate([1,2,3,4,5,6,7,8,9,10], 1) == [0,0]
	assert candidate([-1], -1) == [0,0]
	assert candidate([5,7,7,8,8,10], 5) == [0,0]
	assert candidate([5,7,7,8,8,10], 7) == [1,2]
	assert candidate([1,2,3,4,5,6,7,8,9,10], 10) == [9,9]
def test_check():
	check(searchRange)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search
# Metadata Coverage: 100
