from typing import List


def max_ascending_sum(nums: List[int]) -> int:
    """
    Given an array of positive integers nums, return the maximum possible sum of an ascending subarray in nums.
    A subarray is defined as a contiguous sequence of numbers in an array.
    A subarray [numsl, numsl+1, ..., numsr-1, numsr] is ascending if for all i where l <= i < r, numsi  < numsi+1. Note that a subarray of size 1 is ascending.
 
    Example 1:

    Input: nums = [10,20,30,5,10,50]
    Output: 65
    Explanation: [5,10,50] is the ascending subarray with the maximum sum of 65.

    Example 2:

    Input: nums = [10,20,30,40,50]
    Output: 150
    Explanation: [10,20,30,40,50] is the ascending subarray with the maximum sum of 150.

    Example 3:

    Input: nums = [12,17,15,13,10,11,12]
    Output: 33
    Explanation: [10,11,12] is the ascending subarray with the maximum sum of 33.

 
    Constraints:

    1 <= nums.length <= 100
    1 <= nums[i] <= 100

    """
    ### Canonical solution below ###
    max_sum = current_sum = nums[0]

    for i in range(1, len(nums)):
        if nums[i] > nums[i - 1]:
            current_sum += nums[i]
        else:
            max_sum = max(max_sum, current_sum)
            current_sum = nums[i]

    return max(max_sum, current_sum)




### Unit tests below ###
def check(candidate):
	assert candidate([9, 8, 7, 6, 5, 4, 3, 2, 1]) == 9
	assert candidate([1, 2, 3, 4, 5, 1, 2]) == 15
	assert candidate([10, 20, 30, 5, 10, 50]) == 65
	assert candidate([1, 2, 3, 2, 1]) == 6
	assert candidate([1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5]) == 28
	assert candidate([1, 100, 2, 3, 100]) == 105
	assert candidate([-2, -1, -4, -5, -1, -1, -1]) == -1
	assert candidate(
    [10, 20, 30, 5, 10, 50]) == 65
	assert candidate(
    [12, 17, 15, 13, 10, 11, 12]) == 33
	assert candidate([12, 17, 15, 13, 10, 11, 12]) == 33
	assert candidate(
    [
        10,
        20,
        30,
        5,
        10,
        50,
    ]
) == 65
	assert candidate([1, 1, 1, 1, 1]) == 1
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == 210
	assert candidate(
    [
        9,
        8,
        7,
        6,
        5,
        4,
        3,
        2,
        1,
    ]
) == 9
	assert candidate([10, 20, 30, 40, 50]) == 150
	assert candidate([-1, -1, -2, -3, -5, -1, -2, -3, -4, -5]) == -1
	assert candidate([9, 7, 5, 3, 1]) == 9
	assert candidate(
    [9, 8, 7, 6, 5, 4, 3, 2, 1]) == 9
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9]) == 45
	assert candidate([5, 4, 3, 2, 1, 0]) == 5
	assert candidate(
    [
        10,
        20,
        30,
        40,
        50,
    ]
) == 150
	assert candidate([1, 3, 5, 7, 9]) == 25
	assert candidate([1]) == 1
	assert candidate([3, 6, 10, 1, 2, 20]) == 23
	assert candidate([50, 40, 30, 20, 10]) == 50
	assert candidate(
    [10, 20, 30, 40, 50]) == 150
	assert candidate(
    [5, 4, 3, 2, 1, 1, 1, 1, 1, 0, 0, 0, 1]) == 5
	assert candidate([10, 20, 30, 40, 50, 10, 20, 30, 40, 50]) == 150
def test_check():
	check(max_ascending_sum)
# Metadata Difficulty: Easy
# Metadata Topics: array
# Metadata Coverage: 100
