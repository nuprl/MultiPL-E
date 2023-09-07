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
    prefix_sum = {0: 0}
    sum, count = 0, 0
    for num in nums:
        sum += num
        if sum - target in prefix_sum:
            count = max(count, 1 + prefix_sum[sum - target])
        prefix_sum[sum] = count
    return count




### Unit tests below ###
def check(candidate):
	assert candidate([5,-5,5,-5,5,-5,5,-5,5,-5], 10) == 0
	assert candidate([1,2,3,4,5,6,7,8,9,10,10,9,8,7,6,5,4,3,2,1], 30) == 2
	assert candidate([1,2,3,4,5,6,7,8,9,10], 55) == 1
	assert candidate([100,200,300,400,500], 1000) == 1
	assert candidate([0,0,0,0,0,0,0,0,0,0,0], 1) == 0
	assert candidate([1,2,3,4,5,6,7,8,9,10], 1) == 1
	assert candidate([-1,3,5,1,4,2,-9], 6) == 2
	assert candidate([5,-5,5,-5,5,-5,5,-5,5,-5], 0) == 5
	assert candidate([1,2,3,4,5,6,7,8,9,10,10,9,8,7,6,5,4,3,2,1], 20) == 3
	assert candidate([0,0,0,0,0,0,0,0,0,0,0], 5) == 0
	assert candidate([1,1,1,1,1,1,1,1,1,1,1], 0) == 0
	assert candidate([0,0,0,0,0,0,0,0,0,0,0], 0) == 11
	assert candidate([1,1,1,1,1], 2) == 2
	assert candidate([1,1,1,1,1,1,1,1,1,1,1], 2) == 5
	assert candidate([1,1,1,1,1,1,1,1,1,1,1], 100) == 0
	assert candidate([100,200,300,400,500], 500) == 2
def test_check():
	check(maxNonOverlapping)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,greedy,prefix-sum
# Metadata Coverage: 100
