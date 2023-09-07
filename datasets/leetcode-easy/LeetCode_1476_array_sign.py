from typing import List


def array_sign(nums: List[int]) -> int:
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
    def sign_func(x):
        if x > 0:
            return 1
        elif x < 0:
            return -1
        else:
            return 0
    product = 1
    for x in nums:
        product *= x
    return sign_func(product)




### Unit tests below ###
def check(candidate):
	assert candidate([-1, -2, -3, 4]) == -1
	assert candidate([-1, -2, -3, -4]) == 1
	assert candidate([-1, -1, -1, -1]) == 1
	assert candidate(
    [-1, 1, -1, 1, -1]
) == -1, "The sign of the product is negative, so return -1."
	assert candidate(
    [1, 5, 0, 2, -3]
) == 0, "The sign of the product is 0, so return 0."
	assert candidate([1, 2, 3, 4, 0]) == 0
	assert candidate([1000000000]) == 1
	assert candidate([1]) == 1
	assert candidate(
    [1, 5, 0, 2, -3]
) == 0, "Example #2: signFunc(0) = 0"
	assert candidate([-1, -2, -3, 0]) == 0
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 1
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]) == 0
	assert candidate([-1, 1, 1, -1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0]) == 0
	assert candidate([-1]) == -1
	assert candidate(
    [-1, 1, -1, 1, -1]
) == -1, "Example #3: signFunc(-1) = -1"
	assert candidate([1, 1, 0, 1]) == 0
	assert candidate([0, 2, 3, 4]) == 0
	assert candidate([-1000000000]) == -1
	assert candidate([10,20,50,10]) == 1
	assert candidate([1, 2, -1, -2, 1, 2, -1, -2, 1, 2, -1, -2, 1, 2, -1, -2, 1, 2, -1, -2, 1, 2, -1, -2, 1, 2, -1, -2, 1, 2, -1, -2]) == 1
	assert candidate([1, 2, -1, -2, 1, 2, -1, -2, 1, 2, -1, -2, 1, 2, -1, -2, 1, 2, -1, -2, 1, 2, -1, -2, 1, 2, -1, -2, 1, 2, -1, -2, 0]) == 0
	assert candidate([1, 2, -1, -2]) == 1
	assert candidate(
    [-1, -2, -3, -4, 3, 2, 1]
) == 1, "Example #1: signFunc(144) = 1"
	assert candidate([-1, 1, 1, -1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1]) == 1
	assert candidate([1, 0, -1]) == 0
	assert candidate([-1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13, -14, -15, -16, -17, -18, -19, -20]) == 1
	assert candidate([0]) == 0
	assert candidate([-1, 1, 1, -1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1]) == -1
	assert candidate(
    [-1, -2, -3, -4, 3, 2, 1]
) == 1, "The sign of the product is positive, so return 1."
	assert candidate([0, 0, 0, 0]) == 0
	assert candidate(
    [-1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13, -14, -15, -16, -17, -18, -19, -20]) == 1
def test_check():
	check(array_sign)
# Metadata Difficulty: Easy
# Metadata Topics: array,math
# Metadata Coverage: 100
