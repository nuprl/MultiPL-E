from typing import List


def longestOnes(nums: List[int], k: int) -> int:
    """
    Given a binary array nums and an integer k, return the maximum number of consecutive 1's in the array if you can flip at most k 0's.
 
    Example 1:

    Input: nums = [1,1,1,0,0,0,1,1,1,1,0], k = 2
    Output: 6
    Explanation: [1,1,1,0,0,1,1,1,1,1,1]
    Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.
    Example 2:

    Input: nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], k = 3
    Output: 10
    Explanation: [0,0,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1]
    Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.

 
    Constraints:

    1 <= nums.length <= 105
    nums[i] is either 0 or 1.
    0 <= k <= nums.length

    """
    ### Canonical solution below ###
    left, right, max_ones, zero_count = 0, 0, 0, 0
    while right < len(nums):
        if nums[right] == 0:
            zero_count += 1
        while zero_count > k:
            if nums[left] == 0:
                zero_count -= 1
            left += 1
        max_ones = max(max_ones, right - left + 1)
        right += 1
    return max_ones




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,0,0,1,1,1,0,0,1,1], 4) == 11
	assert candidate([1,0,1,0,1,0,1,0,1,0,1], 3) == 7
	assert candidate([0,0,0,0,0,0,0,0,0,0,0], 3) == 3
	assert candidate([1,0,1,0,1,0,1,0,1,0,1], 2) == 5
	assert candidate(
    [0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1], 3) == 10
	assert candidate(
    [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], 3) == 10
	assert candidate(
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 5) == 5
	assert candidate([1,0,1,0,1,0,1,0,1,0,1], 0) == 1
	assert candidate([1,1,1,1,1,1,1,1,1,1,1], 2) == 11
	assert candidate([1,0,1,0,1,0,1,0,1,0,1], 5) == 11
	assert candidate([0,0,0,0,0,0,0,0,0,0,0], 10) == 10
	assert candidate([1,0,1,0,1,0,1,0,1,0,1], 4) == 9
	assert candidate([0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0], 2) == 8
	assert candidate([1,1,1,1,1,1,1,1,1,1,1], 0) == 11
	assert candidate([1,0,1,0,1,0,1,0,1,0,1], 1) == 3
def test_check():
	check(longestOnes)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search,sliding-window,prefix-sum
# Metadata Coverage: 100
