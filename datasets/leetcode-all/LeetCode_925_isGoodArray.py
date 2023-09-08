from typing import List


def isGoodArray(nums: List[int]) -> bool:
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
    return reduce(gcd, nums) == 1




### Unit tests below ###
def check(candidate):
	assert candidate([27,54,81,108]) == False
	assert candidate([17,34,51,68]) == False
	assert candidate([13,26,39,52]) == False
	assert candidate([18,36,54,72]) == False
	assert candidate(range(1, 10000)) == True
	assert candidate([29,58,87,116]) == False
	assert candidate([10,14,20,24,30,34,40,44,50,54]) == False
	assert candidate([24,48,72,96]) == False
	assert candidate([12,24,36,48,60,72,84,96,108,120]) == False
	assert candidate([12,15,18,21,24,27,30,33,36,39]) == False
	assert candidate([6,12,18,24,30,36,42,48,54,60]) == False
	assert candidate([11,22,33,44]) == False
	assert candidate([3,6]) == False
	assert candidate([29,6,10]) == True
	assert candidate([3,6,9,12]) == False
	assert candidate([34,68,102,136]) == False
	assert candidate([2,2,2,2,2,2,2]) == False
	assert candidate([22,44,66,88]) == False
	assert candidate([19,38,57,76]) == False
	assert candidate([1,2,3]) == True
	assert candidate([1000,1000,2,3]) == True
	assert candidate([25,50,75,100]) == False
	assert candidate([33,66,99,132,165,198,231,264,297,330]) == False
	assert candidate([21,42,63,84,1,3]) == True
	assert candidate([1000,1000,2,3,4,6]) == True
	assert candidate([12,5,7,23]) == True
	assert candidate([1]) == True
	assert candidate([10,20,30,40,50]) == False
	assert candidate([28,56,84,112]) == False
	assert candidate([30,60,90,120]) == False
	assert candidate([4,8,16]) == False
	assert candidate([9,18,27,36]) == False
	assert candidate([26,52,78,104]) == False
	assert candidate([21,42,63,84,2,6]) == True
	assert candidate([15,30,45,60]) == False
	assert candidate(
    [46,92,138,184,230,276,322,368,414,460,506,552,600]) == False
	assert candidate([12,24,36,48]) == False
	assert candidate([20,40,60,80]) == False
	assert candidate([20,30,40,48]) == False
	assert candidate([2]) == False
	assert candidate([7,14,21]) == False
	assert candidate([21,42,63,84]) == False
	assert candidate([16,32,48,64]) == False
	assert candidate([3,6,9,12,15,18,21,24,27,30]) == False
	assert candidate([14,28,42,56]) == False
	assert candidate([10,20,30,40]) == False
	assert candidate([23,46,69,92]) == False
def test_check():
	check(isGoodArray)
# Metadata Difficulty: Hard
# Metadata Topics: array,math,number-theory
# Metadata Coverage: 100
