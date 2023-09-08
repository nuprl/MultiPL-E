from typing import List


def numSubarrayProductLessThanK(nums: List[int], k: int) -> int:
    """
    Given an array of integers nums and an integer k, return the number of contiguous subarrays where the product of all the elements in the subarray is strictly less than k.
 
    Example 1:

    Input: nums = [10,5,2,6], k = 100
    Output: 8
    Explanation: The 8 subarrays that have product less than 100 are:
    [10], [5], [2], [6], [10, 5], [5, 2], [2, 6], [5, 2, 6]
    Note that [10, 5, 2] is not included as the product of 100 is not strictly less than k.

    Example 2:

    Input: nums = [1,2,3], k = 0
    Output: 0

 
    Constraints:

    1 <= nums.length <= 3 * 104
    1 <= nums[i] <= 1000
    0 <= k <= 106

    """
    ### Canonical solution below ###
    if k <= 1:
        return 0
    prod = 1
    count = 0
    left = 0
    for right in range(len(nums)):
        prod *= nums[right]
        while prod >= k:
            prod /= nums[left]
            left += 1
        count += right - left + 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,1,1], 5) == 10
	assert candidate([1,1,1,1], 1) == 0
	assert candidate([10,5,2,6], 100) == 8
	assert candidate([1,1,1,1], 2) == 10
	assert candidate([10,10,10], 100) == 3
	assert candidate([10,10,10], 10) == 0
	assert candidate([10,10,10,10,10], 100) == 5
	assert candidate([10,10,10,10,10], 10) == 0
	assert candidate([1,2,3], 0) == 0
def test_check():
	check(numSubarrayProductLessThanK)
# Metadata Difficulty: Medium
# Metadata Topics: array,sliding-window
# Metadata Coverage: 100
