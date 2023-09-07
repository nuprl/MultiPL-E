from typing import List


def findDuplicate(nums: List[int]) -> int:
    """
    Given an array of integers nums containing n + 1 integers where each integer is in the range [1, n] inclusive.
    There is only one repeated number in nums, return this repeated number.
    You must solve the problem without modifying the array nums and uses only constant extra space.
 
    Example 1:

    Input: nums = [1,3,4,2,2]
    Output: 2

    Example 2:

    Input: nums = [3,1,3,4,2]
    Output: 3

 
    Constraints:

    1 <= n <= 105
    nums.length == n + 1
    1 <= nums[i] <= n
    All the integers in nums appear only once except for precisely one integer which appears two or more times.

 
    Follow up:

    How can we prove that at least one duplicate number must exist in nums?
    Can you solve the problem in linear runtime complexity?

    """
    ### Canonical solution below ###
    slow = nums[0]
    fast = nums[0]

    while True:
        slow = nums[slow]
        fast = nums[nums[fast]]
        if slow == fast:
            break

    slow = nums[0]

    while slow != fast:
        slow = nums[slow]
        fast = nums[fast]

    return slow




### Unit tests below ###
def check(candidate):
	assert candidate(
    [10,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,50]) == 50
	assert candidate([1,3,4,2,5,6,7,8,9,10,11,11]) == 11
	assert candidate([1,3,4,2,2]) == 2
	assert candidate([7,9,7,4,2,8,7,7,1,5]) == 7
	assert candidate([9,9,9,9,9,9,9,9,9,9]) == 9
	assert candidate([1,3,4,2,5,6,7,8,9,10,10]) == 10
	assert candidate([9,1,9,2,3,4,5,6,7,8]) == 9
	assert candidate([2,2,2,2,2,2]) == 2
	assert candidate([1,2,3,4,5,6,7,1]) == 1
	assert candidate([3,1,4,3,5,5,3,3,2,4,4,5,1,1,5]) == 3
	assert candidate([1,3,4,2,5,6,7,8,9,10,2]) == 2
	assert candidate([3,1,3,4,2]) == 3
	assert candidate([5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]) == 5
	assert candidate(
    [10, 7, 5, 10, 4, 10, 10, 10, 10, 2, 3, 9, 1, 4, 5, 6, 8, 4, 7, 5]) == 10
	assert candidate([1,2,2]) == 2
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,11]) == 11
	assert candidate([1,1]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,50]) == 50
	assert candidate([1,3,4,2,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,50]) == 50
	assert candidate([1,2,2,2,2,2]) == 2
def test_check():
	check(findDuplicate)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,binary-search,bit-manipulation
# Metadata Coverage: 100
