from typing import List


def maxOperations(nums: List[int], k: int) -> int:
    """
    You are given an integer array nums and an integer k.
    In one operation, you can pick two numbers from the array whose sum equals k and remove them from the array.
    Return the maximum number of operations you can perform on the array.
 
    Example 1:

    Input: nums = [1,2,3,4], k = 5
    Output: 2
    Explanation: Starting with nums = [1,2,3,4]:
    - Remove numbers 1 and 4, then nums = [2,3]
    - Remove numbers 2 and 3, then nums = []
    There are no more pairs that sum up to 5, hence a total of 2 operations.
    Example 2:

    Input: nums = [3,1,3,4,3], k = 6
    Output: 1
    Explanation: Starting with nums = [3,1,3,4,3]:
    - Remove the first two 3's, then nums = [1,4,3]
    There are no more pairs that sum up to 6, hence a total of 1 operation.
 
    Constraints:

    1 <= nums.length <= 105
    1 <= nums[i] <= 109
    1 <= k <= 109

    """
    ### Canonical solution below ###
    count = {}
    operations = 0

    for num in nums:
        if count.get(k - num, 0) > 0:
            count[k - num] -= 1
            operations += 1
        else:
            count[num] = count.get(num, 0) + 1

    return operations




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 2) == 10
	assert candidate([5,5,5,5,5,5,5,5,5,5], 10) == 5
	assert candidate([1,2,3,4,5,6,7,8,9,10,10,9,8,7,6,5,4,3,2,1], 11) == 10
	assert candidate([2,2,2,2,2,2,2,2], 4) == 4
	assert candidate([1,2,3,4,5,6,7,8,9,10], 11) == 5
	assert candidate([1,1,1,4], 2) == 1
	assert candidate([2,2,2,3,3], 5) == 2
	assert candidate([1,3], 4) == 1
	assert candidate([1,2,3,4,5], 6) == 2
	assert candidate([1,1,1,1], 2) == 2
	assert candidate([10,10,10,10,10,10,10,10,10,10,20,20,20,20,20,20,20,20,20,20], 30) == 10
	assert candidate([1,1,1,1,1,1,1,1,1,1], 2) == 5
def test_check():
	check(maxOperations)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,two-pointers,sorting
# Metadata Coverage: 100
