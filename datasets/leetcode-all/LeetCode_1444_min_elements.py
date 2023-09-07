from typing import List


def min_elements(nums: List[int], limit: int, goal: int) -> int:
    """
    You are given an integer array nums and two integers limit and goal. The array nums has an interesting property that abs(nums[i]) <= limit.
    Return the minimum number of elements you need to add to make the sum of the array equal to goal. The array must maintain its property that abs(nums[i]) <= limit.
    Note that abs(x) equals x if x >= 0, and -x otherwise.
 
    Example 1:

    Input: nums = [1,-1,1], limit = 3, goal = -4
    Output: 2
    Explanation: You can add -2 and -3, then the sum of the array will be 1 - 1 + 1 - 2 - 3 = -4.

    Example 2:

    Input: nums = [1,-10,9,1], limit = 100, goal = 0
    Output: 1

 
    Constraints:

    1 <= nums.length <= 105
    1 <= limit <= 106
    -limit <= nums[i] <= limit
    -109 <= goal <= 109

    """
    ### Canonical solution below ###
    total_sum = sum(nums)
    diff = abs(goal - total_sum)
    return (diff + limit - 1) // limit




### Unit tests below ###
def check(candidate):
	assert candidate([-1,1], 3, -1) == 1
	assert candidate([1,-1,1], 2, 1) == 0
	assert candidate([1,2,3,4,5,6,7,8,9], 4, 45) == 0
	assert candidate([1,2,3,4,5,6,7,8,9], 2, 45) == 0
	assert candidate([1,2,3,4,5], 3, 15) == 0
	assert candidate([1,1,1,1], 1, 4) == 0
	assert candidate([1,2,3,4,5,6,7,8,9], 7, 45) == 0
	assert candidate([1,2,3,4,5,6,7,8,9], 3, 45) == 0
	assert candidate([1,2,3,4,5], 1, 15) == 0
	assert candidate([1,-1,-1,1,-1,-1,1,-1,-1,1,-1,-1,1], 3, 3) == 2
	assert candidate([1,2,3,4,5,6,7,8,9], 9, 45) == 0
	assert candidate([1,2,3,4,5], 7, 15) == 0
	assert candidate([1,-1], 3, -1) == 1
	assert candidate([1,2,3,4,5], 2, 15) == 0
	assert candidate([1,2,3,4,5,6,7,8,9], 8, 45) == 0
	assert candidate([1,2,3,4,5], 6, 15) == 0
	assert candidate([1,2,3,4,5], 5, 15) == 0
	assert candidate([1,2,3,4,5,6,7,8,9], 6, 45) == 0
	assert candidate([1,2,3,4,5], 4, 15) == 0
	assert candidate([1,2,3,4,5,6,7,8,9], 5, 45) == 0
def test_check():
	check(min_elements)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy
# Metadata Coverage: 100
