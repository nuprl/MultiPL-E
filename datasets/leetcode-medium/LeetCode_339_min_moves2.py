from typing import List


def min_moves2(nums: List[int]) -> int:
    """
    Given an integer array nums of size n, return the minimum number of moves required to make all array elements equal.
    In one move, you can increment or decrement an element of the array by 1.
    Test cases are designed so that the answer will fit in a 32-bit integer.
 
    Example 1:

    Input: nums = [1,2,3]
    Output: 2
    Explanation:
    Only two moves are needed (remember each move increments or decrements one element):
    [1,2,3]  =>  [2,2,3]  =>  [2,2,2]

    Example 2:

    Input: nums = [1,10,2,9]
    Output: 16

 
    Constraints:

    n == nums.length
    1 <= nums.length <= 105
    -109 <= nums[i] <= 109

    """
    ### Canonical solution below ###
    nums.sort()
    mid = nums[len(nums) // 2]
    moves = 0
    for num in nums:
        moves += abs(num - mid)
    return moves




### Unit tests below ###
def check(candidate):
	assert candidate([-100,100,-200,200,-300,300]) == 1200
	assert candidate([5,5,5,5,5]) == 0
	assert candidate([1,10,2,9]) == 16
	assert candidate([-1,0,1]) == 2
	assert candidate([0,1,1,1,1,1,1,1,1,1,2]) == 2
	assert candidate([1,2,3]) == 2
	assert candidate([1,1,1,1]) == 0
	assert candidate([-10,10]) == 20
	assert candidate([0,1000000000,-1000000000]) == 2000000000
	assert candidate([1,2,2,2]) == 1
	assert candidate([0,0,0,0]) == 0
	assert candidate([-1,-2,-3]) == 2
	assert candidate([1,1,2,2,3,3]) == 4
def test_check():
	check(min_moves2)
# Metadata Difficulty: Medium
# Metadata Topics: array,math,sorting
# Metadata Coverage: 100
