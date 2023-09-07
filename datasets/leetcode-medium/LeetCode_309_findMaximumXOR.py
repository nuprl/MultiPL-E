from typing import List


def findMaximumXOR(nums: List[int]) -> int:
    """
    Given an integer array nums, return the maximum result of nums[i] XOR nums[j], where 0 <= i <= j < n.
 
    Example 1:

    Input: nums = [3,10,5,25,2,8]
    Output: 28
    Explanation: The maximum result is 5 XOR 25 = 28.

    Example 2:

    Input: nums = [14,70,53,83,49,91,36,80,92,51,66,70]
    Output: 127

 
    Constraints:

    1 <= nums.length <= 2 * 105
    0 <= nums[i] <= 231 - 1

    """
    ### Canonical solution below ###
    max_xor = 0
    mask = 0

    for i in range(31, -1, -1):
        mask |= (1 << i)
        prefixes = {num & mask for num in nums}

        possible_max = max_xor | (1 << i)

        for prefix in prefixes:
            if prefix ^ possible_max in prefixes:
                max_xor = possible_max
                break

    return max_xor




### Unit tests below ###
def check(candidate):
	assert candidate([i for i in range(100000)]) == 131071
	assert candidate(list(range(1000001))) == 1048575
	assert candidate(list(range(1000000))) == 1048575
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 15
	assert candidate([7]*31) == 0
	assert candidate([3,10,5,25,2,8]) == 28
	assert candidate([14,70,53,83,49,91,36,80,92,51,66,70]) == 127
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1]) == 0
	assert candidate([2,4,6,8,10,12,14,16,18,20]) == 30
	assert candidate([0,0,0,0,0,0,0,0]) == 0
	assert candidate([0,0,0,1,1,1,1,1,1,1]) == 1
def test_check():
	check(findMaximumXOR)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,bit-manipulation,trie
# Metadata Coverage: 100
