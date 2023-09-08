from typing import List


def movesToMakeZigzag(nums: List[int]) -> int:
    """
    Given an array nums of integers, a move consists of choosing any element and decreasing it by 1.
    An array A is a zigzag array if either:

    Every even-indexed element is greater than adjacent elements, ie. A[0] > A[1] < A[2] > A[3] < A[4] > ...
    OR, every odd-indexed element is greater than adjacent elements, ie. A[0] < A[1] > A[2] < A[3] > A[4] < ...

    Return the minimum number of moves to transform the given array nums into a zigzag array.
 
    Example 1:

    Input: nums = [1,2,3]
    Output: 2
    Explanation: We can decrease 2 to 0 or 3 to 1.

    Example 2:

    Input: nums = [9,6,1,6,2]
    Output: 4

 
    Constraints:

    1 <= nums.length <= 1000
    1 <= nums[i] <= 1000

    """
    ### Canonical solution below ###
    even_moves, odd_moves = 0, 0
    for i in range(len(nums)):
        left = nums[i - 1] if i > 0 else 1001
        right = nums[i + 1] if i < len(nums) - 1 else 1001
        min_value = min(left, right)
        if nums[i] >= min_value:
            if i % 2 == 0:
                even_moves += nums[i] - min_value + 1
            else:
                odd_moves += nums[i] - min_value + 1
    return min(even_moves, odd_moves)




### Unit tests below ###
def check(candidate):
	assert candidate([2, 2, 2, 1, 2]) == 1
	assert candidate([2, 2, 2, 2, 1]) == 2
	assert candidate([1, 1, 1]) == 1
	assert candidate([1]) == 0
	assert candidate([2, 2]) == 1
	assert candidate([1000, 1, 1000]) == 0
	assert candidate(
    [1000, 1, 1000, 1, 1000, 1, 1000, 1, 1000, 1, 1000, 1, 1000, 1, 1000, 1, 1000, 1, 1000, 1, 1000, 1, 1000, 1, 1000,
     1, 1000, 1, 1000, 1, 1000, 1, 1000, 1, 1000]) == 0
	assert candidate([1, 3, 2, 4]) == 0
	assert candidate([1, 2, 3]) == 2
	assert candidate([5, 4, 3, 2, 1]) == 4
	assert candidate([1, 1000, 1, 1000, 1, 1000, 1, 1000]) == 0
	assert candidate([1, 1, 1, 1]) == 2
	assert candidate([3, 2, 1, 0, -1]) == 4
	assert candidate([9, 6, 1, 6, 2]) == 4
	assert candidate([1, 2, 1, 2, 1, 2, 1, 2, 1, 2]) == 0
def test_check():
	check(movesToMakeZigzag)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy
# Metadata Coverage: 100
