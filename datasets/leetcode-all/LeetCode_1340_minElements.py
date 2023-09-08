from typing import List


def minElements(nums: List[int], limit: int, goal: int) -> int:
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
    sum_nums = sum(nums)
    diff = abs(goal - sum_nums)

    return (diff + limit - 1) // limit




### Unit tests below ###
def check(candidate):
	assert candidate([1,-10,9,1], 100, 0) == 1
	assert candidate([1, 1, 1, 1, 1], 1, 5) == 0
	assert candidate([0, 0, 0, 0], 10, 50) == 5
	assert candidate([-5, -5, -5, -5, -5], 5, -30) == 1
	assert candidate([1, 2, 3, 4, 5], 1, 20) == 5
	assert candidate([1, -1, 1, -1, 1], 3, 5) == 2
	assert candidate([5, 5, 5, 5, 5], 5, 30) == 1
	assert candidate([1, 1, 1, 1, 1], 1, 10) == 5
	assert candidate([1, -1, 1, -1, 1], 3, -5) == 2
	assert candidate([1, 2, 3, 4, 5], 10, 15) == 0
	assert candidate([-1000000], 1000, -1000000) == 0
	assert candidate([1,-1,1], 3, -4) == 2
def test_check():
	check(minElements)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy
# Metadata Coverage: 100
