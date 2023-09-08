from typing import List


def kLengthApart(nums: List[int], k: int) -> bool:
    """
    Given an binary array nums and an integer k, return true if all 1's are at least k places away from each other, otherwise return false.
 
    Example 1:


    Input: nums = [1,0,0,0,1,0,0,1], k = 2
    Output: true
    Explanation: Each of the 1s are at least 2 places away from each other.

    Example 2:


    Input: nums = [1,0,0,1,0,1], k = 2
    Output: false
    Explanation: The second 1 and third 1 are only one apart from each other.

 
    Constraints:

    1 <= nums.length <= 105
    0 <= k <= nums.length
    nums[i] is 0 or 1

    """
    ### Canonical solution below ###
    last_one = -1
    for i, num in enumerate(nums):
        if num == 1:
            if last_one != -1 and i - last_one <= k:
                return False
            last_one = i
    return True




### Unit tests below ###
def check(candidate):
	assert candidate([1, 0, 0, 1], 2) == True
	assert candidate([1, 0, 0, 0, 0, 0, 1], 5) == True
	assert candidate(
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
    31,
) == True
	assert candidate([1, 0, 0, 1, 0, 0, 0, 1], 2) == True
	assert candidate([1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1], 4) == True
	assert candidate([1, 0, 1, 0, 1, 0, 0, 1], 2) == False
	assert candidate(
    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1], 9) == False
	assert candidate([0, 0, 0, 0, 0, 0, 1], 6) == True
	assert candidate([1, 1, 1, 1, 1], 0) == True
	assert candidate(
    [1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1], 3) == False
	assert candidate([1, 0, 1, 0, 0, 1, 0, 0, 1, 0], 2) == False
	assert candidate([1, 0, 0, 0, 0, 0, 0], 6) == True
	assert candidate([1, 0, 0, 0, 1, 0, 1], 3) == False
	assert candidate([1, 0, 0, 0, 0, 0, 0, 0, 0, 1], 8) == True
	assert candidate([1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1], 3) == False
	assert candidate([1, 0, 0, 0, 1, 0, 0, 1], 3) == False
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0, 0, 1], 9) == True
	assert candidate([1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0], 3) == True
	assert candidate([1, 0, 0, 0, 0, 0, 0, 0, 0, 0], 9) == True
	assert candidate([1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1], 4) == False
	assert candidate(
    [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
    30,
) == False
	assert candidate([1, 0, 0, 0, 0, 0, 0, 1], 3) == True
	assert candidate([1, 0, 0, 0, 0, 0, 0, 0, 1], 8) == False
	assert candidate([1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0], 2) == True
def test_check():
	check(kLengthApart)
# Metadata Difficulty: Easy
# Metadata Topics: array
# Metadata Coverage: 100
