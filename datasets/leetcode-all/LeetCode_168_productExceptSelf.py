from typing import List


def productExceptSelf(nums: List[int]) -> List[int]:
    """
    Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
    The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
    You must write an algorithm that runs in O(n) time and without using the division operation.
 
    Example 1:
    Input: nums = [1,2,3,4]
    Output: [24,12,8,6]
    Example 2:
    Input: nums = [-1,1,0,-3,3]
    Output: [0,0,9,0,0]

 
    Constraints:

    2 <= nums.length <= 105
    -30 <= nums[i] <= 30
    The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 
    Follow up: Can you solve the problem in O(1) extra space complexity? (The output array does not count as extra space for space complexity analysis.)
    """
    ### Canonical solution below ###
    n = len(nums)
    answer = [1] * n

    left = 1
    for i in range(n):
        answer[i] *= left
        left *= nums[i]

    right = 1
    for i in range(n - 1, -1, -1):
        answer[i] *= right
        right *= nums[i]

    return answer




### Unit tests below ###
def check(candidate):
	assert candidate([30, -30]) == [-30, 30]
	assert candidate([1, 1, 1, 1, 1]) == [1, 1, 1, 1, 1]
	assert candidate([0, 0]) == [0, 0]
	assert candidate([1, 2, 3, 4]) == [24, 12, 8, 6]
	assert candidate([2, 2]) == [2, 2]
	assert candidate([0, 0, 0]) == [0, 0, 0]
	assert candidate([1, -1]) == [-1, 1]
	assert candidate([-1, -1, -1, -1, -1]) == [1, 1, 1, 1, 1]
	assert candidate([3, 4, 5]) == [20, 15, 12]
	assert candidate([0, 0, 1]) == [0, 0, 0]
	assert candidate([1, 2, 0, 3, 4]) == [0, 0, 24, 0, 0]
	assert candidate([-1, 1, 0, -3, 3]) == [0, 0, 9, 0, 0]
	assert candidate([0, 5, 10, 15]) == [750, 0, 0, 0]
def test_check():
	check(productExceptSelf)
# Metadata Difficulty: Medium
# Metadata Topics: array,prefix-sum
# Metadata Coverage: 100
