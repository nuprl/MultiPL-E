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
    counts = {0: -1}
    max_len = count = 0
    for i, num in enumerate(nums):
        count += 1 if num == 1 else -1
        if count in counts:
            max_len = max(max_len, i - counts[count])
        else:
            counts[count] = i
    return max_len




### Unit tests below ###
def check(candidate):
	assert candidate([1, 1, 1, 0, 0, 1, 0]) == 6
	assert candidate([0, 0, 1, 1]) == 4
	assert candidate([0, 1]) == 2
	assert candidate([0, 1, 0]) == 2
	assert candidate([1, 1, 0, 0, 1, 1, 0, 0, 1, 0]) == 10
	assert candidate([1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0]) == 12
	assert candidate([0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0]) == 12
	assert candidate([1]) == 0
	assert candidate([1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0]) == 12
	assert candidate([0, 0, 0, 0, 0, 1]) == 2
	assert candidate([1, 0, 1, 0, 1, 0, 1, 0]) == 8
	assert candidate([0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1]) == 12
	assert candidate([0, 0, 1, 0, 1, 1, 0]) == 6
	assert candidate([0, 1, 0, 1, 0, 1, 0, 1, 0]) == 8
	assert candidate([0]) == 0
	assert candidate([1, 0, 1, 0, 0, 1, 1, 0, 0, 1]) == 10
	assert candidate([0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1]) == 12
	assert candidate([0, 0, 1, 1, 0, 1, 0, 1, 0]) == 8
	assert candidate([1, 1, 1, 1, 1, 0]) == 2
def test_check():
	check(findMaxLength)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,prefix-sum
# Metadata Coverage: 100
