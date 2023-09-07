from typing import List


def findMaxLength(nums: List[int]) -> int:
    """
    Given a binary array nums, return the maximum length of a contiguous subarray with an equal number of 0 and 1.
 
    Example 1:

    Input: nums = [0,1]
    Output: 2
    Explanation: [0, 1] is the longest contiguous subarray with an equal number of 0 and 1.

    Example 2:

    Input: nums = [0,1,0]
    Output: 2
    Explanation: [0, 1] (or [1, 0]) is a longest contiguous subarray with equal number of 0 and 1.

 
    Constraints:

    1 <= nums.length <= 105
    nums[i] is either 0 or 1.

    """
    ### Canonical solution below ###
    max_length, zeroes, ones = 0, 0, 0
    count_map = {0: -1}

    for i, num in enumerate(nums):
        if num == 0:
            zeroes += 1
        else:
            ones += 1

        if zeroes - ones not in count_map:
            count_map[zeroes - ones] = i
        else:
            max_length = max(max_length, i - count_map[zeroes - ones])

    return max_length




### Unit tests below ###
def check(candidate):
	assert candidate([0, 0, 0, 1, 1]) == 4
	assert candidate([1, 0, 1, 0, 1, 0]) == 6
	assert candidate([0, 0, 1, 1, 0, 1]) == 6
	assert candidate([1, 1, 1, 0, 0, 0]) == 6
	assert candidate([0, 1]) == 2
	assert candidate([1, 1, 0, 0, 1, 0]) == 6
	assert candidate([1]) == 0
	assert candidate([0, 0, 1, 0, 1, 1]) == 6
	assert candidate([1, 0, 1, 0, 0, 1]) == 6
	assert candidate([0, 0, 0, 0, 0, 0]) == 0
	assert candidate([0, 1, 0, 1, 0, 1]) == 6
	assert candidate([1, 0, 0, 1, 0, 1]) == 6
	assert candidate([0, 1, 0, 1]) == 4
	assert candidate([1, 1, 0, 1, 0, 0]) == 6
	assert candidate([0]) == 0
	assert candidate([0, 1, 1, 0, 0, 1]) == 6
	assert candidate([0, 0, 0, 1, 1, 1]) == 6
	assert candidate([0, 1, 1, 0, 1, 0]) == 6
	assert candidate([1, 0, 0, 1, 1, 0]) == 6
	assert candidate([1, 1, 1, 0, 0]) == 4
	assert candidate([1, 0, 1, 1, 0, 0]) == 6
def test_check():
	check(findMaxLength)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,prefix-sum
# Metadata Coverage: 100
