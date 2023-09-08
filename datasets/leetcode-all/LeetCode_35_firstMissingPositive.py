from typing import List


def firstMissingPositive(nums: List[int]) -> int:
    """
    Given an unsorted integer array nums, return the smallest missing positive integer.
    You must implement an algorithm that runs in O(n) time and uses O(1) auxiliary space.
 
    Example 1:

    Input: nums = [1,2,0]
    Output: 3
    Explanation: The numbers in the range [1,2] are all in the array.

    Example 2:

    Input: nums = [3,4,-1,1]
    Output: 2
    Explanation: 1 is in the array but 2 is missing.

    Example 3:

    Input: nums = [7,8,9,11,12]
    Output: 1
    Explanation: The smallest positive integer 1 is missing.

 
    Constraints:

    1 <= nums.length <= 105
    -231 <= nums[i] <= 231 - 1

    """
    ### Canonical solution below ###
    n = len(nums)
    for i in range(n):
        while 1 <= nums[i] <= n and nums[nums[i] - 1] != nums[i]:
            nums[nums[i] - 1], nums[i] = nums[i], nums[nums[i] - 1]

    for i in range(n):
        if nums[i] != i + 1:
            return i + 1
    return n + 1




### Unit tests below ###
def check(candidate):
	assert candidate([3, 4, -1, 1]) == 2
	assert candidate(
    [5, 4, 3, 2, 1]) == 6
	assert candidate([1, 1, 1, 1]) == 2
	assert candidate([1]) == 2
	assert candidate([2]) == 1
	assert candidate([1, 2, 5, 7, 9, 11]) == 3
	assert candidate([7, 8, 9, 11, 12]) == 1
	assert candidate([1, 2, 3, 4, 5]) == 6
	assert candidate([1, 2, 3, 5, 5, 6, 6, 7, 8, 9, 10]) == 4
	assert candidate(
    [0, 2, 1, 4, 3, 6, 5, -2, 7, 9, 8, 11, 10, 12, 13, 14, 15, 16, 17, 18]) == 19
	assert candidate(
    [3, 4, -1, 1]) == 2
	assert candidate([1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3]) == 4
	assert candidate(
    [1, 1, 1, 1]) == 2
	assert candidate([-1, -2, -3, -4]) == 1
	assert candidate(
    [7, 8, 9, 11, 12]) == 1
	assert candidate(
    [-1]) == 1
	assert candidate(
    [-2, -3, -5, -1, -7, -10, -11, -12, -13, -15, -16, -17, -18, -19, -20, 2, 1, 6, 7, 3]) == 4
	assert candidate([0]) == 1
	assert candidate([1, 2, 3, 4, 5, 7, 8, 9, 10]) == 6
	assert candidate([1, 2, 0]) == 3
	assert candidate([2, 3]) == 1
	assert candidate([2, 2, 2, 2, 3, 3, 3, 3]) == 1
	assert candidate(
    [1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3]) == 4
	assert candidate(
    [1, 2, 0]) == 3
	assert candidate(
    [0]) == 1
	assert candidate([100, 101, 102, 103, 104]) == 1
	assert candidate([2, 5, 6, 8, 11, 15]) == 1
	assert candidate(
    [2]) == 1
	assert candidate([0, 0, 0, 0]) == 1
	assert candidate([1, 1, 2, 2, 3, 3]) == 4
	assert candidate(
    [1, 2, 3, 5, 5, 6, 6, 7, 8, 9, 10]) == 4
	assert candidate([-1]) == 1
	assert candidate(
    [1, 2, 5, 7, 9, 11]) == 3
	assert candidate([5, 4, 3, 2, 1]) == 6
def test_check():
	check(firstMissingPositive)
# Metadata Difficulty: Hard
# Metadata Topics: array,hash-table
# Metadata Coverage: 100
