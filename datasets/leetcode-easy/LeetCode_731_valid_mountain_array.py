from typing import List


def valid_mountain_array(arr: List[int]) -> bool:
    """
    Given an array of integers arr, return true if and only if it is a valid mountain array.
    Recall that arr is a mountain array if and only if:

    arr.length >= 3
    There exists some i with 0 < i < arr.length - 1 such that:

    arr[0] < arr[1] < ... < arr[i - 1] < arr[i] 
    arr[i] > arr[i + 1] > ... > arr[arr.length - 1]




 
    Example 1:
    Input: arr = [2,1]
    Output: false
    Example 2:
    Input: arr = [3,5,5]
    Output: false
    Example 3:
    Input: arr = [0,3,2,1]
    Output: true

 
    Constraints:

    1 <= arr.length <= 104
    0 <= arr[i] <= 104

    """
    ### Canonical solution below ###
    n, i, j = len(arr), 0, len(arr) - 1
    while i + 1 < n and arr[i] < arr[i + 1]:
        i += 1
    while j > 0 and arr[j - 1] > arr[j]:
        j -= 1
    return i > 0 and i == j and j < n - 1




### Unit tests below ###
def check(candidate):
	assert candidate([9,8,7,6,5,4,3,2,1]) == False
	assert candidate(list(range(1999,0,-1))) == False
	assert candidate([4,3,2,1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,2,3,4,5,6,7,8,9]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10,9,8,7,6,5,4,3,2,1]) == True
	assert candidate(
    [1,3,2,1,2,3,2,1,2,3,2,1,2,3,2,1,2,3,2,1,2,3,2,1,2,3,2,1,2,3,2,1,2,3,2,1,2,3,2,1,2,3,2,1]
) == False
	assert candidate([0,3,2,1]) == True
	assert candidate([1,7,9,5,2,1,3,7,9,5,2,1]) == False
	assert candidate([4,5,3,2,1,2,3,4]) == False
	assert candidate([4,3,2,1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1]) == False
	assert candidate([0,0,0,1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,0,0,0]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1]) == False
	assert candidate([0,1]) == False
	assert candidate([100]) == False
	assert candidate([3,5,5]) == False
	assert candidate([3,2,1]) == False
	assert candidate([5,3,7,9,5,2,1,3,7,9,5,2,1]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,9,8,7,6,5,4,3,2,1,0]) == False
	assert candidate([0,3,2,1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,2,3,4,5,6,7,8,9,8,7,6]) == False
	assert candidate([2,3,1]) == True
	assert candidate([1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,0,2,3,4,5,6,7,8,9]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,2,3,4,5,6,7,8,9,8,7,6,5]) == False
	assert candidate([1,2,3,4,5,3,2,1]) == True
	assert candidate(
    [1,1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,1]) == False
	assert candidate([4,8,12,16]) == False
	assert candidate([9,8,7,6,5,4,3,2,1,2,3,4,5,6,7,8,9]) == False
	assert candidate([1,2,3,2,1,2,3,2,1]) == False
	assert candidate([0,0,1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,0,0]) == False
	assert candidate([9,8,7,6,5,4,3,2,1,0]) == False
	assert candidate(list(range(2,2000 + 1))) == False
	assert candidate([1,2,3]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1]) == True
	assert candidate(
    [1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10,11]) == False
	assert candidate(
    [2,1,2,3,4,5,2,1,2,3,4,5,2,1,2,3,4,5,2,1,2,3,4,5,2,1]
) == False
	assert candidate([1,2,3,4,5,6,7,8,9,9,8,7,6,5,4,3,2,1,2]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,9,8,7,6,5,4,3,2,1]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,2,3,4,5,6,7,8,9]) == False
	assert candidate([9,4,2,10,7,8,8,1,9]) == False
	assert candidate([1,2,3,2,1,2,3,2,1,2,3,2,1]) == False
	assert candidate([1,2,3,4,5,6,7,8,9]) == False
	assert candidate([2,1]) == False
	assert candidate([1,1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,1]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12]) == False
def test_check():
	check(valid_mountain_array)
# Metadata Difficulty: Easy
# Metadata Topics: array
# Metadata Coverage: 100
