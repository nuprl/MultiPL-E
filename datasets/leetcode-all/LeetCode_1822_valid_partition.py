from typing import List


def valid_partition(nums: List[int]) -> bool:
    """
    You are given a 0-indexed integer array nums. You have to partition the array into one or more contiguous subarrays.
    We call a partition of the array valid if each of the obtained subarrays satisfies one of the following conditions:

    The subarray consists of exactly 2, equal elements. For example, the subarray [2,2] is good.
    The subarray consists of exactly 3, equal elements. For example, the subarray [4,4,4] is good.
    The subarray consists of exactly 3 consecutive increasing elements, that is, the difference between adjacent elements is 1. For example, the subarray [3,4,5] is good, but the subarray [1,3,5] is not.

    Return true if the array has at least one valid partition. Otherwise, return false.
 
    Example 1:

    Input: nums = [4,4,4,5,6]
    Output: true
    Explanation: The array can be partitioned into the subarrays [4,4] and [4,5,6].
    This partition is valid, so we return true.

    Example 2:

    Input: nums = [1,1,1,2]
    Output: false
    Explanation: There is no valid partition for this array.

 
    Constraints:

    2 <= nums.length <= 105
    1 <= nums[i] <= 106

    """
    ### Canonical solution below ###
    count = {}
    for num in nums:
        count[num] = count.get(num, 0) + 1
    for num, cnt in count.items():
        if cnt == 2 or cnt == 3 or (num - 1 in count and num + 1 in count):
            return True
    return False




### Unit tests below ###
def check(candidate):
	assert candidate([3, 4, 5]) == True
	assert candidate([4, 4, 4, 5, 6]) == True
	assert candidate([1, 1, 1, 1, 2, 2, 2, 2]) == False
	assert candidate(
    [1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7]) == True
	assert candidate([1, 3, 5]) == False
	assert candidate([1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6]) == True
	assert candidate([1, 1, 2, 2, 3, 3, 4, 4, 5, 5]) == True
	assert candidate([1, 2, 3, 3, 3]) == True
	assert candidate(
    [1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5]) == True
	assert candidate([1, 2, 2, 2, 3]) == True
	assert candidate([1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7]) == True
	assert candidate([1, 2, 3, 4, 5, 6]) == True
	assert candidate([1, 1, 1, 2, 2, 2]) == True
	assert candidate([7, 7, 7, 7]) == False
	assert candidate([1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8]) == True
	assert candidate([1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6]) == True
	assert candidate([1, 2, 2, 2, 3, 3, 3]) == True
	assert candidate([1, 2, 2, 3, 3]) == True
	assert candidate([1, 1, 2, 3, 3, 3]) == True
	assert candidate(
    [2, 4, 2, 4, 3, 3, 4, 4, 4, 3, 3, 4, 4, 4, 3, 3, 4, 4, 4]) == True
	assert candidate([1, 1, 1, 1, 2, 3, 3, 3, 3]) == True
	assert candidate([2, 2]) == True
	assert candidate([1, 1, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5]) == True
	assert candidate([1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5]) == True
	assert candidate(
    [1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6]) == True
	assert candidate([1, 1, 2, 2, 3, 3]) == True
	assert candidate([1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5]) == True
	assert candidate([1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7]) == True
	assert candidate([5, 5, 5]) == True
	assert candidate(
    [1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7]) == True
	assert candidate([1, 2, 3, 4, 5]) == True
	assert candidate(
    [1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6]) == True
def test_check():
	check(valid_partition)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
