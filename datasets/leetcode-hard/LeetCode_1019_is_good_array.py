from typing import List


def is_good_array(nums: List[int]) -> bool:
    """
    Given an array nums of positive integers. Your task is to select some subset of nums, multiply each element by an integer and add all these numbers. The array is said to be good if you can obtain a sum of 1 from the array by any possible subset and multiplicand.
    Return True if the array is good otherwise return False.
 
    Example 1:

    Input: nums = [12,5,7,23]
    Output: true
    Explanation: Pick numbers 5 and 7.
    5*3 + 7*(-2) = 1

    Example 2:

    Input: nums = [29,6,10]
    Output: true
    Explanation: Pick numbers 29, 6 and 10.
    29*1 + 6*(-3) + 10*(-1) = 1

    Example 3:

    Input: nums = [3,6]
    Output: false

 
    Constraints:

    1 <= nums.length <= 10^5
    1 <= nums[i] <= 10^9

    """
    ### Canonical solution below ###
    from math import gcd
    from functools import reduce
    gcd_value = reduce(gcd, nums)
    return gcd_value == 1




### Unit tests below ###
def check(candidate):
	assert candidate([3, 5, 7, 11, 13, 17]) == True
	assert candidate([1, 3, 5, 7, 9, 11, 13, 15, 17]) == True
	assert candidate([2, 2, 2, 2]) == False
	assert candidate(
    [22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50]) == False
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1]) == True
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == True
	assert candidate([2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]) == False
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1]) == True
	assert candidate([3, 5, 7, 11]) == True
	assert candidate([1, 1, 1, 1, 1, 1, 1]) == True
	assert candidate([2, 4, 6, 8, 10, 12]) == False
	assert candidate(
    [20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50]) == False
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]) == True
	assert candidate([1, 3, 5, 7, 9]) == True
	assert candidate([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) == False
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == True
	assert candidate([1, 1, 1, 1]) == True
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == True
	assert candidate([3, 5, 7, 11, 13]) == True
	assert candidate([2, 2, 2, 2, 2, 2]) == False
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == True
	assert candidate([1, 1, 1, 1, 1]) == True
	assert candidate([2, 2, 2, 2, 2]) == False
	assert candidate([3, 6, 9, 12, 15, 18]) == False
	assert candidate([10, 20, 30, 40]) == False
	assert candidate([2, 3, 5, 7]) == True
	assert candidate([1, 3, 5, 7, 9, 11]) == True
	assert candidate([2, 4, 6, 8, 10, 12, 14]) == False
	assert candidate([1, 2, 3, 4, 5]) == True
	assert candidate([1, 5, 7, 11]) == True
	assert candidate([3, 6]) == False
	assert candidate([5, 10, 15, 20]) == False
	assert candidate([1, 3, 5, 7, 9, 11, 13, 15, 17, 19]) == True
	assert candidate([2, 4, 6, 8, 10]) == False
	assert candidate([2, 4, 6, 8]) == False
	assert candidate([1, 2, 3, 4]) == True
	assert candidate([1, 1, 1, 1, 1, 1]) == True
	assert candidate([13, 26, 39, 52]) == False
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == True
	assert candidate(
    [12, 5, 7, 23]) == True, "This was a special case where 1 was obtained only after multiplying ALL the numbers"
	assert candidate([2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == True
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == True
def test_check():
	check(is_good_array)
# Metadata Difficulty: Hard
# Metadata Topics: array,math,number-theory
# Metadata Coverage: 100
