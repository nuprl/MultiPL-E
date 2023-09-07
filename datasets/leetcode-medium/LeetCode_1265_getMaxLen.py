from typing import List


def getMaxLen(nums: List[int]) -> int:
    """
    Given an array of integers nums, find the maximum length of a subarray where the product of all its elements is positive.
    A subarray of an array is a consecutive sequence of zero or more values taken out of that array.
    Return the maximum length of a subarray with positive product.
 
    Example 1:

    Input: nums = [1,-2,-3,4]
    Output: 4
    Explanation: The array nums already has a positive product of 24.

    Example 2:

    Input: nums = [0,1,-2,-3,-4]
    Output: 3
    Explanation: The longest subarray with positive product is [1,-2,-3] which has a product of 6.
    Notice that we cannot include 0 in the subarray since that'll make the product 0 which is not positive.
    Example 3:

    Input: nums = [-1,-2,-3,0,1]
    Output: 2
    Explanation: The longest subarray with positive product is [-1,-2] or [-2,-3].

 
    Constraints:

    1 <= nums.length <= 105
    -109 <= nums[i] <= 109

    """
    ### Canonical solution below ###
    maxLength = currentLen = currentNegLen = 0

    for num in nums:
        if num > 0:
            currentLen += 1
            if currentNegLen > 0:
                currentNegLen += 1
        elif num < 0:
            currentLen, currentNegLen = currentNegLen, currentLen + 1
        else:
            currentLen = currentNegLen = 0
        maxLength = max(maxLength, currentLen)

    return maxLength




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 5, 6]) == 6
	assert candidate([1, 2, 0, 0, 5, 6]) == 2
	assert candidate(
    [-1, 0, 1, -2, -3, 0, 1]) == 2
	assert candidate([1, 2, 3, -4, 5, 6]) == 3
	assert candidate([-1, 0, 1]) == 1
	assert candidate([1, 2, 3, 4, 0, 5, 6]) == 4
	assert candidate([0, 0, 0, 0, 0, 0]) == 0
	assert candidate([0, 1, -2, 3, -4, 5]) == 4
	assert candidate(
    [0, 1, -2, -3, 0, 1, -2, -3, -4, 0, 1, -2, -3, 0, 1, -2, -3, -4, -5]) == 3
	assert candidate([1, -2, 3, 4, 5, 6]) == 4
def test_check():
	check(getMaxLen)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,greedy
# Metadata Coverage: 100
