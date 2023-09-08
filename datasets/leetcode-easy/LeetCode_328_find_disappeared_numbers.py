from typing import List


def find_disappeared_numbers(nums: List[int]) -> List[int]:
    """
    Given an array nums of n integers where nums[i] is in the range [1, n], return an array of all the integers in the range [1, n] that do not appear in nums.
 
    Example 1:
    Input: nums = [4,3,2,7,8,2,3,1]
    Output: [5,6]
    Example 2:
    Input: nums = [1,1]
    Output: [2]

 
    Constraints:

    n == nums.length
    1 <= n <= 105
    1 <= nums[i] <= n

 
    Follow up: Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.
    """
    ### Canonical solution below ###
    result = []

    for num in nums:
        index = abs(num) - 1
        nums[index] = -abs(nums[index])

    for i, num in enumerate(nums):
        if num > 0:
            result.append(i + 1)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == [
    2, 3, 4, 5, 6, 7, 8, 9, 10]
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == []
	assert candidate([4,3,2,7,8,2,3,1]) == [5,6]
	assert candidate([5,5,5,5,5,5,5,5,5,5]) == [1,2,3,4,6,7,8,9,10]
	assert candidate([3, 2, 2, 2, 2, 2, 2, 2, 2, 2]) == [1, 4, 5, 6, 7, 8, 9, 10]
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == []
	assert candidate([10,10,10,10,10,10,10,10,10,10]) == [1,2,3,4,5,6,7,8,9]
	assert candidate([1,2,3,4,5,6,7,8,9,9]) == [10]
	assert candidate([9,9,9,9,9,9,9,9,9,10]) == [1,2,3,4,5,6,7,8]
	assert candidate([2,2,2,2,2,2,2,2,2,2]) == [1,3,4,5,6,7,8,9,10]
	assert candidate(
    [3, 2, 2, 2, 2, 2, 2, 2, 2, 1]) == [4, 5, 6, 7, 8, 9, 10]
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 10, 10]) == [9]
	assert candidate([1,2,3,4,5,6,7,8,10,10]) == [9]
	assert candidate([1,1]) == [2]
	assert candidate([1,1,1,1,1,1,1,1,1,1]) == [2,3,4,5,6,7,8,9,10]
	assert candidate(
    [5, 5, 5, 5, 5, 5, 5, 5, 5, 5]) == [1, 2, 3, 4, 6, 7, 8, 9, 10]
	assert candidate([1,2,2,2,2,2,2,2,2,2]) == [3,4,5,6,7,8,9,10]
	assert candidate([1, 1]) == [2]
	assert candidate(
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 2]) == [3, 4, 5, 6, 7, 8, 9, 10]
	assert candidate(
    [2, 2, 2, 2, 2, 2, 2, 2, 2, 3]) == [1, 4, 5, 6, 7, 8, 9, 10]
	assert candidate([1,2,3,4,5,5,5,5,5,5]) == [6,7,8,9,10]
	assert candidate([1]) == []
	assert candidate([4, 3, 2, 7, 8, 2, 3, 1]) == [5, 6]
	assert candidate([]) == []
	assert candidate([1, 2, 2, 2, 2, 2, 2, 2, 2, 2]) == [3, 4, 5, 6, 7, 8, 9, 10]
	assert candidate(
    [9, 9, 9, 9, 9, 9, 9, 9, 9, 10]) == [1, 2, 3, 4, 5, 6, 7, 8]
def test_check():
	check(find_disappeared_numbers)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table
# Metadata Coverage: 100
