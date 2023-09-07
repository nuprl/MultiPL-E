from typing import List


def containsDuplicate(nums: List[int]) -> bool:
    """
    Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
 
    Example 1:
    Input: nums = [1,2,3,1]
    Output: true
    Example 2:
    Input: nums = [1,2,3,4]
    Output: false
    Example 3:
    Input: nums = [1,1,1,3,3,4,3,2,4,2]
    Output: true

 
    Constraints:

    1 <= nums.length <= 105
    -109 <= nums[i] <= 109

    """
    ### Canonical solution below ###
    return len(nums) != len(set(nums))




### Unit tests below ###
def check(candidate):
	assert candidate([1]) == False
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == False
	assert candidate([1, 2, 3, 4, 5, 1, 2, 3, 4, 5]) == True
	assert candidate([-1, -1, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5]) == True
	assert candidate([-1, -1, -1, -1, -1, -1, -1]) == True
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10]) == True
	assert candidate([-99, -99]) == True
	assert candidate([-1, -1]) == True
	assert candidate([-1, -1, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10]) == True
	assert candidate([100, 200, 300, 400, 500]) == False
	assert candidate([1, 1, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10]) == True
	assert candidate([-1000, -100, -10, -1, 0, 1, 10, 100, 1000]) == False
	assert candidate([100, 100, 200, 300, 400, 500, 500]) == True
	assert candidate([-22, 23, -44, 45, -66, 67, -88, 89, -100, 101]) == False
	assert candidate(
    [5, 5, 6, 4, 9, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23]) == True
	assert candidate([1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10]) == True
	assert candidate([-100, -100]) == True
	assert candidate([-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) == False
	assert candidate([10, 20, 30, 40, 50]) == False
	assert candidate([1, 1, 2, 2, 3, 3, 4, 4, 5, 5]) == True
	assert candidate([1, 2, 3, 1, 1]) == True
	assert candidate([1000, 2000, 3000, 4000, 5000]) == False
	assert candidate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]) == True
	assert candidate([10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1]) == True
	assert candidate([0, 0, 0]) == True
	assert candidate([]) == False
	assert candidate([10, 10, 20, 20, 30, 30, 40, 40, 50, 50]) == True
	assert candidate([1000, 2000, 3000, 4000, 4000]) == True
	assert candidate([-100, -200, -200, -400, -500]) == True
	assert candidate([-1000, -1000]) == True
	assert candidate([1, 2, 3, 1, 2, 3, 1, 2, 3]) == True
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == False
	assert candidate(
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == True
	assert candidate([1, 2, 3, 1]) == True
	assert candidate([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == False
	assert candidate(
    [-44, 5, 0, -10, -9, 4, 8, -9, 5, 3, 3, -10, 0, 0, 8, 1, -10, -10, -10, 5, 0, -10, 8, 10, 5, 6, -10, 4, 6, 7, 4, -3, 8, 8, 7]) == True
	assert candidate([1, 2, 3, 4]) == False
	assert candidate([1, 1, 2, 2, 3, 3]) == True
	assert candidate([1, -1, 1, -1, 3, 3, -2, -2, 4, 4, 5, 5]) == True
	assert candidate([-100, -200, -300, -400, -500, -500]) == True
	assert candidate(
    [5, 6, 2, 7, 8, 1, 3, 6, 2, 4, 9, 8, 9, 7, 4, 5, 7]) == True
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == True
	assert candidate([0, 0]) == True
	assert candidate([1, 1, 1, 1, 1, 2, 2, 2, 2, 2]) == True
	assert candidate([-1000, -1000, 0, 0]) == True
	assert candidate([200, 200]) == True
	assert candidate(
    [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3]) == True
	assert candidate([-10, -20, -30, -40, -50]) == False
	assert candidate([100, 100]) == True
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == False
def test_check():
	check(containsDuplicate)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,sorting
# Metadata Coverage: 100
