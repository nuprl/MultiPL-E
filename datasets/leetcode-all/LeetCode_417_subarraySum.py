from typing import List


def subarraySum(nums: List[int], k: int) -> int:
    """
    Given an array of integers nums and an integer k, return the total number of subarrays whose sum equals to k.
    A subarray is a contiguous non-empty sequence of elements within an array.
 
    Example 1:
    Input: nums = [1,1,1], k = 2
    Output: 2
    Example 2:
    Input: nums = [1,2,3], k = 3
    Output: 2

 
    Constraints:

    1 <= nums.length <= 2 * 104
    -1000 <= nums[i] <= 1000
    -107 <= k <= 107

    """
    ### Canonical solution below ###
    prefix_sum_frequency = {0: 1}
    prefix_sum, result = 0, 0

    for num in nums:
        prefix_sum += num
        result += prefix_sum_frequency.get(prefix_sum - k, 0)
        prefix_sum_frequency[prefix_sum] = prefix_sum_frequency.get(prefix_sum, 0) + 1

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3,4,5,6,7,8,9,10], 55) == 1
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 20) == 1
	assert candidate([-1000, -1000, 2000], 1000) == 1
	assert candidate([1,2,3], 3) == 2
	assert candidate([1,-1,0], 0) == 3
	assert candidate([-1,-1,1], 1) == 1
	assert candidate([1,2,3,4,5], 9) == 2
	assert candidate([1,1,1], 2) == 2
	assert candidate([1,2,3,4,5,6,7,8,9,10], 100) == 0
	assert candidate([10, 2, -2, -20, 10], -10) == 3
	assert candidate([-1000,-1000,2000], 1000) == 1
	assert candidate([1,2,3,4], 10) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10], 1) == 1
	assert candidate([3,4,7,2,-3,1,4,2], 7) == 4
	assert candidate([1,2,3,4,5,6,7,8,9,10], 45) == 2
	assert candidate([-1000, 1000], 0) == 1
def test_check():
	check(subarraySum)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,prefix-sum
# Metadata Coverage: 100
