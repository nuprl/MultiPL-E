from typing import List


def findShortestSubArray(nums: List[int]) -> int:
    """
    Given a non-empty array of non-negative integers nums, the degree of this array is defined as the maximum frequency of any one of its elements.
    Your task is to find the smallest possible length of a (contiguous) subarray of nums, that has the same degree as nums.
 
    Example 1:

    Input: nums = [1,2,2,3,1]
    Output: 2
    Explanation: 
    The input array has a degree of 2 because both elements 1 and 2 appear twice.
    Of the subarrays that have the same degree:
    [1, 2, 2, 3, 1], [1, 2, 2, 3], [2, 2, 3, 1], [1, 2, 2], [2, 2, 3], [2, 2]
    The shortest length is 2. So return 2.

    Example 2:

    Input: nums = [1,2,2,3,1,4,2]
    Output: 6
    Explanation: 
    The degree is 3 because the element 2 is repeated 3 times.
    So [2,2,3,1,4,2] is the shortest subarray, therefore returning 6.

 
    Constraints:

    nums.length will be between 1 and 50,000.
    nums[i] will be an integer between 0 and 49,999.

    """
    ### Canonical solution below ###
    freq_map, start_map = {}, {}
    max_freq, min_length = 0, len(nums)

    for i, num in enumerate(nums):
        if num not in start_map:
            start_map[num] = i
        freq_map[num] = freq_map.get(num, 0) + 1

        freq = freq_map[num]
        if freq > max_freq:
            max_freq = freq
            min_length = i - start_map[num] + 1
        elif freq == max_freq:
            min_length = min(min_length, i - start_map[num] + 1)

    return min_length




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3,4,5,6,7,7,7,7,7]) == 5
	assert candidate([1,2,2,3,1,4,2]) == 6
	assert candidate([0,0,0,0,0,1,1,1,1,1]) == 5
	assert candidate([10,9,8,7,6,5,4,3,2,1]) == 1
	assert candidate([1,2,3,4,5,5,5,5,5]) == 5
	assert candidate([1,2,2,3,1,1,1,1,1]) == 9
	assert candidate([1,2,2,3,1,4,2,2,3,2]) == 9
	assert candidate([1, 2, 2, 3, 1]) == 2
	assert candidate([1,2,3,4,5]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 1
	assert candidate([1]*50000) == 50000
	assert candidate([1,1,1,1,1]) == 5
	assert candidate([1]) == 1
	assert candidate(list(range(50000))) == 1
	assert candidate([1,2,2,3,1,4,2,2]) == 7
def test_check():
	check(findShortestSubArray)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table
# Metadata Coverage: 100
