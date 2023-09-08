from typing import List


def maxProductDifference(nums: List[int]) -> int:
    """
    The product difference between two pairs (a, b) and (c, d) is defined as (a * b) - (c * d).

    For example, the product difference between (5, 6) and (2, 7) is (5 * 6) - (2 * 7) = 16.

    Given an integer array nums, choose four distinct indices w, x, y, and z such that the product difference between pairs (nums[w], nums[x]) and (nums[y], nums[z]) is maximized.
    Return the maximum such product difference.
 
    Example 1:

    Input: nums = [5,6,2,7,4]
    Output: 34
    Explanation: We can choose indices 1 and 3 for the first pair (6, 7) and indices 2 and 4 for the second pair (2, 4).
    The product difference is (6 * 7) - (2 * 4) = 34.

    Example 2:

    Input: nums = [4,2,5,9,7,4,8]
    Output: 64
    Explanation: We can choose indices 3 and 6 for the first pair (9, 8) and indices 1 and 5 for the second pair (2, 4).
    The product difference is (9 * 8) - (2 * 4) = 64.

 
    Constraints:

    4 <= nums.length <= 104
    1 <= nums[i] <= 104
    """
    ### Canonical solution below ###
    min1, min2, max1, max2 = float('inf'), float('inf'), float('-inf'), float('-inf')
    for num in nums:
        if num < min1:
            min2, min1 = min1, num
        elif num < min2:
            min2 = num
        if num > max1:
            max2, max1 = max1, num
        elif num > max2:
            max2 = num
    return max1 * max2 - min1 * min2




### Unit tests below ###
def check(candidate):
	assert candidate(
    [5, 6, 2, 7, 4]) == 34, 'This is the example from the problem description'
	assert candidate(
    [4, 2, 5, 9, 7, 4, 8]) == 64, "This is the only test case that requires 7 lines."
	assert candidate([4, 2, 5, 9, 7, 4, 8]) == 64
	assert candidate([2, 5, 7, 10, 12]) == 110
	assert candidate([5, 6, 2, 7, 4]) == 34
	assert candidate([1, 1, 1, 1, 1]) == 0
	assert candidate([4, 2, 5, 9, 7, 4, 8]) == 64, 'This is the example from the problem description'
def test_check():
	check(maxProductDifference)
# Metadata Difficulty: Easy
# Metadata Topics: array,sorting
# Metadata Coverage: 100
