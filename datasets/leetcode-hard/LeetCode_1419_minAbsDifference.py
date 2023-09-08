from typing import List


def minAbsDifference(nums: List[int], goal: int) -> int:
    """
    You are given an integer array nums and an integer goal.
    You want to choose a subsequence of nums such that the sum of its elements is the closest possible to goal. That is, if the sum of the subsequence's elements is sum, then you want to minimize the absolute difference abs(sum - goal).
    Return the minimum possible value of abs(sum - goal).
    Note that a subsequence of an array is an array formed by removing some elements (possibly all or none) of the original array.
 
    Example 1:

    Input: nums = [5,-7,3,5], goal = 6
    Output: 0
    Explanation: Choose the whole array as a subsequence, with a sum of 6.
    This is equal to the goal, so the absolute difference is 0.

    Example 2:

    Input: nums = [7,-9,15,-2], goal = -5
    Output: 1
    Explanation: Choose the subsequence [7,-9,-2], with a sum of -4.
    The absolute difference is abs(-4 - (-5)) = abs(1) = 1, which is the minimum.

    Example 3:

    Input: nums = [1,2,3], goal = -7
    Output: 7

 
    Constraints:

    1 <= nums.length <= 40
    -107 <= nums[i] <= 107
    -109 <= goal <= 109

    """
    ### Canonical solution below ###
    from itertools import combinations
    n = len(nums)
    left = nums[:n//2]
    right = nums[n//2:]

    sums_left = set()

    for i in range(len(left) + 1):
        for comb in combinations(left, i):
            sums_left.add(sum(comb))

    ans = abs(goal)

    for i in range(len(right) + 1):
        for comb in combinations(right, i):
            sum_r = sum(comb)
            sum_goal = goal - sum_r
            sum_l = min(sums_left, key=lambda x: abs(x - sum_goal))

            ans = min(ans, abs(sum_l + sum_r - goal))

    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([5], 5) == 0
	assert candidate([5], 10) == 5
	assert candidate([1, 2, 3], 2) == 0
	assert candidate([1, 2, 3, 4, 5], 7) == 0
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 33) == 0
	assert candidate([1, -1, 1, -1, 1, -1, 1, -1], 2) == 0
	assert candidate([-3, 7, -15, -20, 5], 5) == 0
	assert candidate([1, 2, 3, 4, 5], 10) == 0
	assert candidate([4, 7, -1, 2, -2, 5, 6, 1, 8, 3], 10) == 0
	assert candidate([1, -1, 1, -1, 1, -1, 1, -1], 1) == 0
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 11) == 0
	assert candidate([-12, -8, -8, 4, -12, 10, -12, -3, -14, -12, -8, -8],
                        -3) == 0
	assert candidate([-3, 7, -15, -20, 5], 6) == 1
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5) == 0
	assert candidate([-2, 4, -4, 6, 8, -9], 3) == 0
	assert candidate(
    [-7, -13, 5, 13, 2, 8, 13, -14, -2, -15, 8, 10, -14, -12, -16, -13, -15, 10, -14], -35) == 0
	assert candidate([1, 2, 3], 5) == 0
	assert candidate([1, 2, 3], 3) == 0
	assert candidate(
    [-20, -30, -100, 60, 5, 40, 10, 80], 10) == 0
	assert candidate([1, 2, 3], 4) == 0
	assert candidate([1, 2, 3], 1) == 0
	assert candidate([1, -1, 1, -1, 1, -1, 1, -1], 0) == 0
	assert candidate(
    [-7, 15, -2, -10, 17, 3, 11, 12, -12, 5, -2, -4, 11, -4, 12], 12) == 0
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 55) == 0
	assert candidate([1, 2, 3], 6) == 0
	assert candidate([1, -1, 1, -1, 1, -1, 1, -1], 3) == 0
	assert candidate([-3, 7, -15, -20, 5], 11) == 1
	assert candidate(
    [-78, 50, 86, 92, -42, 98, -65, -46, 90, -12, 34], 70) == 0
	assert candidate([1, -1, 1, -1, 1, -1, 1, -1], -1) == 0
def test_check():
	check(minAbsDifference)
# Metadata Difficulty: Hard
# Metadata Topics: array,two-pointers,dynamic-programming,bit-manipulation,bitmask
# Metadata Coverage: 100
