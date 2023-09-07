from typing import List


def checkSubarraySum(nums: List[int], k: int) -> bool:
    """
    Given an integer array nums and an integer k, return true if nums has a good subarray or false otherwise.
    A good subarray is a subarray where:

    its length is at least two, and
    the sum of the elements of the subarray is a multiple of k.

    Note that:

    A subarray is a contiguous part of the array.
    An integer x is a multiple of k if there exists an integer n such that x = n * k. 0 is always a multiple of k.

 
    Example 1:

    Input: nums = [23,2,4,6,7], k = 6
    Output: true
    Explanation: [2, 4] is a continuous subarray of size 2 whose elements sum up to 6.

    Example 2:

    Input: nums = [23,2,6,4,7], k = 6
    Output: true
    Explanation: [23, 2, 6, 4, 7] is an continuous subarray of size 5 whose elements sum up to 42.
    42 is a multiple of 6 because 42 = 7 * 6 and 7 is an integer.

    Example 3:

    Input: nums = [23,2,6,4,7], k = 13
    Output: false

 
    Constraints:

    1 <= nums.length <= 105
    0 <= nums[i] <= 109
    0 <= sum(nums[i]) <= 231 - 1
    1 <= k <= 231 - 1

    """
    ### Canonical solution below ###
    n, sum_ = len(nums), 0
    mp = {0: -1}
    for i, num in enumerate(nums):
        sum_ += num
        if k != 0:
            sum_ %= k
        if sum_ in mp:
            if i - mp[sum_] > 1:
                return True
        else:
            mp[sum_] = i
    return False




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3,4], 5) == True
	assert candidate([10,20,30,40,50], 151) == False
	assert candidate([1,2,3,4,5], 15) == True
	assert candidate([1,1,1,1,1], 3) == True
	assert candidate([1,2,3,4,5], 11) == False
	assert candidate([10,20,30], 61) == False
	assert candidate([23,2,6,4,7], 6) == True
	assert candidate([1,2,3,4,5], 10) == True
	assert candidate([100,200,300], 600) == True
	assert candidate([1,1,1,1,1], 1) == True
	assert candidate([1,2,3,4,5], 5) == True
	assert candidate([10,20,30,40,50], 150) == True
	assert candidate([100,200,300,400,500], 750) == True
	assert candidate([1,1,1,1,1], 2) == True
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 15) == True
	assert candidate([10,20,30], 59) == False
	assert candidate([100,200,300,400,500], 900) == True
	assert candidate([1,2,3], 6) == True
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 2) == True
	assert candidate([2,3,5,7,11], 28) == True
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 10) == True
	assert candidate([1,1,1,1,1], 6) == False
	assert candidate([10,5,7,12,1,8], 10) == True
	assert candidate([2,3,5,7,11], 17) == True
	assert candidate([1,2,3,4,5], 1) == True
	assert candidate([23,2,6,4,7], 13) == False
	assert candidate([100,200,300], 1000) == False
	assert candidate([1,2,3,4,5], 6) == True
	assert candidate([1,1,1,1,1], 5) == True
	assert candidate([1,1,1,1,1], 4) == True
	assert candidate([23,2,4,6,7], 6) == True
	assert candidate([100,200,300], 700) == False
	assert candidate([100,200,300,400,500], 1500) == True
	assert candidate([100,200,300], 500) == True
	assert candidate([10,20,30], 60) == True
def test_check():
	check(checkSubarraySum)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,math,prefix-sum
# Metadata Coverage: 100
