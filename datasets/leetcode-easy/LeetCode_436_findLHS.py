from typing import List


def findLHS(nums: List[int]) -> int:
    """
    We define a harmonious array as an array where the difference between its maximum value and its minimum value is exactly 1.
    Given an integer array nums, return the length of its longest harmonious subsequence among all its possible subsequences.
    A subsequence of array is a sequence that can be derived from the array by deleting some or no elements without changing the order of the remaining elements.
 
    Example 1:

    Input: nums = [1,3,2,2,5,2,3,7]
    Output: 5
    Explanation: The longest harmonious subsequence is [3,2,2,2,3].

    Example 2:

    Input: nums = [1,2,3,4]
    Output: 2

    Example 3:

    Input: nums = [1,1,1,1]
    Output: 0

 
    Constraints:

    1 <= nums.length <= 2 * 104
    -109 <= nums[i] <= 109
    """
    ### Canonical solution below ###
    count = {}
    for num in nums:
        count[num] = count.get(num, 0) + 1

    longest_sequence = 0
    for key in count:
        if key + 1 in count:
            longest_sequence = max(longest_sequence, count[key] + count[key + 1])

    return longest_sequence




### Unit tests below ###
def check(candidate):
	assert candidate([1]) == 0
	assert candidate([-1,-2]) == 2
	assert candidate([1,2]) == 2
	assert candidate([-2,-1]) == 2
	assert candidate([1,2,3,4]) == 2
	assert candidate([0,1,1,1,0,0,0,1,1,1,2,2,2,2]) == 10
	assert candidate([10,9,8,7,6,5,4,3,2,1]) == 2
	assert candidate([2,2,2,2,2,3,3,3,3,3]) == 10
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 2
	assert candidate([3,3,3,3,3,2,2,2,2,2]) == 10
	assert candidate(range(1, 10**4+1)) == 2
	assert candidate(range(1,100000)) == 2
	assert candidate([1,1,1,2,2,2,3,3,3]) == 6
	assert candidate([1,2,3,4,4,3,2,1]) == 4
	assert candidate([1,1,1,1]) == 0
	assert candidate([1,2,2,1,1,1,3,3,3,4,4,4,4]) == 7
	assert candidate([1,3,2,2,5,2,3,7]) == 5
	assert candidate([0,0,0,0,0,1,1,1,1,1]) == 10
def test_check():
	check(findLHS)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,sorting
# Metadata Coverage: 100
