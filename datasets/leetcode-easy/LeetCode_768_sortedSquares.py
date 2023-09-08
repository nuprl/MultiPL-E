from typing import List


def sortedSquares(nums: List[int]) -> List[int]:
    """
    Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.
 
    Example 1:

    Input: nums = [-4,-1,0,3,10]
    Output: [0,1,9,16,100]
    Explanation: After squaring, the array becomes [16,1,0,9,100].
    After sorting, it becomes [0,1,9,16,100].

    Example 2:

    Input: nums = [-7,-3,2,3,11]
    Output: [4,9,9,49,121]

 
    Constraints:

    1 <= nums.length <= 104
    -104 <= nums[i] <= 104
    nums is sorted in non-decreasing order.

 
    Follow up: Squaring each element and sorting the new array is very trivial, could you find an O(n) solution using a different approach?"""
    ### Canonical solution below ###
    return sorted([x ** 2 for x in nums])




### Unit tests below ###
def check(candidate):
	assert candidate(
    [-3, -2, -1, 0, 1, 2, 3, 5]) == [0, 1, 1, 4, 4, 9, 9, 25]
	assert candidate([-3, -2, 0, 2, 3]) == [0, 4, 4, 9, 9]
	assert candidate([0]) == [0]
	assert candidate([-5, -3, -1, 0, 1, 2, 3]) == [0, 1, 1, 4, 9, 9, 25]
	assert candidate([-4, -1, 0, 3, 10]) == [0, 1, 9, 16, 100]
	assert candidate([-3, -2, -1, 0, 1, 2, 3, 5]) == [0, 1, 1, 4, 4, 9, 9, 25]
	assert candidate([-5, -4, -3, -2, -1]) == [1, 4, 9, 16, 25]
	assert candidate([1, 2, 3, 4, 5]) == [1, 4, 9, 16, 25]
	assert candidate([-1]) == [1]
	assert candidate([-10, 10]) == [100, 100]
	assert candidate([-3, -2, 0, 2, 3, 5]) == [0, 4, 4, 9, 9, 25]
	assert candidate([-3, -2, -1, 0, 1, 2, 3]) == [0, 1, 1, 4, 4, 9, 9]
	assert candidate([-7, -3, 2, 3, 11]) == [4, 9, 9, 49, 121]
	assert candidate([1]) == [1]
	assert candidate([-50, -20, -10]) == [100, 400, 2500]
	assert candidate(
    []) == []
def test_check():
	check(sortedSquares)
# Metadata Difficulty: Easy
# Metadata Topics: array,two-pointers,sorting
# Metadata Coverage: 100
