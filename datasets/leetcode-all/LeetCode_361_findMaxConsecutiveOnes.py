from typing import List


def findMaxConsecutiveOnes(nums: List[int]) -> int:
    """
    Given a binary array nums, return the maximum number of consecutive 1's in the array.
 
    Example 1:

    Input: nums = [1,1,0,1,1,1]
    Output: 3
    Explanation: The first two digits or the last three digits are consecutive 1s. The maximum number of consecutive 1s is 3.

    Example 2:

    Input: nums = [1,0,1,1,0,1]
    Output: 2

 
    Constraints:

    1 <= nums.length <= 105
    nums[i] is either 0 or 1.

    """
    ### Canonical solution below ###
    max_consecutive, current_consecutive = 0, 0
    for num in nums:
        current_consecutive = current_consecutive + 1 if num == 1 else 0
        max_consecutive = max(max_consecutive, current_consecutive)
    return max_consecutive




### Unit tests below ###
def check(candidate):
	assert candidate([0,0,1,1,0,1,1,1,0,1,1,1,0,1,1]) == 3
	assert candidate([1]) == 1
	assert candidate(
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]) == 0
	assert candidate([1,1,1,1,1,0,1,1,1]) == 5
	assert candidate([1,1,1,1,0,1,1,1,0,1,1,1,0,1,1]) == 4
	assert candidate([0,1,1,1,0,1,1,0,1,1,1]) == 3
	assert candidate([1,1,0,1,1,1]) == 3
	assert candidate([1,0,0,0,0,0,0,1,1,1]) == 3
	assert candidate([1,0,0,0,0,0,0,0,0,0]) == 1
	assert candidate([1,0,0,0,0,0,0,0,0,1]) == 1
	assert candidate([0]) == 0
	assert candidate( [1,0,0,0,0,0,0,0,0,0,0]) == 1
	assert candidate([1,0,0,0,0,0,0,0,0,0,1]) == 1
	assert candidate([1,1,1,1,1,0,1,1,1,1]) == 5
	assert candidate([0,0,0,0,0,0]) == 0
	assert candidate([1,1,1,0,1,1,1,1,1]) == 5
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                               0, 0, 0, 0, 1, 1, 1]) == 3
	assert candidate([1,1,1,1,0,1,1,1,1,1]) == 5
	assert candidate([0,0,0,1,0,0,0,0,0,0]) == 1
	assert candidate([0,0,0,0,0,0,0,0,0,1,1]) == 2
	assert candidate( [0,1,1,0,1,1,1]) == 3
	assert candidate([1,0,0,0,0,0,1,1,1,1]) == 4
	assert candidate([0,0,0,0,0,0,0,0,0,1]) == 1
	assert candidate([1,0,1,0,1,0,1,0,1,0]) == 1
	assert candidate([0,1,1,1,0,1,1,1,0,1,1,1,0,1,1]) == 3
	assert candidate( [1,0,1,0,0,0,1,1,1,0,1,1,1,0,1,1]) == 3
	assert candidate([0,1,1,1,1,1,0,1,1,1]) == 5
	assert candidate([1,1,0,0,1,1,1,0,1]) == 3
	assert candidate([1,1,1,1,1,1]) == 6
	assert candidate([1,1,1,1,0,1,1,1,1]) == 4
	assert candidate([0,0,0,0,0,0,0,0,0,1,1,1]) == 3
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                               0, 0, 0, 1, 1, 1, 1]) == 4
	assert candidate([1,0,1,1,0,1]) == 2
def test_check():
	check(findMaxConsecutiveOnes)
# Metadata Difficulty: Easy
# Metadata Topics: array
# Metadata Coverage: 100
