from typing import List


def findGCD(nums: List[int]) -> int:
    """
    Given an integer array nums, return the greatest common divisor of the smallest number and largest number in nums.
    The greatest common divisor of two numbers is the largest positive integer that evenly divides both numbers.
 
    Example 1:

    Input: nums = [2,5,6,9,10]
    Output: 2
    Explanation:
    The smallest number in nums is 2.
    The largest number in nums is 10.
    The greatest common divisor of 2 and 10 is 2.

    Example 2:

    Input: nums = [7,5,6,8,3]
    Output: 1
    Explanation:
    The smallest number in nums is 3.
    The largest number in nums is 8.
    The greatest common divisor of 3 and 8 is 1.

    Example 3:

    Input: nums = [3,3]
    Output: 3
    Explanation:
    The smallest number in nums is 3.
    The largest number in nums is 3.
    The greatest common divisor of 3 and 3 is 3.

 
    Constraints:

    2 <= nums.length <= 1000
    1 <= nums[i] <= 1000

    """
    ### Canonical solution below ###
    min_val, max_val = min(nums), max(nums)
    while max_val % min_val != 0:
        min_val, max_val = max_val % min_val, min_val
    return min_val




### Unit tests below ###
def check(candidate):
	assert candidate([4, 8, 16, 32]) == 4
	assert candidate([3, 6, 9, 12, 18]) == 3
	assert candidate([6, 12, 24, 36]) == 6
	assert candidate([2, 1, 3, 4, 5, 6, 7, 8, 9, 10]) == 1
	assert candidate([10, 100, 1000]) == 10
	assert candidate([3, 5, 9, 11, 13]) == 1
	assert candidate([101, 202, 303, 404, 505]) == 101
	assert candidate([12, 24, 36, 48, 60]) == 12
	assert candidate([5, 10, 15, 20]) == 5
	assert candidate([30, 60, 90, 120]) == 30
	assert candidate([7, 42, 70, 175, 231]) == 7
	assert candidate([14, 7, 12, 21]) == 7
	assert candidate([23, 46]) == 23
	assert candidate([100, 200, 300, 400, 500]) == 100
	assert candidate([1, 2, 3, 4, 5, 6]) == 1
	assert candidate([14, 60, 210, 420, 630]) == 14
	assert candidate([12, 30, 48]) == 12
	assert candidate([3, 12, 24, 48, 96]) == 3
	assert candidate([12, 48]) == 12
	assert candidate([11, 22, 33, 44, 55]) == 11
	assert candidate([30, 60, 90, 180, 270]) == 30
	assert candidate([17, 34, 51, 68, 85]) == 17
	assert candidate([12, 144]) == 12
	assert candidate([5, 10, 15, 20, 25, 30, 35, 40, 45]) == 5
	assert candidate([2, 4, 6, 8]) == 2
	assert candidate([13, 26, 39, 52, 65]) == 13
	assert candidate([4, 12, 8, 24, 32]) == 4
	assert candidate([4, 8, 16, 32, 64]) == 4
	assert candidate([20, 40, 60, 100]) == 20
	assert candidate([3, 3]) == 3
	assert candidate([12, 120, 180, 240, 300]) == 12
	assert candidate([16, 8, 24, 32]) == 8
	assert candidate([6, 12, 18, 24]) == 6
	assert candidate([1, 2, 3, 4, 5]) == 1
	assert candidate([7, 5, 6, 8]) == 1
	assert candidate([2, 5, 6, 9, 10]) == 2
	assert candidate([4, 2]) == 2
	assert candidate([12, 24, 48, 96]) == 12
	assert candidate([10, 50, 100, 150, 200]) == 10
	assert candidate([6, 12, 18, 24, 30]) == 6
	assert candidate([1, 3, 5, 7, 9]) == 1
	assert candidate([5, 10, 15, 20, 25]) == 5
	assert candidate([14, 7]) == 7
	assert candidate([200, 100]) == 100
	assert candidate([7, 14, 21, 28, 35]) == 7
	assert candidate([20, 40, 60, 80]) == 20
	assert candidate([1, 1, 1, 1, 1, 1]) == 1
	assert candidate([8, 16, 24, 32, 40]) == 8
	assert candidate([111, 222, 333, 444, 555]) == 111
	assert candidate([111, 222, 333, 444]) == 111
	assert candidate([40, 80, 160, 320, 640]) == 40
	assert candidate([7, 5, 6, 8, 3]) == 1
	assert candidate([16, 24, 32, 48, 64, 80, 96]) == 16
	assert candidate([20, 40, 60, 80, 100]) == 20
	assert candidate([12, 30, 36, 42]) == 6
	assert candidate([69, 189, 145, 27, 216]) == 27
	assert candidate([15, 30, 45, 60, 75]) == 15
	assert candidate([14, 21, 28, 35]) == 7
	assert candidate([50, 30, 20, 15, 10]) == 10
	assert candidate([5, 10, 15, 30, 45]) == 5
	assert candidate([2, 4, 6, 8, 10]) == 2
	assert candidate([1000, 500, 250, 125]) == 125
	assert candidate([4, 8, 12, 16, 20]) == 4
	assert candidate([80, 160, 240, 320, 400]) == 80
	assert candidate([3, 6, 9, 12, 15]) == 3
	assert candidate([10, 20, 30, 40, 50]) == 10
	assert candidate([50, 75, 100, 125, 150, 175]) == 25
	assert candidate([14, 28, 42, 56, 70, 84]) == 14
	assert candidate([1, 2, 3, 4]) == 1
	assert candidate([2, 3, 4, 5, 6, 7, 8, 9]) == 1
	assert candidate([2, 4, 6, 8, 10, 12]) == 2
	assert candidate([3, 6, 9]) == 3
	assert candidate([1, 1, 1, 1, 1]) == 1
	assert candidate([30, 60, 90]) == 30
	assert candidate([7, 14, 21, 28]) == 7
	assert candidate([3, 6, 9, 12]) == 3
	assert candidate([15, 30, 45]) == 15
	assert candidate([24, 48, 72]) == 24
def test_check():
	check(findGCD)
# Metadata Difficulty: Easy
# Metadata Topics: array,math,number-theory
# Metadata Coverage: 100
