from typing import List


def moves_to_make_zigzag(nums: List[int]) -> int:
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
    moves1, moves2 = 0, 0
    for i in range(len(nums)):
        left = nums[i - 1] if i > 0 else float('inf')
        right = nums[i + 1] if i + 1 < len(nums) else float('inf')
        diff1 = nums[i] - min(left, right) + 1
        diff2 = nums[i] - min(left, right) + 1
        if i % 2 == 0:
            moves1 += max(0, diff1)
        else:
            moves2 += max(0, diff2)
    return min(moves1, moves2)




### Unit tests below ###
def check(candidate):
	assert candidate([1]) == 0
	assert candidate([1, 2, 3, 4]) == 2
	assert candidate([2, 2, 2, 2, 2, 2, 2, 2]) == 4
	assert candidate([10, 10, 10, 10, 20, 10, 20, 10]) == 2
	assert candidate([7, 4, 8, 9, 7, 7, 5]) == 6
	assert candidate(
    [1, 1000000000, 1000000000, 1000000000, 1000000000, 1000000000, 1000000000]) == 3
	assert candidate([2, 1, 1, 2, 1, 1, 2, 1]) == 4
	assert candidate([10, 4, 4, 10, 10, 6, 2, 10]) == 13
	assert candidate([9, 6, 1, 6, 2]) == 4
	assert candidate([2, 2, 2, 2, 2]) == 2
	assert candidate(
    [1, 1000000000, 1000000000, 1000000000, 1000000000, 1000000000, 1000000000, 1000000000]) == 3
def test_check():
	check(moves_to_make_zigzag)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy
# Metadata Coverage: 100
