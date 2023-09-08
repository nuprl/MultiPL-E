from typing import List


def find132pattern(nums: List[int]) -> bool:
    """
    Given an array of n integers nums, a 132 pattern is a subsequence of three integers nums[i], nums[j] and nums[k] such that i < j < k and nums[i] < nums[k] < nums[j].
    Return true if there is a 132 pattern in nums, otherwise, return false.
 
    Example 1:

    Input: nums = [1,2,3,4]
    Output: false
    Explanation: There is no 132 pattern in the sequence.

    Example 2:

    Input: nums = [3,1,4,2]
    Output: true
    Explanation: There is a 132 pattern in the sequence: [1, 4, 2].

    Example 3:

    Input: nums = [-1,3,2,0]
    Output: true
    Explanation: There are three 132 patterns in the sequence: [-1, 3, 2], [-1, 3, 0] and [-1, 2, 0].

 
    Constraints:

    n == nums.length
    1 <= n <= 2 * 105
    -109 <= nums[i] <= 109

    """
    ### Canonical solution below ###
    third, stack = float('-inf'), []
    for num in reversed(nums):
        if num < third:
            return True
        while stack and stack[-1] < num:
            third = stack.pop()
        stack.append(num)
    return False




### Unit tests below ###
def check(candidate):
	assert candidate([3, 5, 0, 3, 4]) == True
	assert candidate([5, 4, 3, 2, 1]) == False
	assert candidate([1, 2, 3, 5, 6, 4]) == True
	assert candidate([1, 2, 3, 4, 5, 0, 1, 2, 3, 4, 5]) == True
	assert candidate([1, 2, 3, 5, 4]) == True
	assert candidate([1, 2, 3, 4, 2, 1]) == True
	assert candidate([4, 3, 2, 1, 2, 3, 1, 2, 3, 1, 3, 2]) == True
	assert candidate([2, 3, 1, 4, 4, 5, 6, 0, 1, 2, 3, 4, 5, 6]) == True
	assert candidate([3, 1, 4, 2]) == True
	assert candidate(
    [-1, 0, 1, 2, -1, -4, -1, 2, 1, 0, 1, -1, 2, 2, 2, -1, -1, 1, 2, 2, -1, 2, -1]) == True
	assert candidate([1, 2, 3, 4, 5, 6, 4, 3, 2, 1]) == True
	assert candidate([3, 1, 4, 5, 2]) == True
	assert candidate([1, 3, 2]) == True
	assert candidate([2, 1]) == False
	assert candidate(
    [-5, 5, -5, 4, -5, 3, -5, 2, -5, 1, -5, 0, -5, -5, -5, -5, -5, -5, -5]) == True
	assert candidate([1, 2, 3, 4, 5, 0, 3, 2, 1, 2, 3]) == True
	assert candidate([1, 3, 2, 4, 5, 6]) == True
	assert candidate([1, 3, 2, 4, 5, 6, 7, 8, 9]) == True
	assert candidate([1, 2, 3, 1]) == False
	assert candidate([-1, 3, 2, 0, 3, 2, 1]) == True
	assert candidate([1]) == False
	assert candidate([1, 2, 3, 4, 3, 2, 6, 10, 9, 11]) == True
	assert candidate(
    [-3, -2, 0, -2, -2, -1, -3, -2, -2, -2, -3, -1, 0, 1, 2, 2, 2, 3, 2, -1]) == True
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == False
	assert candidate([1, 3, 2, 4, 5, 6, 7, 8]) == True
	assert candidate([1, 2, 3, 4, 5, 0, 1, 2, 3, 4, 5, 0, 1, 2, 3, 4, 5]) == True
	assert candidate([1, 0, 1, -4, -3]) == False
	assert candidate([0, 1, 1, 1]) == False
	assert candidate([1, 0, 1, 0]) == False
	assert candidate([3, 5, 0, 1]) == False
	assert candidate(
    [3, 1, 4, 2, 5, 1, 2, 0, 1, -1, 0, -2, 2, 1, -3, 3, -1, 1, -2, 1, -1, -1, 0, 2, 3, 3, -2, -2, -3, -2, -2, 2, -3, 3, -2, -3, -2, 0, -2, -3]) == True
	assert candidate([1, 3, 2, 4, 5, 6, 7, 8, 9, 10]) == True
	assert candidate([3, 2, 1]) == False
	assert candidate([1, 3, 2, 4, 5, 6, 2]) == True
	assert candidate([2, 1, 3]) == False
	assert candidate([0, 0, 0, 0]) == False
	assert candidate([1, 2, 3, 4, 3, 1, 2, 5]) == True
	assert candidate([1, 0, 1, -1, 1, -1, 1, 0, 1, -1, 1, -1]) == True
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == False
	assert candidate([1, 2, 3, 4]) == False
	assert candidate([1, 2]) == False
	assert candidate([1, 2, 3, 0]) == False
	assert candidate([1, 2, 3, -1, 4, 5]) == False
	assert candidate([1, 2, 3, 2, 1]) == True
	assert candidate([2, 4, 3, 5]) == True
	assert candidate([3, 1, 4, 2, 5]) == True
	assert candidate([1, 3, 2, 4, 5, 6, 7]) == True
	assert candidate([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == False
	assert candidate([-1, 3, 2, 0]) == True
def test_check():
	check(find132pattern)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search,stack,monotonic-stack,ordered-set
# Metadata Coverage: 100
