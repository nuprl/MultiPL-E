from typing import List


def canJump(nums: List[int]) -> bool:
    """
    You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position.
    Return true if you can reach the last index, or false otherwise.
 
    Example 1:

    Input: nums = [2,3,1,1,4]
    Output: true
    Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.

    Example 2:

    Input: nums = [3,2,1,0,4]
    Output: false
    Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.

 
    Constraints:

    1 <= nums.length <= 104
    0 <= nums[i] <= 105

    """
    ### Canonical solution below ###
    max_reach = 0
    for i, num in enumerate(nums):
        if i > max_reach:
            return False
        max_reach = max(max_reach, i + num)
    return True




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,1,1,1,0]) == True
	assert candidate([2,0,1,0,1]) == False
	assert candidate([1,2,1,1,0]) == True
	assert candidate([1,0,2]) == False
	assert candidate([1, 1, 1, 1, 1]) == True
	assert candidate([1,1,1,1,1,1,1,1,1,1]) == True
	assert candidate([2,3,1,1,4]) == True
	assert candidate([0,1,2,3,1,0,0,4]) == False
	assert candidate([2,0,1]) == True
	assert candidate([10,9,8,7,6,5,4,3,2,1,0]) == True
	assert candidate([0,1,2,3,4]) == False
	assert candidate([0, 2, 3]) == False
	assert candidate([5, 4, 3, 2, 1, 0, 1]) == False
	assert candidate([2,0,0,0,3,0,0]) == False
	assert candidate([2,0]) == True
	assert candidate([5,4,3,2,1,0,1]) == False
	assert candidate(
    [5,4,3,2,1,2,3,4,5,6,7,8,9,10,11,2,1,1,0,10]) == True
	assert candidate(
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0]) == True
	assert candidate([0, 1, 2, 3, 1, 0, 0, 4]) == False
	assert candidate([2,0,0,1]) == False
	assert candidate([1, 3, 2, 1, 0, 4]) == False
	assert candidate([2, 3, 1, 1, 4]) == True
	assert candidate([2,5,0,0]) == True
	assert candidate([1,2,3,4,5]) == True
	assert candidate([1,1,1,1,1]) == True
	assert candidate([1, 0]) == True
	assert candidate([1,0,1]) == False
	assert candidate([2,1,0,1,1]) == False
	assert candidate([1,2,1,0,1]) == False
	assert candidate([0]) == True
	assert candidate([0,2,3]) == False
	assert candidate([1,3,2,2,0,2,0]) == True
	assert candidate([2,0,0,0,1]) == False
	assert candidate([2,1,0,0,1]) == False
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,0]) == True
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,0,1]) == False
	assert candidate([2,0,2,0,1]) == True
	assert candidate([3,1,1,0,0]) == False
	assert candidate([2, 0, 2, 0, 1]) == True
	assert candidate([1,2,0,1]) == True
	assert candidate([1,1,1,1,1,1,1,1,1,0,1]) == False
	assert candidate([1,3,2,1,0,4]) == False
	assert candidate([2,0,4,0,1]) == True
	assert candidate([2, 5, 0, 0]) == True
	assert candidate([3,1,2,0,1]) == True
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0]) == True
	assert candidate([2,4,0,1]) == True
	assert candidate([1, 2, 1, 1, 0]) == True
	assert candidate([3,2,1,0,4]) == False
def test_check():
	check(canJump)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,greedy
# Metadata Coverage: 100
