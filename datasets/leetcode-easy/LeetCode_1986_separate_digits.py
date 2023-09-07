from typing import List


def separate_digits(nums: List[int]) -> List[int]:
    """
    Given an array of positive integers nums, return an array answer that consists of the digits of each integer in nums after separating them in the same order they appear in nums.
    To separate the digits of an integer is to get all the digits it has in the same order.

    For example, for the integer 10921, the separation of its digits is [1,0,9,2,1].

 
    Example 1:

    Input: nums = [13,25,83,77]
    Output: [1,3,2,5,8,3,7,7]
    Explanation: 
    - The separation of 13 is [1,3].
    - The separation of 25 is [2,5].
    - The separation of 83 is [8,3].
    - The separation of 77 is [7,7].
    answer = [1,3,2,5,8,3,7,7]. Note that answer contains the separations in the same order.

    Example 2:

    Input: nums = [7,1,3,9]
    Output: [7,1,3,9]
    Explanation: The separation of each integer in nums is itself.
    answer = [7,1,3,9].

 
    Constraints:

    1 <= nums.length <= 1000
    1 <= nums[i] <= 105

    """
    ### Canonical solution below ###
    answer = []
    for num in nums:
        digits = [int(d) for d in str(num)]
        answer.extend(digits)
    return answer




### Unit tests below ###
def check(candidate):
	assert candidate([10, 20, 30, 40, 50, 60, 70, 80, 90]) == [1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 0, 8, 0, 9, 0]
	assert candidate([105, 205, 305]) == [1, 0, 5, 2, 0, 5, 3, 0, 5]
	assert candidate([99999]) == [9, 9, 9, 9, 9]
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9]) == [1, 2, 3, 4, 5, 6, 7, 8, 9]
	assert candidate([11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == [1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 8, 1, 9, 2, 0]
	assert candidate([1000000000]) == [1, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	assert candidate([1, 2]) == [1, 2]
	assert candidate([1995, 1968, 1972]) == [1, 9, 9, 5, 1, 9, 6, 8, 1, 9, 7, 2]
	assert candidate([13, 25, 83, 77]) == [1, 3, 2, 5, 8, 3, 7, 7]
	assert candidate([1010, 1020, 1030, 1040, 1050]) == [1, 0, 1, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 4, 0, 1, 0, 5, 0]
	assert candidate([12345]) == [1, 2, 3, 4, 5]
	assert candidate([100, 200, 300]) == [1, 0, 0, 2, 0, 0, 3, 0, 0]
	assert candidate([1]) == [1]
	assert candidate([]) == []
	assert candidate([10, 20, 30, 40, 50]) == [1, 0, 2, 0, 3, 0, 4, 0, 5, 0]
	assert candidate([5555, 7777, 9999, 6666, 1111]) == [5, 5, 5, 5, 7, 7, 7, 7, 9, 9, 9, 9, 6, 6, 6, 6, 1, 1, 1, 1]
	assert candidate([21, 32, 43, 54, 65, 76, 87, 98]) == [2, 1, 3, 2, 4, 3, 5, 4, 6, 5, 7, 6, 8, 7, 9, 8]
	assert candidate([11111, 22222, 33333]) == [1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3]
	assert candidate([100000, 200000, 300000, 400000, 500000]) == [1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0]
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
	assert candidate([7, 1, 3, 9]) == [7, 1, 3, 9]
	assert candidate([111, 222, 333, 444, 555]) == [1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5]
def test_check():
	check(separate_digits)
# Metadata Difficulty: Easy
# Metadata Topics: array,simulation
# Metadata Coverage: 100
