from typing import List


def singleNonDuplicate(nums: List[int]) -> int:
    """
    You are given a sorted array consisting of only integers where every element appears exactly twice, except for one element which appears exactly once.
    Return the single element that appears only once.
    Your solution must run in O(log n) time and O(1) space.
 
    Example 1:
    Input: nums = [1,1,2,3,3,4,4,8,8]
    Output: 2
    Example 2:
    Input: nums = [3,3,7,7,10,11,11]
    Output: 10

 
    Constraints:

    1 <= nums.length <= 105
    0 <= nums[i] <= 105

    """
    ### Canonical solution below ###
    low, high = 0, len(nums) - 1
    while low < high:
        mid = low + (high - low) // 2
        if mid % 2 == 1:
            mid -= 1
        if nums[mid] == nums[mid + 1]:
            low = mid + 2
        else:
            high = mid
    return nums[low]




### Unit tests below ###
def check(candidate):
	assert candidate([0,0,1]) == 1
	assert candidate([1,1,2,2,3,3,4,4,5,5,6,6,7,7,8]) == 8
	assert candidate([1,2,2]) == 1
	assert candidate([1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11]) == 11
	assert candidate([1,1,2,2,3,3,4]) == 4
	assert candidate([1,1,2,2,3,4,4]) == 3
	assert candidate([0]) == 0
	assert candidate([1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10]) == 10
	assert candidate([1,1,2,2,3,3,4,4,5]) == 5
	assert candidate(
    [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7]) == 7
	assert candidate(
    [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10]) == 10
	assert candidate([1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14]) == 14
	assert candidate([0,0,1,1,2,2,3]) == 3
	assert candidate([1, 1, 2, 2, 3, 3, 4]) == 4
	assert candidate(
    [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9]) == 9
	assert candidate([3,3,7,7,10,11,11]) == 10
	assert candidate([1]) == 1
	assert candidate([0,0,1,1,2,2,3,3,4,4,5]) == 5
	assert candidate([1, 1, 2, 2, 3, 3, 4, 4, 5]) == 5
	assert candidate([1,1,2,2,3,3,4,4,5,5,6,6,7]) == 7
	assert candidate([1,1,2,2,3,3,4,4,5,5,6]) == 6
	assert candidate([0,0,1,1,2]) == 2
	assert candidate([2,2,3]) == 3
	assert candidate([1,1,2,3,3,4,4,8,8]) == 2
	assert candidate([1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9]) == 9
def test_check():
	check(singleNonDuplicate)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search
# Metadata Coverage: 100
