from typing import List


def smallest_divisor(nums: List[int], threshold: int) -> int:
    """
    Given an array of integers nums and an integer threshold, we will choose a positive integer divisor, divide all the array by it, and sum the division's result. Find the smallest divisor such that the result mentioned above is less than or equal to threshold.
    Each result of the division is rounded to the nearest integer greater than or equal to that element. (For example: 7/3 = 3 and 10/2 = 5).
    The test cases are generated so that there will be an answer.
 
    Example 1:

    Input: nums = [1,2,5,9], threshold = 6
    Output: 5
    Explanation: We can get a sum to 17 (1+2+5+9) if the divisor is 1. 
    If the divisor is 4 we can get a sum of 7 (1+1+2+3) and if the divisor is 5 the sum will be 5 (1+1+1+2). 

    Example 2:

    Input: nums = [44,22,33,11,1], threshold = 5
    Output: 44

 
    Constraints:

    1 <= nums.length <= 5 * 104
    1 <= nums[i] <= 106
    nums.length <= threshold <= 106

    """
    ### Canonical solution below ###
    import math
    left, right = 1, 10**6
    while left < right:
        mid = (left + right) // 2
        total = sum(math.ceil(n / mid) for n in nums)
        if total > threshold:
            left = mid + 1
        else:
            right = mid
    return left




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 5, 9], 6) == 5
	assert candidate(
    [44,22,33,11,1],
    5) == 44
	assert candidate([44, 22, 33, 11, 1], 5) == 44
	assert candidate([2,3,5,7,11], 11) == 3
	assert candidate([1,2,5,9], 6) == 5
	assert candidate(
    [2,3,5,7,11],
    11) == 3
	assert candidate([999999,999999,999999,999999,999999], 5) == 999999
	assert candidate(
    [44, 22, 33, 11, 1],
    5) == 44
	assert candidate([1000000, 1000000, 1000000, 1000000, 1000000], 5) == 1000000
	assert candidate(
    [2, 3, 5, 7, 11],
    11) == 3
	assert candidate([1], 1) == 1
	assert candidate([999999, 999999, 999999, 999999, 999999], 5) == 999999
	assert candidate([2, 3, 5, 7, 11], 11) == 3
	assert candidate(   [44,22,33,11,1], 5) == 44
	assert candidate([1000000,1000000,1000000,1000000,1000000], 5) == 1000000
def test_check():
	check(smallest_divisor)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search
# Metadata Coverage: 100
