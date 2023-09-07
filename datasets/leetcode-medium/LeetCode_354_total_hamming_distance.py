from typing import List


def total_hamming_distance(nums: List[int]) -> int:
    """
    The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
    Given an integer array nums, return the sum of Hamming distances between all the pairs of the integers in nums.
 
    Example 1:

    Input: nums = [4,14,2]
    Output: 6
    Explanation: In binary representation, the 4 is 0100, 14 is 1110, and 2 is 0010 (just
    showing the four bits relevant in this case).
    The answer will be:
    HammingDistance(4, 14) + HammingDistance(4, 2) + HammingDistance(14, 2) = 2 + 2 + 2 = 6.

    Example 2:

    Input: nums = [4,14,4]
    Output: 4

 
    Constraints:

    1 <= nums.length <= 104
    0 <= nums[i] <= 109
    The answer for the given input will fit in a 32-bit integer.

    """
    ### Canonical solution below ###
    total_distance = 0
    n = len(nums)

    for i in range(32):
        bit_count = sum(((num >> i) & 1) for num in nums)
        total_distance += bit_count * (n - bit_count)

    return total_distance




### Unit tests below ###
def check(candidate):
	assert candidate([2, 2, 2, 2]) == 0
	assert candidate([1000000000, 1000000000, 1000000000]) == 0
	assert candidate([1, 2, 4, 8, 16]) == 20
	assert candidate([4, 14, 4]) == 4
	assert candidate([4, 14, 2]) == 6
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]) == 0
	assert candidate([2, 4, 8, 16, 32, 64, 128, 256, 512]) == 72
	assert candidate([0, 0, 0]) == 0
	assert candidate([1, 1, 1]) == 0
	assert candidate([1, 2, 3]) == 4
def test_check():
	check(total_hamming_distance)
# Metadata Difficulty: Medium
# Metadata Topics: array,math,bit-manipulation
# Metadata Coverage: 100
