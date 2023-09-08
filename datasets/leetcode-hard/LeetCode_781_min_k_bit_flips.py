from typing import List


def min_k_bit_flips(nums: List[int], k: int) -> int:
    """
    You are given a binary array nums and an integer k.
    A k-bit flip is choosing a subarray of length k from nums and simultaneously changing every 0 in the subarray to 1, and every 1 in the subarray to 0.
    Return the minimum number of k-bit flips required so that there is no 0 in the array. If it is not possible, return -1.
    A subarray is a contiguous part of an array.
 
    Example 1:

    Input: nums = [0,1,0], k = 1
    Output: 2
    Explanation: Flip nums[0], then flip nums[2].

    Example 2:

    Input: nums = [1,1,0], k = 2
    Output: -1
    Explanation: No matter how we flip subarrays of size 2, we cannot make the array become [1,1,1].

    Example 3:

    Input: nums = [0,0,0,1,0,1,1,0], k = 3
    Output: 3
    Explanation: 
    Flip nums[0],nums[1],nums[2]: nums becomes [1,1,1,1,0,1,1,0]
    Flip nums[4],nums[5],nums[6]: nums becomes [1,1,1,1,1,0,0,0]
    Flip nums[5],nums[6],nums[7]: nums becomes [1,1,1,1,1,1,1,1]

 
    Constraints:

    1 <= nums.length <= 105
    1 <= k <= nums.length

    """
    ### Canonical solution below ###
    n, res, flipped = len(nums), 0, 0
    change = [0] * n
    for i in range(n - k + 1):
        flipped ^= change[i]
        if nums[i] == flipped:
            res += 1
            flipped ^= 1
            if i + k < n:
                change[i + k] ^= 1
    for i in range(n - k + 1, n):
        flipped ^= change[i]
        if nums[i] == flipped:
            return -1
    return res




### Unit tests below ###
def check(candidate):
	assert candidate([0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1], 3) == -1
	assert candidate([0, 1, 0, 1, 0, 1, 1, 0], 1) == 4
	assert candidate([0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 3) == -1
	assert candidate([0, 0, 0, 1, 0, 1, 1, 0], 3) == 3
	assert candidate([1, 0, 1, 0, 1, 0, 1, 0], 2) == 4
	assert candidate([1, 1, 0], 2) == -1
	assert candidate([0, 1, 0], 1) == 2
	assert candidate([0, 0, 1, 1, 0, 1, 0, 1], 3) == 4
def test_check():
	check(min_k_bit_flips)
# Metadata Difficulty: Hard
# Metadata Topics: array,bit-manipulation,queue,sliding-window,prefix-sum
# Metadata Coverage: 100
