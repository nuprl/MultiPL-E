from typing import List


def array_pair_sum(nums: List[int]) -> int:
    """
    Given an integer array nums of 2n integers, group these integers into n pairs (a1, b1), (a2, b2), ..., (an, bn) such that the sum of min(ai, bi) for all i is maximized. Return the maximized sum.
 
    Example 1:

    Input: nums = [1,4,3,2]
    Output: 4
    Explanation: All possible pairings (ignoring the ordering of elements) are:
    1. (1, 4), (2, 3) -> min(1, 4) + min(2, 3) = 1 + 2 = 3
    2. (1, 3), (2, 4) -> min(1, 3) + min(2, 4) = 1 + 2 = 3
    3. (1, 2), (3, 4) -> min(1, 2) + min(3, 4) = 1 + 3 = 4
    So the maximum possible sum is 4.
    Example 2:

    Input: nums = [6,2,6,5,1,2]
    Output: 9
    Explanation: The optimal pairing is (2, 1), (2, 5), (6, 6). min(2, 1) + min(2, 5) + min(6, 6) = 1 + 2 + 6 = 9.

 
    Constraints:

    1 <= n <= 104
    nums.length == 2 * n
    -104 <= nums[i] <= 104

    """
    ### Canonical solution below ###
    nums.sort()
    return sum(nums[::2])




### Unit tests below ###
def check(candidate):
	assert candidate([-1, -1, 1, 1]) == 0
	assert candidate([1, 4, 3, 2]) == 4
	assert candidate([-5, -5, -5, -5, 5, 5, 5, 5]) == 0
	assert candidate([1, 1, 2, 2, 3, 3, 4, 4]) == 10
	assert candidate([104, 104, 104, 104]) == 208
	assert candidate([1, 1, 1, 1]) == 2
	assert candidate([2, 2, 2, 2, 2, 2, 2, 2, 2, 2]) == 10
	assert candidate([-4, -3, -2, -1]) == -6
	assert candidate([0, 0, 0, 0]) == 0
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8]) == 16
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 25
	assert candidate([6, 2, 6, 5, 1, 2]) == 9
	assert candidate([-10, -9, -8, -7, -6, -5, -4, -3, -2, -1]) == -30
def test_check():
	check(array_pair_sum)
# Metadata Difficulty: Easy
# Metadata Topics: array,greedy,sorting,counting-sort
# Metadata Coverage: 100
