from typing import List


def is_ideal_permutation(nums: List[int]) -> bool:
    """
    You are given an integer array nums of length n which represents a permutation of all the integers in the range [0, n - 1].
    The number of global inversions is the number of the different pairs (i, j) where:

    0 <= i < j < n
    nums[i] > nums[j]

    The number of local inversions is the number of indices i where:

    0 <= i < n - 1
    nums[i] > nums[i + 1]

    Return true if the number of global inversions is equal to the number of local inversions.
 
    Example 1:

    Input: nums = [1,0,2]
    Output: true
    Explanation: There is 1 global inversion and 1 local inversion.

    Example 2:

    Input: nums = [1,2,0]
    Output: false
    Explanation: There are 2 global inversions and 1 local inversion.

 
    Constraints:

    n == nums.length
    1 <= n <= 105
    0 <= nums[i] < n
    All the integers of nums are unique.
    nums is a permutation of all the numbers in the range [0, n - 1].

    """
    ### Canonical solution below ###
    for i, num in enumerate(nums):
        if abs(num - i) > 1:
            return False
    return True




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 0]) == False
	assert candidate([0, 1, 2, 3]) == True
	assert candidate(
    [9, 8, 4, 2, 1, 3, 6, 7, 5, 10, 11, 0]) == False
	assert candidate([0, 2, 1, 5, 4, 6, 7, 3, 8, 9, 10, 11]) == False
	assert candidate([0, 3, 1, 2]) == False
	assert candidate(
    [0, 1, 3, 2, 5, 4, 6, 8, 9, 7, 11, 10, 12, 13, 15, 14, 16, 17, 18, 19]) == False
	assert candidate([2, 0, 1, 3]) == False
	assert candidate([0, 5, 2, 3, 4, 1, 6, 7, 8, 9, 10, 11]) == False
	assert candidate([8, 1, 0, 2]) == False
	assert candidate([3, 1, 2, 0]) == False
	assert candidate([1, 3, 0, 2]) == False
	assert candidate(
    [0, 5, 2, 3, 4, 1, 6, 7, 8, 9, 10, 11]) == False
	assert candidate([1, 0, 2]) == True
	assert candidate([2, 3, 1, 5, 4, 0]) == False
	assert candidate(
    [4, 1, 0, 3, 2, 7, 6, 5, 11, 10, 9, 12, 8, 13, 14, 15, 16]) == False
	assert candidate([0]) == True
	assert candidate([4, 3, 1, 5, 2, 0]) == False
	assert candidate(
    [0, 2, 1, 5, 4, 6, 7, 3, 9, 11, 10, 8]) == False
	assert candidate([1, 2, 0, 3, 4, 5]) == False
	assert candidate(
    [1, 0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]) == True
	assert candidate([0, 1, 2]) == True
	assert candidate([0, 2, 3, 1]) == False
	assert candidate(
    [0, 2, 1, 5, 4, 6, 7, 3, 9, 10, 11, 8]) == False
	assert candidate([2, 3, 1, 5, 0, 4]) == False
	assert candidate(
    [0, 1, 3, 2, 5, 4, 7, 8, 9, 6, 11, 10, 12, 13, 15, 14, 16, 17, 18, 19]) == False
	assert candidate([1, 2, 0, 3]) == False
	assert candidate([1, 0, 3, 5, 2, 4]) == False
	assert candidate([1, 5, 0, 2, 4, 6, 3, 7, 8, 9, 10, 11]) == False
	assert candidate([1, 0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == True
	assert candidate([1, 0, 2, 3, 4, 5]) == True
	assert candidate([1, 4, 2, 5, 0, 3]) == False
	assert candidate(
    [0, 1, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 12, 13, 15, 14, 16, 17, 18, 19]) == True
	assert candidate([2, 0, 1]) == False
	assert candidate([0, 1, 2, 3, 4, 5]) == True
	assert candidate(
    [4, 1, 0, 3, 2, 7, 6, 5, 11, 10, 9, 8, 12, 13, 14, 15, 16]) == False
	assert candidate(
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == True
	assert candidate([4, 1, 0, 3, 2, 7, 6, 5, 11, 10, 9, 8, 13, 14, 15, 16, 12]) == False
	assert candidate([1, 0]) == True
	assert candidate([3, 0, 1, 2]) == False
	assert candidate([1, 3, 2, 0]) == False
def test_check():
	check(is_ideal_permutation)
# Metadata Difficulty: Medium
# Metadata Topics: array,math
# Metadata Coverage: 100
