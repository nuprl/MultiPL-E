from typing import List


def duplicateZeros(arr: List[int]) -> None:
    """
    Given a fixed-length integer array arr, duplicate each occurrence of zero, shifting the remaining elements to the right.
    Note that elements beyond the length of the original array are not written. Do the above modifications to the input array in place and do not return anything.
 
    Example 1:

    Input: arr = [1,0,2,3,0,4,5,0]
    Output: [1,0,0,2,3,0,0,4]
    Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]

    Example 2:

    Input: arr = [1,2,3]
    Output: [1,2,3]
    Explanation: After calling your function, the input array is modified to: [1,2,3]

 
    Constraints:

    1 <= arr.length <= 104
    0 <= arr[i] <= 9

    """
    ### Canonical solution below ###
    n = len(arr)
    i = 0
    while i < n - 1:
        if arr[i] == 0:
            for j in range(n - 1, i + 1, -1):
                arr[j] = arr[j - 1]
            arr[i + 1] = 0
            i += 1
        i += 1




### Unit tests below ###
def check(candidate):
	assert candidate([0,9,0,9,0]) == None
	assert candidate(
    [0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]) == None
	assert candidate([0,0,0]) == None
	assert candidate([9,8,7,6,0]) == None
	assert candidate([0,0,0,0,9]) == None
	assert candidate(
    [1,0,2,3,0,4,5,0,6,7,8,9,0,0,1,0,0,2,0,3,0,4,0,5,0,6,0,7,0,8,0,9,0,0,2]) == None
	assert candidate(
    [1,2,0,9,0,2,1,3,6,9,0,9,0,0,6,7,0,0,0,9,0,8,0,7,0]) == None
	assert candidate(
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]) == None
	assert candidate(
    [1,0,2,3,0,4,5,0,6,7,8,9,0,0,1,0,0,2,0,3,0,4,0,5,0,6,0,7,0,8,0,9,0,0]) == None
	assert candidate([0]) == None
	assert candidate([0,1,2,3,4]) == None
	assert candidate([0,9,0,9,0,9]) == None
	assert candidate([0,9,0,0,9,0]) == None
	assert candidate([0,9,0,0,9]) == None
	assert candidate([0,0]) == None
	assert candidate([9,0,9,0,0,9]) == None
	assert candidate([0,0,0,0]) == None
	assert candidate([0,2,0,0]) == None
	assert candidate([1,1,1,1,1]) == None
	assert candidate([9,0,9,0,9,0]) == None
	assert candidate([0,0,0,0,0]) == None
	assert candidate(
    [9,0,0,9,0,9,9,9,0,9,0,9,0,9,0,0,0,0,0,9,0,9,0,0,9,0,0,0,0,0,0,0,9,9,0,0,0,0,9,0,9,0,0,9,0]) == None
	assert candidate(
    [0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 1]) == None
	assert candidate([1,2,3,4,5,0]) == None
	assert candidate([9,0,0,0,0]) == None
	assert candidate([0,0,9,9,0,0]) == None
	assert candidate(
    [4,8,0,0,0,0,0,0,0,8,8,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,4,8,3,2,1,0]) == None
	assert candidate([1,2,3]) == None
	assert candidate([1,0,2,3,0,4,5,0]) == None
	assert candidate([0,6,7,8,9]) == None
	assert candidate([1,2,3,0,0]) == None
	assert candidate(
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 1]) == None
	assert candidate([0,1]) == None
	assert candidate(
    [0, 0, 0, 9, 0, 0, 0, 9, 0, 0, 9, 0, 0, 0, 0, 9, 0, 0, 0, 9, 0, 0, 9]) == None
	assert candidate(
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9]) == None
	assert candidate([9,9,0,0,9,9]) == None
	assert candidate([1]) == None
	assert candidate(
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]) == None
	assert candidate([1,1]) == None
	assert candidate([9]) == None
	assert candidate(
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8]) == None
	assert candidate([4,3,2,1,0]) == None
	assert candidate([9,0,0,0,9]) == None
def test_check():
	check(duplicateZeros)
# Metadata Difficulty: Easy
# Metadata Topics: array,two-pointers
# Metadata Coverage: 100
