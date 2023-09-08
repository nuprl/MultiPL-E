from typing import List


def count_nice_pairs(nums: List[int]) -> int:
    """
    You are given an array nums that consists of non-negative integers. Let us define rev(x) as the reverse of the non-negative integer x. For example, rev(123) = 321, and rev(120) = 21. A pair of indices (i, j) is nice if it satisfies all of the following conditions:

    0 <= i < j < nums.length
    nums[i] + rev(nums[j]) == nums[j] + rev(nums[i])

    Return the number of nice pairs of indices. Since that number can be too large, return it modulo 109 + 7.
 
    Example 1:

    Input: nums = [42,11,1,97]
    Output: 2
    Explanation: The two pairs are:
     - (0,3) : 42 + rev(97) = 42 + 79 = 121, 97 + rev(42) = 97 + 24 = 121.
     - (1,2) : 11 + rev(1) = 11 + 1 = 12, 1 + rev(11) = 1 + 11 = 12.

    Example 2:

    Input: nums = [13,10,35,24,76]
    Output: 4

 
    Constraints:

    1 <= nums.length <= 105
    0 <= nums[i] <= 109

    """
    ### Canonical solution below ###
    def reverse(x):
        rev = 0

        while x != 0:
            rev = rev * 10 + x % 10
            x = x // 10

        return rev
    MOD = 1_000_000_007
    count = {}
    result = 0

    for num in nums:
        diff = num - reverse(num)
        count[diff] = count.get(diff, 0) + 1

    for val in count.values():
        result = (result + ((val * (val - 1)) // 2) % MOD) % MOD

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([42,11,1,97]) == 2
	assert candidate([123,321,213,312]) == 0
	assert candidate([42, 11, 1, 97]) == 2
	assert candidate([1,11,111,1111,11111,111111,1111111]) == 21
	assert candidate([111,111,111,111,111,222,222,222,222]) == 36
	assert candidate([1,1,1,1,1,1,1,1,1]) == 36
	assert candidate([13, 10, 35, 24, 76]) == 4
	assert candidate([13,10,35,24,76]) == 4
	assert candidate([10,20,30,40,50,60,70,80,90,100]) == 0
def test_check():
	check(count_nice_pairs)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,math,counting
# Metadata Coverage: 100
