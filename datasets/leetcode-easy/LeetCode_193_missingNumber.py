from typing import List


def missingNumber(nums: List[int]) -> int:
    """
    Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
 
    Example 1:

    Input: nums = [3,0,1]
    Output: 2
    Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.

    Example 2:

    Input: nums = [0,1]
    Output: 2
    Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.

    Example 3:

    Input: nums = [9,6,4,2,3,5,7,0,1]
    Output: 8
    Explanation: n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.

 
    Constraints:

    n == nums.length
    1 <= n <= 104
    0 <= nums[i] <= n
    All the numbers of nums are unique.

 
    Follow up: Could you implement a solution using only O(1) extra space complexity and O(n) runtime complexity?
    """
    ### Canonical solution below ###
    n = len(nums)
    expected_sum = (n * (n + 1)) // 2
    actual_sum = sum(nums)
    return expected_sum - actual_sum




### Unit tests below ###
def check(candidate):
	assert candidate(
    [7,6,4,2,3,5,0,1]) == 8
	assert candidate([3,0,1,4]) == 2
	assert candidate([10,6,4,2,3,5,7,0,1,8]) == 9
	assert candidate(
    [8,7,4,2,3,5,0,1]) == 6
	assert candidate(
    [7,6,4,3,2,1,0]) == 5
	assert candidate([5,4,3,2,1,0]) == 6
	assert candidate([3,4,2,1]) == 0
	assert candidate([10,6,4,2,3,5,7,0,1,9]) == 8
	assert candidate([0,1,2,4,5,6,7,8,9,10,11]) == 3
	assert candidate([0,2,3,4,6,5,7,8,10,1]) == 9
	assert candidate([8,6,7,0,1,2,3,5,4]) == 9
	assert candidate([0,2,1,4]) == 3
	assert candidate([4,3,2,0]) == 1
	assert candidate([9,6,4,2,3,5,7,0,1]) == 8
	assert candidate([0,1,2,3,4,5,6,8]) == 7
	assert candidate([0,3,2,5,4,6,8,7,9,1]) == 10
	assert candidate([3,0,1]) == 2
	assert candidate([1]) == 0
	assert candidate([0,10,2,3,4,5,6,7,8,9]) == 1
	assert candidate([0,2,3,4,5,6,7,8,9]) == 1
	assert candidate(
    [6,4,2,3,5,7,0,1,9,8]) == 10
	assert candidate([4,3,2,1]) == 0
	assert candidate([8,6,7,0,1,2,3,4,9]) == 5
	assert candidate([4,2,1,0]) == 3
	assert candidate([0,10,2,3,5,4,6,7,8,1]) == 9
	assert candidate([0,1,3,4]) == 2
	assert candidate(
    [10,0,2,3,4,5,6,7,8,9]) == 1
	assert candidate([4,2,3,1]) == 0
	assert candidate([8,6,7,0,1,2,3,4,5]) == 9
	assert candidate([1,2,3,4]) == 0
	assert candidate([0,1]) == 2
	assert candidate([0,2,4,6,7,8,9,10,1,3]) == 5
	assert candidate([1,2,3,4,5,6,7,8,9,10,0]) == 11
	assert candidate([0]) == 1
	assert candidate(
    [1,0,3,4,5,6,7,8]) == 2
	assert candidate([4,1,3,2]) == 0
	assert candidate([4,2,3,0]) == 1
	assert candidate(
    [8,6,4,2,3,5,7,0,1]) == 9
	assert candidate([1,0,2,4]) == 3
	assert candidate([2,3,4,5,6,7,8,9,0]) == 1
	assert candidate([1,0,3,4]) == 2
	assert candidate([3,2,1,6,5,4,8,9,0]) == 7
	assert candidate([4,3,1,0]) == 2
	assert candidate([6,0,1,2,3,4,5,7,8]) == 9
	assert candidate([8,7,5,4,3,2,0,1]) == 6
	assert candidate([0,1,2,4]) == 3
	assert candidate(
    [0,1,2,4,5,6,7,8]) == 3
	assert candidate([4,2,3,0,10,6,5,7,8,9]) == 1
	assert candidate([0,1,3,4,5,6,7,8]) == 2
	assert candidate([1,2,3,4,5,6,7,8,9]) == 0
	assert candidate([8,7,6,5,3,2,0,1]) == 4
def test_check():
	check(missingNumber)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,math,binary-search,bit-manipulation,sorting
# Metadata Coverage: 100
