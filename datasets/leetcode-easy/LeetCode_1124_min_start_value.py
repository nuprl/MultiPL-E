from typing import List


def min_start_value(nums: List[int]) -> int:
    """
    Given an array of integers nums, you start with an initial positive value startValue.
    In each iteration, you calculate the step by step sum of startValue plus elements in nums (from left to right).
    Return the minimum positive value of startValue such that the step by step sum is never less than 1.
 
    Example 1:

    Input: nums = [-3,2,-3,4,2]
    Output: 5
    Explanation: If you choose startValue = 4, in the third iteration your step by step sum is less than 1.
    step by step sum
    startValue = 4 | startValue = 5 | nums
      (4 -3 ) = 1  | (5 -3 ) = 2    |  -3
      (1 +2 ) = 3  | (2 +2 ) = 4    |   2
      (3 -3 ) = 0  | (4 -3 ) = 1    |  -3
      (0 +4 ) = 4  | (1 +4 ) = 5    |   4
      (4 +2 ) = 6  | (5 +2 ) = 7    |   2

    Example 2:

    Input: nums = [1,2]
    Output: 1
    Explanation: Minimum start value should be positive. 

    Example 3:

    Input: nums = [1,-2,-3]
    Output: 5

 
    Constraints:

    1 <= nums.length <= 100
    -100 <= nums[i] <= 100

    """
    ### Canonical solution below ###
    min_sum, sum = 0, 0
    for num in nums:
        sum += num
        min_sum = min(min_sum, sum)
    return 1 - min_sum




### Unit tests below ###
def check(candidate):
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 1
	assert candidate([-3, 2, -3, 4, 2]) == 5
	assert candidate([-1, 0]) == 2
	assert candidate([-1, 0, 1]) == 2
	assert candidate([-10, -9, -8, -7, -6, -5, -4, -3, -2, -1]) == 56
	assert candidate([1, 2]) == 1
	assert candidate([-1, -2, -3, -4, -5, -6, -7, -8, -9, -10]) == 56
	assert candidate([-1, -1, -1, -1, -1, -1, -1, -1, -1, -1]) == 11
	assert candidate([3, -4, 2, -3, -1, 2]) == 4
	assert candidate([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == 1
	assert candidate([1, 0]) == 1
	assert candidate([1, -2, -3]) == 5
	assert candidate([-1, -2, -3]) == 7
	assert candidate([1, 2, 3]) == 1
	assert candidate([0, 0, 0]) == 1
def test_check():
	check(min_start_value)
# Metadata Difficulty: Easy
# Metadata Topics: array,prefix-sum
# Metadata Coverage: 100
