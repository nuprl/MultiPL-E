from typing import List


def maxNonOverlapping(nums: List[int], target: int) -> int:
    """
    Given an array nums and an integer target, return the maximum number of non-empty non-overlapping subarrays such that the sum of values in each subarray is equal to target.
 
    Example 1:

    Input: nums = [1,1,1,1,1], target = 2
    Output: 2
    Explanation: There are 2 non-overlapping subarrays [1,1,1,1,1] with sum equals to target(2).

    Example 2:

    Input: nums = [-1,3,5,1,4,2,-9], target = 6
    Output: 2
    Explanation: There are 3 subarrays with sum equal to 6.
    ([5,1], [4,2], [3,5,1,4,2,-9]) but only the first 2 are non-overlapping.

 
    Constraints:

    1 <= nums.length <= 105
    -104 <= nums[i] <= 104
    0 <= target <= 106

    """
    ### Canonical solution below ###
    prefix_sum = {0: 1}
    sum_so_far = count = 0
    for num in nums:
        sum_so_far += num
        if sum_so_far - target in prefix_sum:
            count += 1
            prefix_sum.clear()
            prefix_sum[0] = 1
            sum_so_far = 0
        else:
            prefix_sum[sum_so_far] = prefix_sum.get(sum_so_far, 0) + 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate([1,0,0,0,0,0,1], 7) == 0
	assert candidate([1,5,6,2], 1) == 1
	assert candidate([1, 5, 5, 5, 5], 5) == 4
	assert candidate([1, 1, 1, 1], 2) == 2
	assert candidate([1, 3, 5, 7, 1], 10) == 0
	assert candidate([1,3,3,3,2,4,2,1,2], 4) == 2
	assert candidate(
    [1, 1, 1, 1, 1], 2) == 2
	assert candidate([1, 2, 3, 4], 2) == 1
	assert candidate([-1,3,5,1,4,2,-9], 6) == 2
	assert candidate([3, 3, 3, 9, 5, 5], 9) == 2
	assert candidate([4, 4, 4, 4], 2) == 0
	assert candidate([1,1,1,1,1], 2) == 2
	assert candidate([0, 0, 5, 5, 0, 5, 5, 0, 5, 5], 10) == 3
	assert candidate(
    [-1, 3, 5, 1, 4, 2, -9], 6) == 2
	assert candidate([1, 1, 1, 1, 1], 2) == 2
def test_check():
	check(maxNonOverlapping)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,greedy,prefix-sum
# Metadata Coverage: 100
