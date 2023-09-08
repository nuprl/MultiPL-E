from typing import List


def searchInsert(nums: List[int], target: int) -> int:
    """
    Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
    You must write an algorithm with O(log n) runtime complexity.
 
    Example 1:

    Input: nums = [1,3,5,6], target = 5
    Output: 2

    Example 2:

    Input: nums = [1,3,5,6], target = 2
    Output: 1

    Example 3:

    Input: nums = [1,3,5,6], target = 7
    Output: 4

 
    Constraints:

    1 <= nums.length <= 104
    -104 <= nums[i] <= 104
    nums contains distinct values sorted in ascending order.
    -104 <= target <= 104

    """
    ### Canonical solution below ###
    left, right = 0, len(nums) - 1
    while left <= right:
        mid = left + (right - left) // 2
        if nums[mid] == target:
            return mid
        if nums[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
    return left




### Unit tests below ###
def check(candidate):
	assert candidate([1,3], 4) == 2
	assert candidate([1,2,3,4,5], 2) == 1
	assert candidate([1,1,1,1,1], 0) == 0
	assert candidate([1,3,5,6], 2) == 1
	assert candidate([-100,-50,0,50,100], 111) == 5
	assert candidate([-100,-50,0,50,100], 101) == 5
	assert candidate([1,3,5,6], 7) == 4
	assert candidate([-10,-5,0,5,10], 11) == 5
	assert candidate([10,20,30,40,50], 60) == 5
	assert candidate([1,2,3,4,5], 1) == 0
	assert candidate([2,4,6,8,10], 11) == 5
	assert candidate([-10,-5,-1,0,1,5,6], 2) == 5
	assert candidate([1,1,1,1,1], 2) == 5
	assert candidate([10,20,30,40,50], 25) == 2
	assert candidate([2,4,6,8,10], 1) == 0
	assert candidate([2,4,6,8,10], 5) == 2
	assert candidate([-10,-5,0,5,10], -11) == 0
	assert candidate([1,3], 2) == 1
	assert candidate([1,3,5,6], 5) == 2
	assert candidate([1], 0) == 0
	assert candidate([-100,-50,0,50,100], 75) == 4
	assert candidate([1], 2) == 1
	assert candidate([100,200,300,400,500], 250) == 2
	assert candidate([1,3,5,7,9], 6) == 3
	assert candidate([1,3,5,6], 0) == 0
	assert candidate([100,200,300,400,500], 600) == 5
	assert candidate([-100,-50,0,50,100], -101) == 0
	assert candidate([], 1) == 0
	assert candidate([-5, 0, 3, 6, 12, 15], 10) == 4
def test_check():
	check(searchInsert)
# Metadata Difficulty: Easy
# Metadata Topics: array,binary-search
# Metadata Coverage: 100
