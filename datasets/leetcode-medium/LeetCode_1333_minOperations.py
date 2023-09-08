from typing import List


def minOperations(nums: List[int], x: int) -> int:
    """
    You are given an integer array nums and an integer x. In one operation, you can either remove the leftmost or the rightmost element from the array nums and subtract its value from x. Note that this modifies the array for future operations.
    Return the minimum number of operations to reduce x to exactly 0 if it is possible, otherwise, return -1.
 
    Example 1:

    Input: nums = [1,1,4,2,3], x = 5
    Output: 2
    Explanation: The optimal solution is to remove the last two elements to reduce x to zero.

    Example 2:

    Input: nums = [5,6,7,8,9], x = 4
    Output: -1

    Example 3:

    Input: nums = [3,2,20,1,1,3], x = 10
    Output: 5
    Explanation: The optimal solution is to remove the last three elements and the first two elements (5 operations in total) to reduce x to zero.

 
    Constraints:

    1 <= nums.length <= 105
    1 <= nums[i] <= 104
    1 <= x <= 109

    """
    ### Canonical solution below ###
    total = sum(nums)
    target = total - x
    if target < 0:
        return -1

    maxLength = -1
    left = 0
    current_sum = 0

    for right in range(len(nums)):
        current_sum += nums[right]

        while current_sum > target:
            current_sum -= nums[left]
            left += 1

        if current_sum == target:
            maxLength = max(maxLength, right - left + 1)

    return -1 if maxLength == -1 else len(nums) - maxLength




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 10) == 10
	assert candidate([3,2,20,1,1,3], 25) == 3
	assert candidate([5,6,7,8,9,10], 15) == 2
	assert candidate([1,1,4,2,3], 5) == 2
	assert candidate([1,1,1,1,1,1,1,1,1,1], 5) == 5
	assert candidate([1,2,3,4,5,5,4,3,2,1], 50) == -1
def test_check():
	check(minOperations)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,binary-search,sliding-window,prefix-sum
# Metadata Coverage: 100
