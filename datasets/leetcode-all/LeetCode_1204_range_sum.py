from typing import List


def range_sum(nums: List[int], n: int, left: int, right: int) -> int:
    """
    You are given the array nums consisting of n positive integers. You computed the sum of all non-empty continuous subarrays from the array and then sorted them in non-decreasing order, creating a new array of n * (n + 1) / 2 numbers.
    Return the sum of the numbers from index left to index right (indexed from 1), inclusive, in the new array. Since the answer can be a huge number return it modulo 109 + 7.
 
    Example 1:

    Input: nums = [1,2,3,4], n = 4, left = 1, right = 5
    Output: 13 
    Explanation: All subarray sums are 1, 3, 6, 10, 2, 5, 9, 3, 7, 4. After sorting them in non-decreasing order we have the new array [1, 2, 3, 3, 4, 5, 6, 7, 9, 10]. The sum of the numbers from index le = 1 to ri = 5 is 1 + 2 + 3 + 3 + 4 = 13. 

    Example 2:

    Input: nums = [1,2,3,4], n = 4, left = 3, right = 4
    Output: 6
    Explanation: The given array is the same as example 1. We have the new array [1, 2, 3, 3, 4, 5, 6, 7, 9, 10]. The sum of the numbers from index le = 3 to ri = 4 is 3 + 3 = 6.

    Example 3:

    Input: nums = [1,2,3,4], n = 4, left = 1, right = 10
    Output: 50

 
    Constraints:

    n == nums.length
    1 <= nums.length <= 1000
    1 <= nums[i] <= 100
    1 <= left <= right <= n * (n + 1) / 2

    """
    ### Canonical solution below ###
    MOD = 10**9 + 7
    sums = []
    for i in range(n):
        sum = 0
        for j in range(i, n):
            sum += nums[j]
            sums.append(sum)
    sums.sort()
    result = 0
    for i in range(left-1, right):
        result = (result + sums[i]) % MOD
    return result




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 5], 5, 1, 3) == 6
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 10, 1, 3) == 6
	assert candidate([1, 2, 3, 4, 5], 5, 1, 1) == 1
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9], 9, 1, 3) == 6
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 10, 1, 2) == 3
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 10, 1, 1) == 1
	assert candidate([2, 4, 6, 8, 10], 5, 1, 3) == 12
def test_check():
	check(range_sum)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,binary-search,sorting
# Metadata Coverage: 100
