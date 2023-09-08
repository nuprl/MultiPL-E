from typing import List


def maxAbsoluteSum(nums: List[int]) -> int:
    """
    You are given an integer array nums. The absolute sum of a subarray [numsl, numsl+1, ..., numsr-1, numsr] is abs(numsl + numsl+1 + ... + numsr-1 + numsr).
    Return the maximum absolute sum of any (possibly empty) subarray of nums.
    Note that abs(x) is defined as follows:

    If x is a negative integer, then abs(x) = -x.
    If x is a non-negative integer, then abs(x) = x.

 
    Example 1:

    Input: nums = [1,-3,2,3,-4]
    Output: 5
    Explanation: The subarray [2,3] has absolute sum = abs(2+3) = abs(5) = 5.

    Example 2:

    Input: nums = [2,-5,1,-4,3,-2]
    Output: 8
    Explanation: The subarray [-5,1,-4] has absolute sum = abs(-5+1-4) = abs(-8) = 8.

 
    Constraints:

    1 <= nums.length <= 105
    -104 <= nums[i] <= 104

    """
    ### Canonical solution below ###
    max_sum = max_end = min_sum = min_end = 0
    for num in nums:
        max_end = max(max_end + num, num)
        min_end = min(min_end + num, num)
        max_sum = max(max_sum, max_end)
        min_sum = min(min_sum, min_end)
    return max(max_sum, -min_sum)




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,1,1,1]) == 5
	assert candidate([1,0,-1]) == 1
	assert candidate([9,8,7,6,-10,5,4,3,2,1]) == 35
	assert candidate([2,-5,1,-4,3,-2]) == 8
	assert candidate(range(105)) == sum(range(105))
	assert candidate([-1,0,1]) == 1
	assert candidate([1,-3,2,3,-4]) == 5
	assert candidate([1,2,3,4,-10,5,6,7,8,9]) == 35
	assert candidate([0,0,0,0,0]) == 0
	assert candidate([-10,20,-30,40,50]) == 90
	assert candidate([1,2,3,4,5]) == 15
def test_check():
	check(maxAbsoluteSum)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
