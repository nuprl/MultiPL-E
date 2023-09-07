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
    from math import gcd
    return gcd(min(nums), max(nums))




### Unit tests below ###
def check(candidate):
	assert candidate([27, 36, 45, 60]) == 3
	assert candidate([60, 120, 180, 240]) == 60
	assert candidate([15, 25, 35]) == 5
	assert candidate([99, 198, 297]) == 99
	assert candidate(range(1, 2101)) == 1
	assert candidate(range(1, 1301)) == 1
	assert candidate([90, 180, 270]) == 90
	assert candidate(range(1, 1501)) == 1
	assert candidate(range(1, 201)) == 1
	assert candidate([100, 200, 300, 400]) == 100
	assert candidate([27, 54, 81]) == 27
	assert candidate(range(1, 501)) == 1
	assert candidate(range(1, 1801)) == 1
	assert candidate(range(1, 901)) == 1
	assert candidate([81, 162, 243]) == 81
	assert candidate([21, 14, 7]) == 7
	assert candidate([80, 160, 240]) == 80
	assert candidate(range(1, 1001)) == 1
	assert candidate([37, 74, 111]) == 37
	assert candidate(range(1, 1401)) == 1
	assert candidate([50, 100, 150, 200]) == 50
	assert candidate([5, 10, 15, 20]) == 5
	assert candidate([200, 300, 400, 500]) == 100
	assert candidate(range(1, 1201)) == 1
	assert candidate(range(1, 801)) == 1
	assert candidate([24, 30, 42, 54]) == 6
	assert candidate(range(1, 301)) == 1
	assert candidate(range(2, 1000 + 1, 2)) == 2
	assert candidate(range(1, 2001)) == 1
	assert candidate([6, 12, 18, 36]) == 6
	assert candidate([16, 32, 48, 64]) == 16
	assert candidate(range(1, 1601)) == 1
	assert candidate([33, 44, 55]) == 11
	assert candidate([54, 42, 24, 30]) == 6
	assert candidate(range(1, 1101)) == 1
	assert candidate(range(1, 1901)) == 1
	assert candidate(range(1, 701)) == 1
	assert candidate([51, 153, 204]) == 51
	assert candidate(range(1, 101)) == 1
	assert candidate(range(1, 601)) == 1
	assert candidate([100, 200, 300]) == 100
	assert candidate(range(1, 401)) == 1
	assert candidate(range(1, 1701)) == 1
	assert candidate([45, 90, 135]) == 45
	assert candidate([30, 24, 42, 54]) == 6
	assert candidate([12, 18]) == 6
def test_check():
	check(findGCD)
# Metadata Difficulty: Easy
# Metadata Topics: array,math,number-theory
# Metadata Coverage: 100
