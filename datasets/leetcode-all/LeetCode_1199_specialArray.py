from typing import List


def specialArray(nums: List[int]) -> int:
    """
    You are given an array nums of non-negative integers. nums is considered special if there exists a number x such that there are exactly x numbers in nums that are greater than or equal to x.
    Notice that x does not have to be an element in nums.
    Return x if the array is special, otherwise, return -1. It can be proven that if nums is special, the value for x is unique.
 
    Example 1:

    Input: nums = [3,5]
    Output: 2
    Explanation: There are 2 values (3 and 5) that are greater than or equal to 2.

    Example 2:

    Input: nums = [0,0]
    Output: -1
    Explanation: No numbers fit the criteria for x.
    If x = 0, there should be 0 numbers >= x, but there are 2.
    If x = 1, there should be 1 number >= x, but there are 0.
    If x = 2, there should be 2 numbers >= x, but there are 0.
    x cannot be greater since there are only 2 numbers in nums.

    Example 3:

    Input: nums = [0,4,3,0,4]
    Output: 3
    Explanation: There are 3 values that are greater than or equal to 3.

 
    Constraints:

    1 <= nums.length <= 100
    0 <= nums[i] <= 1000

    """
    ### Canonical solution below ###
    max_val = max(nums)
    for x in range(1, max_val + 1):
        count = sum([1 for num in nums if num >= x])
        if count == x:
            return x
    return -1




### Unit tests below ###
def check(candidate):
	assert candidate([100, 100, 100, 100, 100, 0, 0, 0, 0, 0]) == 5
	assert candidate([1, 2, 3, 4]) == -1
	assert candidate([3, 1, 5, 0, 4, 2]) == 3
	assert candidate([5, 5, 5, 5, 5, 0, 0, 0, 0, 0]) == 5
	assert candidate([3, 5]) == 2
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == -1
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]) == -1
	assert candidate([0, 2, 0, 2, 0, 2, 0]) == -1
	assert candidate([1, 1, 1, 1, 1, 1, 1]) == -1
	assert candidate([100, 99, 98, 97, 96, 95, 94, 93, 92, 91]) == 10
	assert candidate([0, 4, 3, 0, 4]) == 3
	assert candidate([1, 2, 1, 2, 1, 2, 1]) == -1
	assert candidate([0, 0]) == -1
def test_check():
	check(specialArray)
# Metadata Difficulty: Easy
# Metadata Topics: array,binary-search,sorting
# Metadata Coverage: 100
