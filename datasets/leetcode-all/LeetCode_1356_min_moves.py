from typing import List


def min_moves(nums: List[int], k: int) -> int:
    """
    You are given an integer array, nums, and an integer k. nums comprises of only 0's and 1's. In one move, you can choose two adjacent indices and swap their values.
    Return the minimum number of moves required so that nums has k consecutive 1's.
 
    Example 1:

    Input: nums = [1,0,0,1,0,1], k = 2
    Output: 1
    Explanation: In 1 move, nums could be [1,0,0,0,1,1] and have 2 consecutive 1's.

    Example 2:

    Input: nums = [1,0,0,0,0,0,1,1], k = 3
    Output: 5
    Explanation: In 5 moves, the leftmost 1 can be shifted right until nums = [0,0,0,0,0,1,1,1].

    Example 3:

    Input: nums = [1,1,0,1], k = 2
    Output: 0
    Explanation: nums already has 2 consecutive 1's.

 
    Constraints:

    1 <= nums.length <= 105
    nums[i] is 0 or 1.
    1 <= k <= sum(nums)

    """
    ### Canonical solution below ###
    n = len(nums)
    ones = [i - j for i, j in enumerate(nums) if j == 1]

    moves = sum(ones[i] - ones[k // 2] for i in range(k))
    min_moves = moves

    for i in range(k, len(ones)):
        moves += ones[i] - ones[i - k] - k
        min_moves = min(min_moves, moves)

    return min_moves




### Unit tests below ###
def check(candidate):
	assert candidate(
    [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1],
    11,
) == 0
	assert candidate([1,0,1,0,1,0,1,0,1,0], 5) == 0
	assert candidate([0,0,0,0,0,0,0,0,0,1], 1) == 0
	assert candidate([1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1],
                 5) == 0
def test_check():
	check(min_moves)
# Metadata Difficulty: Hard
# Metadata Topics: array,greedy,sliding-window,prefix-sum
# Metadata Coverage: 100
