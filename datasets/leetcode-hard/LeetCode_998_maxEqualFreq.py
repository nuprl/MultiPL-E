from typing import List


def maxEqualFreq(nums: List[int]) -> int:
    """
    Given an array nums of positive integers, return the longest possible length of an array prefix of nums, such that it is possible to remove exactly one element from this prefix so that every number that has appeared in it will have the same number of occurrences.
    If after removing one element there are no remaining elements, it's still considered that every appeared number has the same number of ocurrences (0).
 
    Example 1:

    Input: nums = [2,2,1,1,5,3,3,5]
    Output: 7
    Explanation: For the subarray [2,2,1,1,5,3,3] of length 7, if we remove nums[4] = 5, we will get [2,2,1,1,3,3], so that each number will appear exactly twice.

    Example 2:

    Input: nums = [1,1,1,2,2,2,3,3,3,4,4,4,5]
    Output: 13

 
    Constraints:

    2 <= nums.length <= 105
    1 <= nums[i] <= 105

    """
    ### Canonical solution below ###
    count, freq = {}, {}
    max_len, max_freq = 0, 0
    for i, num in enumerate(nums):
        count[num] = count.get(num, 0) + 1
        freq[count[num] - 1] = freq.get(count[num] - 1, 0) - 1
        freq[count[num]] = freq.get(count[num], 0) + 1

        max_freq = max(max_freq, count[num])
        if max_freq * (i + 1) == i or max_freq * (freq.get(max_freq - 1, 0) + 1) + (max_freq - 1) * freq.get(max_freq - 1, 0) == i:
            max_len = i + 1
    return max_len




### Unit tests below ###
def check(candidate):
	assert candidate([10,20,30,40,50,60,70,80,90,100]) == 1
	assert candidate([2,2,2,2,2,2,3,1]) == 7
	assert candidate([1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2]) == 11
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 1
def test_check():
	check(maxEqualFreq)
# Metadata Difficulty: Hard
# Metadata Topics: array,hash-table
# Metadata Coverage: 100
