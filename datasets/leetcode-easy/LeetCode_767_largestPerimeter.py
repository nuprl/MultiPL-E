from typing import List


def largestPerimeter(nums: List[int]) -> int:
    """
    Given an integer array nums, return the largest perimeter of a triangle with a non-zero area, formed from three of these lengths. If it is impossible to form any triangle of a non-zero area, return 0.
 
    Example 1:

    Input: nums = [2,1,2]
    Output: 5
    Explanation: You can form a triangle with three side lengths: 1, 2, and 2.

    Example 2:

    Input: nums = [1,2,1,10]
    Output: 0
    Explanation: 
    You cannot use the side lengths 1, 1, and 2 to form a triangle.
    You cannot use the side lengths 1, 1, and 10 to form a triangle.
    You cannot use the side lengths 1, 2, and 10 to form a triangle.
    As we cannot use any three side lengths to form a triangle of non-zero area, we return 0.

 
    Constraints:

    3 <= nums.length <= 104
    1 <= nums[i] <= 106

    """
    ### Canonical solution below ###
    nums.sort(reverse=True)

    for i in range(len(nums) - 2):
        if nums[i] < nums[i + 1] + nums[i + 2]:
            return nums[i] + nums[i + 1] + nums[i + 2]

    return 0




### Unit tests below ###
def check(candidate):
	assert candidate([0, 1, 1]) == 0
	assert candidate([1, 2, 3, 4, 5]) == 12
	assert candidate([2, 3, 2, 3]) == 8
	assert candidate([1, 3, 3, 5, 5]) == 13
	assert candidate([2, 1, 2]) == 5
	assert candidate([10, 10, 5, 1]) == 25
	assert candidate([10, 2, 10, 10]) == 30
	assert candidate([3, 6, 2]) == 0
	assert candidate([10, 10, 10, 10]) == 30
	assert candidate([2, 4, 4, 2]) == 10
	assert candidate([10, 10, 10]) == 30
	assert candidate([10, 10, 5, 2]) == 25
	assert candidate([1, 2, 3]) == 0
	assert candidate([3, 4, 5, 6]) == 15
	assert candidate([2, 4, 6, 8]) == 18
def test_check():
	check(largestPerimeter)
# Metadata Difficulty: Easy
# Metadata Topics: array,math,greedy,sorting
# Metadata Coverage: 100
