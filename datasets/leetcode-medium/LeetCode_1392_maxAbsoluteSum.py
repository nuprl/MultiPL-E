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
    max_sum, min_sum, max_so_far, min_so_far = 0, 0, 0, 0
    for num in nums:
        max_so_far = max(num, max_so_far + num)
        max_sum = max(max_sum, max_so_far)

        min_so_far = min(num, min_so_far + num)
        min_sum = min(min_sum, min_so_far)
    return max(max_sum, abs(min_sum))




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 5]) == 15
	assert candidate([-1, 0, 1]) == 1
	assert candidate([-1, -3, -5, -7, -9, 11, 13, 15, 17, 19]) == 75
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]) == 0
	assert candidate([-2, -3, 4, -1, -2, 1, 5, -3]) == 7
	assert candidate(
    [1, -3, 2, 3, -4, 5, -4, 6, -10, 11, -23, 7, 3, -17, -10, 4, 13, -10, 11, 16]
) == 40
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 55
	assert candidate(
    [31, -41, 59, 26, -53, 58, 97, -93, -23, 84]) == 187
	assert candidate([1, 3, 5, 7, 9, -11]) == 25
def test_check():
	check(maxAbsoluteSum)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
