from typing import List


def longest_consecutive(nums: List[int]) -> int:
    """
    Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.
    You must write an algorithm that runs in O(n) time.
 
    Example 1:

    Input: nums = [100,4,200,1,3,2]
    Output: 4
    Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.

    Example 2:

    Input: nums = [0,3,7,2,5,8,4,6,0,1]
    Output: 9

 
    Constraints:

    0 <= nums.length <= 105
    -109 <= nums[i] <= 109

    """
    ### Canonical solution below ###
    elements = set(nums)
    longest_seq = 0

    for num in nums:
        if num - 1 not in elements:
            current_num = num
            current_seq = 1

            while current_num + 1 in elements:
                current_num += 1
                current_seq += 1

            longest_seq = max(longest_seq, current_seq)

    return longest_seq




### Unit tests below ###
def check(candidate):
	assert candidate([0, 1, 3, 2, 5, 6, 8, 9, 7, 10]) == 6
	assert candidate([1, 2, 3, 5, 6, 7, 8, 9, 10]) == 6
	assert candidate([100, 4, 200, 1, 3, 2]) == 4
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 1
	assert candidate([1, 2, 3, 4, 5]) == 5
	assert candidate([1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5]) == 5
	assert candidate([9, 8, 7, 6, 5, 4, 3, 2, 1]) == 9
	assert candidate([-5, -3, -1, 1, 3, 5]) == 1
	assert candidate([0, 3, 7, 2, 5, 8, 4, 6, 0, 1]) == 9
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]) == 15
	assert candidate([]) == 0
	assert candidate([1]) == 1
	assert candidate([1, 2, 3, 5, 6, 7]) == 3
	assert candidate([-3, -2, -1, 0, 1]) == 5
	assert candidate([36, 41, 56, 35, 44, 33, 34, 92, 43, 32, 42]) == 5
	assert candidate([0, 2, 3, 10, 1]) == 4
	assert candidate([-1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13, -14, -15]) == 15
	assert candidate([-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]) == 11
	assert candidate([1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5]) == 5
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 30]) == 15
	assert candidate([1, 3, 5, 7, 9]) == 1
	assert candidate([1, 2, 3, 10, 0]) == 4
	assert candidate(range(1, 10001)) == 10000
def test_check():
	check(longest_consecutive)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,union-find
# Metadata Coverage: 100
