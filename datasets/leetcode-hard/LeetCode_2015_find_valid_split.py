from typing import List


def find_valid_split(nums: List[int]) -> int:
    """
    You are given a 0-indexed integer array nums of length n.
    A split at an index i where 0 <= i <= n - 2 is called valid if the product of the first i + 1 elements and the product of the remaining elements are coprime.

    For example, if nums = [2, 3, 3], then a split at the index i = 0 is valid because 2 and 9 are coprime, while a split at the index i = 1 is not valid because 6 and 3 are not coprime. A split at the index i = 2 is not valid because i == n - 1.

    Return the smallest index i at which the array can be split validly or -1 if there is no such split.
    Two values val1 and val2 are coprime if gcd(val1, val2) == 1 where gcd(val1, val2) is the greatest common divisor of val1 and val2.
 
    Example 1:


    Input: nums = [4,7,8,15,3,5]
    Output: 2
    Explanation: The table above shows the values of the product of the first i + 1 elements, the remaining elements, and their gcd at each index i.
    The only valid split is at index 2.

    Example 2:


    Input: nums = [4,7,15,8,3,5]
    Output: -1
    Explanation: The table above shows the values of the product of the first i + 1 elements, the remaining elements, and their gcd at each index i.
    There is no valid split.

 
    Constraints:

    n == nums.length
    1 <= n <= 104
    1 <= nums[i] <= 106

    """
    ### Canonical solution below ###
    def gcd(a, b):
        return a if b == 0 else gcd(b, a % b)
    n = len(nums)
    prefix = [0] * n
    suffix = [0] * n

    prefix[0] = nums[0]
    suffix[-1] = nums[-1]

    for i in range(1, n):
        prefix[i] = prefix[i - 1] * nums[i]

    for i in range(n - 2, -1, -1):
        suffix[i] = suffix[i + 1] * nums[i]

    for i in range(n - 1):
        if gcd(prefix[i], suffix[i + 1]) == 1:
            return i

    return -1




### Unit tests below ###
def check(candidate):
	assert candidate([17, 31, 2, 3, 5, 7]) == 0
	assert candidate([31, 37, 41, 43, 47, 53, 59, 61, 67]) == 0
	assert candidate([3, 11, 20, 31, 46, 61, 71, 91, 97]) == 0
	assert candidate([7, 14, 21, 28, 35]) == -1
	assert candidate([2] * 10000) == -1
	assert candidate([10,20,30,40,50,60,70,80,90,100]) == -1
	assert candidate([4, 7, 8, 15, 3, 5, 19]) == 2
	assert candidate([71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113]) == 0
	assert candidate([2, 3, 5, 7, 11, 13, 17, 19, 23, 29]) == 0
	assert candidate([3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33]) == -1
	assert candidate([i+1 for i in range(10000)]) == 0
	assert candidate([1, 1]) == 0
	assert candidate([1, 6, 9, 11, 24, 27, 30, 33]) == 0
	assert candidate([7, 49, 343, 2401]) == -1
	assert candidate([3,6,9,12,15,18,21,24,27,30]) == -1
	assert candidate([11, 13, 17, 19, 23]) == 0
	assert candidate([5, 25, 125, 625]) == -1
	assert candidate([2, 4, 6, 8, 10, 12]) == -1
	assert candidate([6, 10, 15, 25]) == -1
	assert candidate([3,6,9,12,15,18,21,24,27,30,33,36]) == -1
	assert candidate([3,6,9,12,15,18,21,24,27,30,33]) == -1
	assert candidate([2, 3, 3]) == 0
	assert candidate([1, 2, 3, 4, 5]) == 0
	assert candidate([2, 3, 3, 7]) == 0
	assert candidate([4, 7, 8, 15, 3, 5]) == 2
	assert candidate([4,7,8,15,3,5]) == 2
	assert candidate([2, 7, 14, 21, 28, 35]) == -1
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 2]) == 0
	assert candidate([4,7,15,8,3,5]) == -1
	assert candidate([1] * 10000) == 0
	assert candidate([5, 10, 20, 40, 80, 160]) == -1
def test_check():
	check(find_valid_split)
# Metadata Difficulty: Hard
# Metadata Topics: array,hash-table,math,number-theory
# Metadata Coverage: 100
