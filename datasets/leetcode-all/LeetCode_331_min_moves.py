from typing import List


def min_moves(nums: List[int]) -> int:
    """
    Given an integer array nums of size n, return the minimum number of moves required to make all array elements equal.
    In one move, you can increment n - 1 elements of the array by 1.
 
    Example 1:

    Input: nums = [1,2,3]
    Output: 3
    Explanation: Only three moves are needed (remember each move increments two elements):
    [1,2,3]  =>  [2,3,3]  =>  [3,4,3]  =>  [4,4,4]

    Example 2:

    Input: nums = [1,1,1]
    Output: 0

 
    Constraints:

    n == nums.length
    1 <= nums.length <= 105
    -109 <= nums[i] <= 109
    The answer is guaranteed to fit in a 32-bit integer.

    """
    ### Canonical solution below ###
    min_element = min(nums)
    moves = sum(num - min_element for num in nums)
    return moves




### Unit tests below ###
def check(candidate):
	assert candidate([0,0,0,0,0]) == 0
	assert candidate([0 for _ in range(105)]) == 0
	assert candidate([-10,-5,-5,-5,-5]) == 20
	assert candidate([10,20,30,40,50]) == 100
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 45
	assert candidate([50,40,30,20,10]) == 100
	assert candidate(list(range(1, 11))) == 45
	assert candidate([-1,-2,-3,-4,-5]) == 10
	assert candidate([i for i in range(1, 11)]) == 45
	assert candidate([1,2,3,4,5,6,7,8,9,10,11]) == 55
	assert candidate([10**9 for _ in range(105)]) == 0
	assert candidate([5,5,5,5,5]) == 0
	assert candidate([-1,-1,-1,-1,-1]) == 0
	assert candidate([i for i in range(-10, 0)]) == 45
	assert candidate([1,2,2,2,2]) == 4
	assert candidate([1,1,1,1,1]) == 0
	assert candidate([1,2,3,4,5]) == 10
	assert candidate([-100 for i in range(105)]) == 0
	assert candidate([-10**9 for _ in range(105)]) == 0
	assert candidate([0,-1,-2,-3,-4]) == 10
	assert candidate([1,2,3]) == 3
	assert candidate([-10**9, -10**9 + 1]) == 1
	assert candidate([1,1,1]) == 0
	assert candidate([-i for i in range(1, 11)]) == 45
def test_check():
	check(min_moves)
# Metadata Difficulty: Medium
# Metadata Topics: array,math
# Metadata Coverage: 100
