from typing import List


def countExcellentPairs(nums: List[int], k: int) -> int:
    """
    You are given a 0-indexed positive integer array nums and a positive integer k.
    A pair of numbers (num1, num2) is called excellent if the following conditions are satisfied:

    Both the numbers num1 and num2 exist in the array nums.
    The sum of the number of set bits in num1 OR num2 and num1 AND num2 is greater than or equal to k, where OR is the bitwise OR operation and AND is the bitwise AND operation.

    Return the number of distinct excellent pairs.
    Two pairs (a, b) and (c, d) are considered distinct if either a != c or b != d. For example, (1, 2) and (2, 1) are distinct.
    Note that a pair (num1, num2) such that num1 == num2 can also be excellent if you have at least one occurrence of num1 in the array.
 
    Example 1:

    Input: nums = [1,2,3,1], k = 3
    Output: 5
    Explanation: The excellent pairs are the following:
    - (3, 3). (3 AND 3) and (3 OR 3) are both equal to (11) in binary. The total number of set bits is 2 + 2 = 4, which is greater than or equal to k = 3.
    - (2, 3) and (3, 2). (2 AND 3) is equal to (10) in binary, and (2 OR 3) is equal to (11) in binary. The total number of set bits is 1 + 2 = 3.
    - (1, 3) and (3, 1). (1 AND 3) is equal to (01) in binary, and (1 OR 3) is equal to (11) in binary. The total number of set bits is 1 + 2 = 3.
    So the number of excellent pairs is 5.
    Example 2:

    Input: nums = [5,1,1], k = 10
    Output: 0
    Explanation: There are no excellent pairs for this array.

 
    Constraints:

    1 <= nums.length <= 105
    1 <= nums[i] <= 109
    1 <= k <= 60

    """
    ### Canonical solution below ###
    from collections import Counter
    frequency = Counter(nums)
    count = 0
    for num1, freq1 in frequency.items():
        for num2, freq2 in frequency.items():
            setBits = bin(num1 | num2).count('1') + bin(num1 & num2).count('1')
            if setBits >= k:
                count += freq1 * freq2 if num1 != num2 else freq1 * (freq1 - 1) // 2
    return count




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,1,2,2,2], 3) == 0
	assert candidate([3,3], 5) == 0
	assert candidate([1,2,3], 3) == 4
	assert candidate([3,3,3,1], 4) == 3
	assert candidate([1,2,3,1], 6) == 0
	assert candidate([1,1,1,1], 4) == 0
	assert candidate([3,3,3,1], 5) == 0
	assert candidate([3,3,3,3], 3) == 6
	assert candidate([1,1,1,1,1], 5) == 0
	assert candidate([1,2,3,4,5], 4) == 2
	assert candidate([1,1,1,2,2,2], 5) == 0
	assert candidate([3,4,5,6], 6) == 0
	assert candidate([1,2,3,4,5], 5) == 0
	assert candidate([3,3,3,3,3], 6) == 0
	assert candidate([1,2,3,4,5], 1) == 20
	assert candidate([1,2,3,4,5,6], 5) == 0
	assert candidate([1,1,1,2], 5) == 0
	assert candidate([1,2,3,4,5], 2) == 20
	assert candidate([2,3,4,5,6], 5) == 0
	assert candidate([2,2,2,2], 2) == 6
	assert candidate([2,2,2,2], 3) == 0
	assert candidate([1,1,1,1], 1) == 6
	assert candidate([1,2,3,4,5,6], 6) == 0
	assert candidate([2,3,4,5,6], 2) == 20
	assert candidate([1,2,3], 4) == 0
	assert candidate([2,2,3,3], 5) == 0
	assert candidate([5,1,1], 10) == 0
def test_check():
	check(countExcellentPairs)
# Metadata Difficulty: Hard
# Metadata Topics: array,hash-table,binary-search,bit-manipulation
# Metadata Coverage: 100
