from typing import List


def maximumProduct(nums: List[int]) -> int:
    """
    Given an integer array nums, find three numbers whose product is maximum and return the maximum product.
 
    Example 1:
    Input: nums = [1,2,3]
    Output: 6
    Example 2:
    Input: nums = [1,2,3,4]
    Output: 24
    Example 3:
    Input: nums = [-1,-2,-3]
    Output: -6

 
    Constraints:

    3 <= nums.length <= 104
    -1000 <= nums[i] <= 1000

    """
    ### Canonical solution below ###
    nums.sort()
    n = len(nums)
    return max(nums[0] * nums[1] * nums[-1], nums[-1] * nums[-2] * nums[-3])




### Unit tests below ###
def check(candidate):
	assert candidate([-1000, -1000, -1000, 1000]) == 1000000000
	assert candidate([-1000, -999, -998, 1000]) == 999000000
	assert candidate([-1, -2, -3, -4]) == -6
	assert candidate([-1000, -1000, -1000, -1000, 1000]) == 1000000000
	assert candidate([-1, -2, -3]) == -6
	assert candidate([-1000, -999, -998, 999, 1000]) == 999000000
	assert candidate([-1, -2, -3, -4, -5]) == -6
	assert candidate([-1, -2, -3, -4, -5, -6]) == -6
	assert candidate([0, 2, 3]) == 0
	assert candidate([-1000, 0, 1000]) == 0
	assert candidate(
    [-1000, -999, -998, -997, -996, -995, 995, 996, 997, 998, 999, 1000]) == 999000000
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 720
	assert candidate([-1000, -1000, -1000, -1000, -1000, 1000]) == 1000000000
	assert candidate([-1000, -999, 1000]) == 999000000
	assert candidate([-1000, -999, -998, -997, -996, -995, -994, -993, 993, 994, 995, 996, 997, 998, 999, 1000]) == 999000000
	assert candidate(
    [-1000, 1, 2, 3, 4, 5, 6, 1000, -1000]) == 1000000000
	assert candidate([1, 2, 3, 4]) == 24
	assert candidate([0, 0, 0, 0, 0, 0]) == 0
	assert candidate([1, 2, 3, 4, 5, 6]) == 120
	assert candidate([1, 2, 3]) == 6
	assert candidate(
    [-1000, -999, -998, -997, -996, -995, -994, 994, 995, 996, 997, 998, 999, 1000]) == 999000000
	assert candidate(
    [-1000, -999, -998, -997, -996, -995, -994, -993, -992, 992, 993, 994, 995, 996, 997, 998, 999, 1000]) == 999000000
	assert candidate([-1000, -1000, 1000]) == 1000000000
def test_check():
	check(maximumProduct)
# Metadata Difficulty: Easy
# Metadata Topics: array,math,sorting
# Metadata Coverage: 100
