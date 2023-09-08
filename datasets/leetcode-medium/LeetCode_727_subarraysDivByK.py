from typing import List


def subarraysDivByK(nums: List[int], k: int) -> int:
    """
    Given an integer array nums and an integer k, return the number of non-empty subarrays that have a sum divisible by k.
    A subarray is a contiguous part of an array.
 
    Example 1:

    Input: nums = [4,5,0,-2,-3,1], k = 5
    Output: 7
    Explanation: There are 7 subarrays with a sum divisible by k = 5:
    [4, 5, 0, -2, -3, 1], [5], [5, 0], [5, 0, -2, -3], [0], [0, -2, -3], [-2, -3]

    Example 2:

    Input: nums = [5], k = 9
    Output: 0

 
    Constraints:

    1 <= nums.length <= 3 * 104
    -104 <= nums[i] <= 104
    2 <= k <= 104

    """
    ### Canonical solution below ###
    prefix_sums_mod_k = [0] * k
    prefix_sums_mod_k[0] = 1
    running_sum = 0
    count = 0

    for num in nums:
        running_sum += num
        mod = (running_sum % k + k) % k
        count += prefix_sums_mod_k[mod]
        prefix_sums_mod_k[mod] += 1

    return count




### Unit tests below ###
def check(candidate):
	assert candidate(
    [1, 2, 3, 4, 5], 5) == 4
	assert candidate([1,2,3,4,5], 2) == 6
	assert candidate([1,1,1,1,1], 1) == 15
	assert candidate([5], 9) == 0
	assert candidate([4,5,0,-2,-3,1], 5) == 7
	assert candidate([10,20,30,40,50], 10) == 15
	assert candidate([1,2,3,4,5], 5) == 4
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 7) == 10
	assert candidate([-1,-1,-1,-1,-1], 1) == 15
	assert candidate([1,2,3,4,5], 1) == 15
def test_check():
	check(subarraysDivByK)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,prefix-sum
# Metadata Coverage: 100
