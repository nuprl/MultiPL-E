from typing import List


def pivotIndex(nums: List[int]) -> int:
    """
    Given an array of integers nums, calculate the pivot index of this array.
    The pivot index is the index where the sum of all the numbers strictly to the left of the index is equal to the sum of all the numbers strictly to the index's right.
    If the index is on the left edge of the array, then the left sum is 0 because there are no elements to the left. This also applies to the right edge of the array.
    Return the leftmost pivot index. If no such index exists, return -1.
 
    Example 1:

    Input: nums = [1,7,3,6,5,6]
    Output: 3
    Explanation:
    The pivot index is 3.
    Left sum = nums[0] + nums[1] + nums[2] = 1 + 7 + 3 = 11
    Right sum = nums[4] + nums[5] = 5 + 6 = 11

    Example 2:

    Input: nums = [1,2,3]
    Output: -1
    Explanation:
    There is no index that satisfies the conditions in the problem statement.
    Example 3:

    Input: nums = [2,1,-1]
    Output: 0
    Explanation:
    The pivot index is 0.
    Left sum = 0 (no elements to the left of index 0)
    Right sum = nums[1] + nums[2] = 1 + -1 = 0

 
    Constraints:

    1 <= nums.length <= 104
    -1000 <= nums[i] <= 1000

 
    Note: This question is the same as 1991: https://leetcode.com/problems/find-the-middle-index-in-array/
    """
    ### Canonical solution below ###
    total_sum = sum(nums)
    left_sum = 0
    for i, num in enumerate(nums):
        if left_sum == total_sum - left_sum - num:
            return i
        left_sum += num
    return -1




### Unit tests below ###
def check(candidate):
	assert candidate([-1,0,0,0,1,1,0]) == 5
	assert candidate([-1,0,1]) == -1
	assert candidate([-1,1,-1,1,1,0,0]) == 4
	assert candidate(list(range(1000000))) == -1
	assert candidate([1,1,1,1,1,1,1,100]) == -1
	assert candidate([1,1,1,1,1,0,1,1,1]) == -1
	assert candidate([-1,0,0,0,0,0,1,1,0,0]) == 7
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == -1
	assert candidate([0,0,0,0,0,1]) == 5
	assert candidate([1,1,1,1,0,0]) == -1
	assert candidate([1,-1]) == -1
	assert candidate([1,1,1,1,1,1]) == -1
	assert candidate([-1,-1,-1,-1,1,1,1,1]) == -1
	assert candidate([1,2,1]) == 1
	assert candidate(range(10000)) == -1
	assert candidate([0]) == 0
	assert candidate([0,0,0,0,1,1,1]) == 5
	assert candidate([0,0,1,1,1,1]) == -1
	assert candidate([-1,0,-1]) == 1
	assert candidate([1,7,3,6,5,6]) == 3
	assert candidate([1,2,3]) == -1
	assert candidate([1000, -1000, 1000, -1000]) == -1
	assert candidate([1,2,3,4,5,6,7,8,9,10,11]) == -1
	assert candidate([-1,0,0,0,0,1,1,0]) == 6
	assert candidate([2,1,-1]) == 0
	assert candidate([1,2,3,4,5,6,7,8,9,0]) == -1
	assert candidate([-1,1]) == -1
	assert candidate([1,2,3,0,3,2,1]) == 3
	assert candidate([1,1,2,2,3,3,4,4,5,5,6,6,7,7]) == -1
	assert candidate([2,3,2,4,5]) == -1
	assert candidate(
    [-1000, -1000, -1000, 1000, 1000, 1000]) == -1
	assert candidate([-1,0,0,0,0,0,1,1,0]) == 7
	assert candidate([0,0,0,3,0,0,0]) == 3
	assert candidate([1,1,2,2,3,3,4,4,5,5,6]) == 7
	assert candidate([0,1,1,1,0]) == 2
def test_check():
	check(pivotIndex)
# Metadata Difficulty: Easy
# Metadata Topics: array,prefix-sum
# Metadata Coverage: 100
