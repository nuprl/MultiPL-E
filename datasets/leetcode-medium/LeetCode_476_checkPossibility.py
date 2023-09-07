from typing import List


def checkPossibility(nums: List[int]) -> bool:
    """
    Given an array nums with n integers, your task is to check if it could become non-decreasing by modifying at most one element.
    We define an array is non-decreasing if nums[i] <= nums[i + 1] holds for every i (0-based) such that (0 <= i <= n - 2).
 
    Example 1:

    Input: nums = [4,2,3]
    Output: true
    Explanation: You could modify the first 4 to 1 to get a non-decreasing array.

    Example 2:

    Input: nums = [4,2,1]
    Output: false
    Explanation: You cannot get a non-decreasing array by modifying at most one element.

 
    Constraints:

    n == nums.length
    1 <= n <= 104
    -105 <= nums[i] <= 105

    """
    ### Canonical solution below ###
    cnt = 0
    for i in range(1, len(nums)):
        if nums[i] < nums[i - 1]:
            cnt += 1
            if i == 1 or nums[i] >= nums[i - 2]:
                nums[i-1] = nums[i]
            else:
                nums[i] = nums[i - 1]
            if cnt > 1:
                return False
    return True




### Unit tests below ###
def check(candidate):
	assert candidate([3,4,2,3]) == False
	assert candidate([-1,-3,-5]) == False
	assert candidate([4,2,3,4,4,5]) == True
	assert candidate([3,4,2,5]) == True
	assert candidate([0,0,0,0,0]) == True
	assert candidate([-4,-6,-1,0,0,4,3,2,6,5,3,4,7]) == False
	assert candidate([1,2,3]) == True
	assert candidate( [5,1,3,2,5]) == False
	assert candidate([-5,-3,-1,0,0,3,2,2,3,1]) == False
	assert candidate([-1,4,2,1]) == False
	assert candidate([1,5,4,5]) == True
	assert candidate( [1,3,2,3,4,2]) == False
	assert candidate([-1,4,2]) == True
	assert candidate( [8,3,6,2,5,7,6,4,6]) == False
	assert candidate([1,3,2]) == True
	assert candidate([4,2,3,3,5]) == True
	assert candidate(
    [2,1,2,4,3,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26]) == False
	assert candidate([4,3,3,4]) == True
	assert candidate(
    [1,2,3,4,3,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26]) == True
	assert candidate([4,2,2]) == True
	assert candidate([1,3,2,3,2,5]) == False
	assert candidate([-5,-3,-1,0,0,-3,2,2,3,1]) == False
	assert candidate([3,3,0,3]) == True
	assert candidate([3,2,4,1,2,3]) == False
	assert candidate([-5,-3,-1]) == True
	assert candidate([4,2,3,3,4,5]) == True
	assert candidate([1,2,4,5,3,6]) == True
	assert candidate([1,5,4,6,7]) == True
	assert candidate( [1,3,2,3,2]) == False
	assert candidate(
    [1,2,3,4,3,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,23]) == False
	assert candidate([1,3,2,2,3]) == True
	assert candidate([1,3,2,4,2]) == False
	assert candidate([4,2,3]) == True
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == True
	assert candidate([1,2,3,4,5]) == True
	assert candidate([1,3,2,4]) == True
	assert candidate([4,2,3,3,4]) == True
	assert candidate([5,7,1,8]) == True
	assert candidate([1,2,3,2,1]) == False
	assert candidate([1,2,4,5,3]) == True
	assert candidate([10,5,7]) == True
	assert candidate([1,1,1,1,1]) == True
	assert candidate([3,4,2,3,3,2,4]) == False
	assert candidate([4,2,1]) == False
	assert candidate([3,2,1]) == False
	assert candidate([5,4,3,2,1]) == False
	assert candidate( [1,5,3,4,3]) == False
	assert candidate([1,2,3,5,4]) == True
	assert candidate([2,3,3,2,4]) == True
	assert candidate([3,3,2,2,3]) == False
def test_check():
	check(checkPossibility)
# Metadata Difficulty: Medium
# Metadata Topics: array
# Metadata Coverage: 100
