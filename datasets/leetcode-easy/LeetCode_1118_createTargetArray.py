from typing import List


def createTargetArray(nums: List[int], index: List[int]) -> List[int]:
    """
    Given two arrays of integers nums and index. Your task is to create target array under the following rules:

    Initially target array is empty.
    From left to right read nums[i] and index[i], insert at index index[i] the value nums[i] in target array.
    Repeat the previous step until there are no elements to read in nums and index.

    Return the target array.
    It is guaranteed that the insertion operations will be valid.
 
    Example 1:

    Input: nums = [0,1,2,3,4], index = [0,1,2,2,1]
    Output: [0,4,1,3,2]
    Explanation:
    nums       index     target
    0            0        [0]
    1            1        [0,1]
    2            2        [0,1,2]
    3            2        [0,1,3,2]
    4            1        [0,4,1,3,2]

    Example 2:

    Input: nums = [1,2,3,4,0], index = [0,1,2,3,0]
    Output: [0,1,2,3,4]
    Explanation:
    nums       index     target
    1            0        [1]
    2            1        [1,2]
    3            2        [1,2,3]
    4            3        [1,2,3,4]
    0            0        [0,1,2,3,4]

    Example 3:

    Input: nums = [1], index = [0]
    Output: [1]

 
    Constraints:

    1 <= nums.length, index.length <= 100
    nums.length == index.length
    0 <= nums[i] <= 100
    0 <= index[i] <= i

    """
    ### Canonical solution below ###
    target = []
    for i in range(len(nums)):
        target.insert(index[i], nums[i])
    return target




### Unit tests below ###
def check(candidate):
	assert candidate(
    [0, 1, 2, 3, 4], [0, 1, 2, 3, 4]) == [0, 1, 2, 3, 4]
	assert candidate([0, 1, 2, 3, 4], [0, 1, 2, 2, 1]) == [0, 4, 1, 3, 2]
	assert candidate([1, 2, 3, 4], [0, 1, 2, 3]) == [1, 2, 3, 4]
	assert candidate([1, 2, 3, 4, 5, 6, 7], [0, 1, 2, 3, 4, 5, 6]) == [
    1, 2, 3, 4, 5, 6, 7]
	assert candidate(
    [5, 0, 1], [1, 0, 2]) == [0, 5, 1]
	assert candidate([1, 2, 3, 4, 5], [1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
	assert candidate([1, 2, 3, 4, 0], [0, 2, 3, 4, 1]) == [1, 0, 2, 3, 4]
	assert candidate(
    [100, 200, 300, 400, 500, 600, 700, 800, 900, 100, 200, 300, 400, 500, 600, 700, 800, 900], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]) == [100, 200, 300, 400, 500, 600, 700, 800, 900, 100, 200, 300, 400, 500, 600, 700, 800, 900]
	assert candidate([1, 2, 3, 4, 5], [0, 1, 2, 3, 4]) == [1, 2, 3, 4, 5]
	assert candidate(
    [1, 2, 3, 4, 0], [0, 1, 2, 3, 0]) == [0, 1, 2, 3, 4]
	assert candidate(
    [1, 2, 3, 4, 0], [0, 2, 3, 4, 1]) == [1, 0, 2, 3, 4]
	assert candidate([1, 2, 3, 4, 5, 6, 7], [4, 5, 6, 7, 8, 9, 10]) == [
    1, 2, 3, 4, 5, 6, 7]
	assert candidate([0, 1, 2, 3, 4], [0, 1, 2, 3, 4]) == [0, 1, 2, 3, 4]
	assert candidate(
    [1, 2, 3, 4, 5, 0, 6, 7, 8, 9], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) == [
        1, 2, 3, 4, 5, 0, 6, 7, 8, 9]
	assert candidate([1, 0], [1, 0]) == [0, 1]
def test_check():
	check(createTargetArray)
# Metadata Difficulty: Easy
# Metadata Topics: array,simulation
# Metadata Coverage: 100
