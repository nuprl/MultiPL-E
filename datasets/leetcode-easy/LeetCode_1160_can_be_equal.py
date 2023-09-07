from typing import List


def can_be_equal(target: List[int], arr: List[int]) -> bool:
    """
    You are given two integer arrays of equal length target and arr. In one step, you can select any non-empty subarray of arr and reverse it. You are allowed to make any number of steps.
    Return true if you can make arr equal to target or false otherwise.
 
    Example 1:

    Input: target = [1,2,3,4], arr = [2,4,1,3]
    Output: true
    Explanation: You can follow the next steps to convert arr to target:
    1- Reverse subarray [2,4,1], arr becomes [1,4,2,3]
    2- Reverse subarray [4,2], arr becomes [1,2,4,3]
    3- Reverse subarray [4,3], arr becomes [1,2,3,4]
    There are multiple ways to convert arr to target, this is not the only way to do so.

    Example 2:

    Input: target = [7], arr = [7]
    Output: true
    Explanation: arr is equal to target without any reverses.

    Example 3:

    Input: target = [3,7,9], arr = [3,7,11]
    Output: false
    Explanation: arr does not have value 9 and it can never be converted to target.

 
    Constraints:

    target.length == arr.length
    1 <= target.length <= 1000
    1 <= target[i] <= 1000
    1 <= arr[i] <= 1000

    """
    ### Canonical solution below ###
    target.sort()
    arr.sort()
    return target == arr




### Unit tests below ###
def check(candidate):
	assert candidate([1, 1, 1, 1], [1, 1, 1]) == False
	assert candidate([1, 2, 3, 4], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == False
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 2, 3, 4, 5, 6, 7, 8, 9, 11]) == False
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 2, 3, 4, 5, 6, 7, 8, 9]) == False
	assert candidate([3, 7, 9], [3, 8, 5]) == False
	assert candidate([1, 2, 3, 4, 5], [5, 4, 3, 2, 1]) == True
	assert candidate([3, 7, 9], [4, 8, 3]) == False
	assert candidate([1, 2, 3, 4], [4, 3, 2, 5]) == False
	assert candidate([1, 1, 2, 2], [1, 1, 2, 2]) == True
	assert candidate([3, 7, 9], [3, 7, 9, 10]) == False
	assert candidate([1, 1, 1, 1], [1, 1, 1, 1]) == True
	assert candidate([1, 2, 3, 4], [4, 3, 1, 2]) == True
	assert candidate([], []) == True
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8], [1, 2, 3, 4, 5, 6, 7, 8]) == True
	assert candidate([1, 2, 3, 4, 5], [1, 2, 3, 4]) == False
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
) == True
	assert candidate([1, 2, 3], [1, 2]) == False
	assert candidate([1, 2, 3, 4, 5], [1, 2, 3, 4, 6]) == False
	assert candidate([1, 2, 3, 4], [4, 3, 2, 1]) == True
	assert candidate([5, 6, 7, 8], [5, 6, 7]) == False
	assert candidate(
    [3, 7, 9, 8, 5, 4, 1, 10, 11],
    [3, 7, 9, 8, 5, 4, 1, 10, 11],
) == True
	assert candidate([3, 7, 9], [3, 8, 9]) == False
	assert candidate([3, 7, 9], [4, 7, 9]) == False
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8], [5, 6, 7, 8, 1, 2, 3, 4]
) == True
	assert candidate([3, 7, 9], [4, 8, 5]) == False
	assert candidate([1, 2, 3, 4, 5], [2, 1, 4, 3, 5]) == True
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == True
	assert candidate([1, 1, 1, 1], [1, 1, 1, 1, 2]) == False
	assert candidate([1, 1, 1, 1], [1, 2, 3, 4]) == False
	assert candidate([1, 1, 1, 1], [2, 2, 2, 2]) == False
	assert candidate([1, 2, 3, 4], [5, 6, 7, 8]) == False
	assert candidate([1, 2, 3, 4, 5], [1, 2, 3, 5, 4]) == True
	assert candidate([3, 7, 9], [3, 7, 8]) == False
	assert candidate([2, 3, 4, 5], [1, 2, 3, 4]) == False
	assert candidate(
    [10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == True
	assert candidate([1, 2, 3, 4], [1, 2, 3]) == False
	assert candidate([1, 2, 3], [3, 2]) == False
	assert candidate(
    [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],
    [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],
) == True
	assert candidate([1, 2, 3, 4], [2, 3, 4, 5]) == False
	assert candidate([3, 7, 9], [3, 7, 9]) == True
	assert candidate([1, 2, 3], [3, 2, 1]) == True
	assert candidate([1, 2, 3, 4], [2, 3, 1, 4]) == True
	assert candidate([5, 6, 7, 8], [8, 7, 6, 5]) == True
	assert candidate([1, 2, 3, 4], [1, 2, 3, 4, 5]) == False
	assert candidate([1, 1], [1, 1]) == True
def test_check():
	check(can_be_equal)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,sorting
# Metadata Coverage: 100
