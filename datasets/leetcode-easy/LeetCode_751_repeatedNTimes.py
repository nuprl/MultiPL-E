from typing import List


def repeatedNTimes(nums: List[int]) -> int:
    """
    You are given an integer array nums with the following properties:

    nums.length == 2 * n.
    nums contains n + 1 unique elements.
    Exactly one element of nums is repeated n times.

    Return the element that is repeated n times.
 
    Example 1:
    Input: nums = [1,2,3,3]
    Output: 3
    Example 2:
    Input: nums = [2,1,2,5,3,2]
    Output: 2
    Example 3:
    Input: nums = [5,1,5,2,5,3,5,4]
    Output: 5

 
    Constraints:

    2 <= n <= 5000
    nums.length == 2 * n
    0 <= nums[i] <= 104
    nums contains n + 1 unique elements and one of them is repeated exactly n times.

    """
    ### Canonical solution below ###
    hash_map = {}
    for num in nums:
        if num in hash_map:
            return num
        else:
            hash_map[num] = 1




### Unit tests below ###
def check(candidate):
	assert candidate(
    [1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,1,21,22,23,24,25]) == 1
	assert candidate([8,8,7,5,3]) == 8
	assert candidate([10,30,20,20,40,50,60,70]) == 20
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,16,17,18,19,20]) == 16
	assert candidate([5,8,5,9,10,11,12,13,14,15]) == 5
	assert candidate([1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11]) == 1
	assert candidate(
    [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11]) == 1
	assert candidate(
    [1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15,16,16,17,17,18,18,19,19,20,20]) == 1
	assert candidate(
    [3,2,2,1,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27]) == 2
	assert candidate([9,5,6,9]) == 9
	assert candidate([20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,1]) == 1
	assert candidate([10,20,30,40,40,50,60,70,80,90]) == 40
	assert candidate([3,1,4,2,2]) == 2
	assert candidate([5,5,4,3,2,1]) == 5
	assert candidate(
    [10000, 10000, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10000]) == 10000
	assert candidate([7,7,10,10,11,11,12,12,13,13,14,14,15,15,16,16,17,17,18,18,19,19,20,20]) == 7
	assert candidate([9,9,10,10,11,11,12,12,13,13,14,14,15,15,16,16]) == 9
	assert candidate([1, 2, 1, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10]) == 1
	assert candidate([2,3,4,5,1,1]) == 1
	assert candidate([2,2,1,3,4,5,6,7,8,9,10]) == 2
	assert candidate([1,2,3,4,4]) == 4
	assert candidate([2,1,2,5,3,2]) == 2
	assert candidate([6,1,5,6,4,6]) == 6
	assert candidate([10,20,30,40,50,50,60,70,80,90]) == 50
	assert candidate([5,1,5,2,5,3,5,4]) == 5
	assert candidate([10,10,1,2,3,4,5,6,7,8,9]) == 10
	assert candidate([1,2,3,3]) == 3
def test_check():
	check(repeatedNTimes)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table
# Metadata Coverage: 100
