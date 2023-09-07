from typing import List


def containsNearbyDuplicate(nums: List[int], k: int) -> bool:
    """
    Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.
 
    Example 1:

    Input: nums = [1,2,3,1], k = 3
    Output: true

    Example 2:

    Input: nums = [1,0,1,1], k = 1
    Output: true

    Example 3:

    Input: nums = [1,2,3,1,2,3], k = 2
    Output: false

 
    Constraints:

    1 <= nums.length <= 105
    -109 <= nums[i] <= 109
    0 <= k <= 105

    """
    ### Canonical solution below ###
    value_index_map = {}
    for i, num in enumerate(nums):
        if num in value_index_map and i - value_index_map[num] <= k:
            return True
        value_index_map[num] = i
    return False




### Unit tests below ###
def check(candidate):
	assert candidate([-2,0,10,-1,1,-2,0,1], 3) == True
	assert candidate([1,2,3,4,5,6,7,8,9,1], 6) == False
	assert candidate([1,2,3,4,3], 3) == True
	assert candidate([1,2,3,4,5,1], 4) == False
	assert candidate([1,2,3,4,5,6,7,8,9,1], 3) == False
	assert candidate([1,2,3,4,5,6,7,8,9,1], 4) == False
	assert candidate([1,2,3,4,5,6,7,8,9,1], 1) == False
	assert candidate(list(range(10**5)), 10**5) == False
	assert candidate([-1,2,-1], 1) == False
	assert candidate([1,2,3,1,2,3], 2) == False
	assert candidate([1,2,3,4,5,6,7,8,9,1], 2) == False
	assert candidate([0], 0) == False
	assert candidate([1]*10**5, 10**5) == True
	assert candidate([1,2,3,1], 3) == True
	assert candidate([1], 0) == False
	assert candidate([], 0) == False
	assert candidate([1,0,1,1], 1) == True
	assert candidate([1,2,3,4,5,1], 5) == True
	assert candidate([1,2,3,4,5,6,7,8,9,1], 9) == True
	assert candidate([1,2,3,4,5,1], 0) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10], 5) == False
	assert candidate([1,2,3,4,5,6,7,8,9,1], 5) == False
	assert candidate([-1,-1], 1) == True
	assert candidate([1,2,3,4,5,6,7,8,9,1], 7) == False
	assert candidate([1]*10**5, 0) == False
	assert candidate([1,2,3,4,5,6,7,8,9,1], 8) == False
	assert candidate([1], 1) == False
	assert candidate(list(range(10**5)), 0) == False
	assert candidate([-1,2,-1], 2) == True
	assert candidate([1,2,3,4,5,1,2,3,4,5], 4) == False
	assert candidate([1,1], 0) == False
	assert candidate([1,2,3,4,5,6,7,8,9,1], 0) == False
	assert candidate([1,1], 1) == True
	assert candidate(list(range(10**5)) + [1], 10**5) == True
	assert candidate(list(range(10**5))+[0, 10**5], 10**5) == True
	assert candidate([1,2], 0) == False
def test_check():
	check(containsNearbyDuplicate)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,sliding-window
# Metadata Coverage: 100
