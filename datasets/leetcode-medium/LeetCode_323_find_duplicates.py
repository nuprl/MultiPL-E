from typing import List


def find_duplicates(nums: List[int]) -> List[int]:
    """
    Given an integer array nums of length n where all the integers of nums are in the range [1, n] and each integer appears once or twice, return an array of all the integers that appears twice.
    You must write an algorithm that runs in O(n) time and uses only constant extra space.
 
    Example 1:
    Input: nums = [4,3,2,7,8,2,3,1]
    Output: [2,3]
    Example 2:
    Input: nums = [1,1,2]
    Output: [1]
    Example 3:
    Input: nums = [1]
    Output: []

 
    Constraints:

    n == nums.length
    1 <= n <= 105
    1 <= nums[i] <= n
    Each element in nums appears once or twice.

    """
    ### Canonical solution below ###
    duplicates = []
    for i in range(len(nums)):
        index = abs(nums[i]) - 1
        if nums[index] < 0:
            duplicates.append(abs(nums[i]))
        else:
            nums[index] *= -1
    return duplicates




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10]) == [1,2,3,4,5,6,7,8,9,10]
	assert candidate([1,1,2]) == [1]
	assert candidate(
    [1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10]
) == [1,2,3,4,5,6,7,8,9,10]
	assert candidate([1,2,3,4,5,6,7,8,9,10,10]) == [10]
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,25]) == [25]
	assert candidate(
    [1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10]) == [1,2,3,4,5,6,7,8,9,10]
	assert candidate([1,1,2,2]) == [1,2]
	assert candidate([1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15,16,16,17,17,18,18,19,19,20,20,21,21,22,22,23,23,24,24,25,25]) == [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]
	assert candidate([4,3,2,7,8,2,3,1]) == [2,3]
	assert candidate([1,2,2]) == [2]
	assert candidate(
    [3,1,2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,25]) == [25]
	assert candidate([1]) == []
def test_check():
	check(find_duplicates)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table
# Metadata Coverage: 100
