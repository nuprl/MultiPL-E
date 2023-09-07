from typing import List


def arraySign(nums: List[int]) -> int:
    """
    There is a function signFunc(x) that returns:

    1 if x is positive.
    -1 if x is negative.
    0 if x is equal to 0.

    You are given an integer array nums. Let product be the product of all values in the array nums.
    Return signFunc(product).
 
    Example 1:

    Input: nums = [-1,-2,-3,-4,3,2,1]
    Output: 1
    Explanation: The product of all values in the array is 144, and signFunc(144) = 1

    Example 2:

    Input: nums = [1,5,0,2,-3]
    Output: 0
    Explanation: The product of all values in the array is 0, and signFunc(0) = 0

    Example 3:

    Input: nums = [-1,1,-1,1,-1]
    Output: -1
    Explanation: The product of all values in the array is -1, and signFunc(-1) = -1

 
    Constraints:

    1 <= nums.length <= 1000
    -100 <= nums[i] <= 100

    """
    ### Canonical solution below ###
    def signFunc(x):
        if x > 0:
            return 1
        elif x < 0:
            return -1
        else:
            return 0
    product = 1
    for num in nums:
        product *= signFunc(num)
    return product




### Unit tests below ###
def check(candidate):
	assert candidate([0,1,2,3,0]) == 0
	assert candidate([1,1,1]) == 1
	assert candidate([-100]) == -1
	assert candidate(range(1,1000)) == 1
	assert candidate(range(100,0,-1)) == 1
	assert candidate([0,0,0,0,0,0,0,0,0,0,100000000]) == 0
	assert candidate([-1]) == -1
	assert candidate([1,5,0,2,-3]) == 0
	assert candidate(range(-1,-101,-1)) == 1
	assert candidate([-1,2,-3,4,-5,6,-7,8,-9,10]) == -1
	assert candidate([100,10,1,-3]) == -1
	assert candidate([-100000000,-100000000]) == 1
	assert candidate([100,10,1,3]) == 1
	assert candidate( [-1]) == -1
	assert candidate([-1,2,3,4,5,6,7,8,9,10,0]) == 0
	assert candidate([-1,-1,-1]) == -1
	assert candidate([1,2,3,4,5,6,7,8,9,10,-1]) == -1
	assert candidate([1,0]) == 0
	assert candidate([10,-10]) == -1
	assert candidate([1]) == 1
	assert candidate([-1,-2,-3,-4,3,2,1]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 1
	assert candidate([-100000000,0]) == 0
	assert candidate([-1,0]) == 0
	assert candidate([0,-1,2,-3,4,-5,6,-7,8,-9,10]) == 0
	assert candidate([-1,0,1]) == 0
	assert candidate([1,2,3,4,5,6,7,8,9,10,0]) == 0
	assert candidate(range(1,101)) == 1
	assert candidate([100]) == 1
	assert candidate([-1,1,-1,1,-1]) == -1
	assert candidate([-1,1,-1,1,-1,1]) == -1
	assert candidate([0,1,2,3,4,5,6,7,8,9,10]) == 0
	assert candidate([-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,0]) == 0
	assert candidate([-1,2,3]) == -1
	assert candidate([100000000,-100000000]) == -1
	assert candidate([0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10]) == 0
	assert candidate([100,10,-1]) == -1
	assert candidate([-1,-1,-1,-1,-1]) == -1
	assert candidate([100,10,1]) == 1
	assert candidate([1,1,1,1,1]) == 1
	assert candidate([1,-1]) == -1
	assert candidate([0,0,0,0,0]) == 0
def test_check():
	check(arraySign)
# Metadata Difficulty: Easy
# Metadata Topics: array,math
# Metadata Coverage: 100
