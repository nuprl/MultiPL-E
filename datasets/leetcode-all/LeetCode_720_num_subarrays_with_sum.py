from typing import List


def num_subarrays_with_sum(nums: List[int], goal: int) -> int:
    """
    Given a binary array nums and an integer goal, return the number of non-empty subarrays with a sum goal.
    A subarray is a contiguous part of the array.
 
    Example 1:

    Input: nums = [1,0,1,0,1], goal = 2
    Output: 4
    Explanation: The 4 subarrays are bolded and underlined below:
    [1,0,1,0,1]
    [1,0,1,0,1]
    [1,0,1,0,1]
    [1,0,1,0,1]

    Example 2:

    Input: nums = [0,0,0,0,0], goal = 0
    Output: 15

 
    Constraints:

    1 <= nums.length <= 3 * 104
    nums[i] is either 0 or 1.
    0 <= goal <= nums.length
    """
    ### Canonical solution below ###
    from collections import defaultdict
    prefix_sum_count = defaultdict(int)
    prefix_sum_count[0] = 1
    cumulative_sum, result = 0, 0

    for num in nums:
        cumulative_sum += num
        result += prefix_sum_count[cumulative_sum - goal]
        prefix_sum_count[cumulative_sum] += 1

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([1,0,1,0,1], 2) == 4
	assert candidate([1,1,1,1,1], 5) == 1
	assert candidate([0,0,0,0,0], 0) == 15
	assert candidate([1,1,1,1,1], 0) == 0
	assert candidate([1,1,1,1,1], 1) == 5
	assert candidate([0,0,0,0,1], 1) == 5
	assert candidate([1,0,0,0,0], 1) == 5
def test_check():
	check(num_subarrays_with_sum)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,sliding-window,prefix-sum
# Metadata Coverage: 100
