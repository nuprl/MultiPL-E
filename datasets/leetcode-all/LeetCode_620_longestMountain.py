from typing import List


def longestMountain(arr: List[int]) -> int:
    """
    You may recall that an array arr is a mountain array if and only if:

    arr.length >= 3
    There exists some index i (0-indexed) with 0 < i < arr.length - 1 such that:

    arr[0] < arr[1] < ... < arr[i - 1] < arr[i]
    arr[i] > arr[i + 1] > ... > arr[arr.length - 1]



    Given an integer array arr, return the length of the longest subarray, which is a mountain. Return 0 if there is no mountain subarray.
 
    Example 1:

    Input: arr = [2,1,4,7,3,2,5]
    Output: 5
    Explanation: The largest mountain is [1,4,7,3,2] which has length 5.

    Example 2:

    Input: arr = [2,2,2]
    Output: 0
    Explanation: There is no mountain.

 
    Constraints:

    1 <= arr.length <= 104
    0 <= arr[i] <= 104

 
    Follow up:

    Can you solve it using only one pass?
    Can you solve it in O(1) space?

    """
    ### Canonical solution below ###
    n = len(arr)
    res = up = down = 0

    for i in range(1, n):
        if (down and arr[i - 1] < arr[i]) or arr[i - 1] == arr[i]:
            up = down = 0

        up += arr[i - 1] < arr[i]
        down += arr[i - 1] > arr[i]

        if up and down:
            res = max(res, up + down + 1)

    return res




### Unit tests below ###
def check(candidate):
	assert candidate(
    [1, 2, 3, 5, 4, 3, 2, 1, 2, 3]) == 8, "Error at input [1, 2, 3, 5, 4, 3, 2, 1, 2, 3]"
	assert candidate([100, 200, 300, 400, 500, 400, 300, 200, 100]) == 9
	assert candidate([1, 2, 3, 4, 5, 4, 3, 2, 1]) == 9
	assert candidate([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) == 0
	assert candidate([9, 8, 7, 6, 5, 4, 3, 2, 1, 0]) == 0
	assert candidate(
    [1, 0, 1, 0, 1, 0, 1, 0, 1]) == 3, "Error at input [1, 0, 1, 0, 1, 0, 1, 0, 1]"
	assert candidate(
    [2, 1, 4, 7, 3, 2, 5]) == 5, "Error at input [2, 1, 4, 7, 3, 2, 5]"
	assert candidate([10, 12, 14, 16, 18, 16, 14, 12, 10]) == 9
	assert candidate([1, 2, 3, 2, 1, 2, 3, 2, 1]) == 5
	assert candidate([1, 0, 1, 0, 1, 0, 1, 0, 1]) == 3
	assert candidate(
    [2, 2, 2]) == 0, "Error at input [2, 2, 2]"
	assert candidate([875, 884, 941, 1009, 1123, 1160, 1194, 1246]) == 0
	assert candidate([2, 2, 2]) == 0
	assert candidate([2, 1, 4, 7, 3, 2, 5]) == 5
	assert candidate(
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) == 0, "Error at input [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]"
	assert candidate([1, 2, 3, 5, 4, 3, 2, 1, 2, 3]) == 8
def test_check():
	check(longestMountain)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,dynamic-programming,enumeration
# Metadata Coverage: 100
