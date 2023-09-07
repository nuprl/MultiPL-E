from typing import List


def longest_mountain(arr: List[int]) -> int:
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
    max_length = 0
    i = 1
    while i < n - 1:
        if arr[i - 1] < arr[i] and arr[i] > arr[i + 1]:
            left = i - 1
            right = i + 1
            while left > 0 and arr[left - 1] < arr[left]:
                left -= 1
            while right < n - 1 and arr[right] > arr[right + 1]:
                right += 1
            max_length = max(max_length, right - left + 1)
            i = right
        else:
            i += 1
    return max_length




### Unit tests below ###
def check(candidate):
	assert candidate([2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == 16
	assert candidate([1, 2, 3, 2, 1, 2, 3, 2, 1]) == 5
	assert candidate([1, 2, 3, 4, 5]) == 0
	assert candidate([1, 2, 2, 2, 1]) == 0
	assert candidate([2, 3, 4, 5, 4, 2, 1]) == 7
	assert candidate([1, 2, 3, 4, 5, 4, 3, 2, 1]) == 9
	assert candidate([1, 2, 3, 4, 5, 6, 7]) == 0
	assert candidate([1, 2, 3, 4, 5, 6]) == 0
	assert candidate([1, 2, 1, 2, 1, 2, 1, 2, 1]) == 3
	assert candidate([2, 2, 2]) == 0
	assert candidate([1, 2, 3, 4, 5, 4, 3, 2, 1, 2, 3, 4, 5, 4, 3, 2, 1]) == 9
	assert candidate(
    [2, 1, 4, 7, 3, 2, 5]) == 5, "Error in O(1)-space solution; res should be 5"
	assert candidate([2, 3, 3, 2, 1]) == 0
	assert candidate([2, 1, 2]) == 0
	assert candidate([2, 3, 4, 5, 4, 3, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 8]) == 10
	assert candidate([2, 3, 4, 5, 4, 3, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9]) == 8
	assert candidate([2, 3, 3, 2]) == 0
	assert candidate(
    [2, 1, 4, 7, 3, 2, 5]) == 5, "Error in one-pass solution; res should be 5"
	assert candidate([2, 1, 4, 7, 3, 2, 5]) == 5
	assert candidate([2, 3, 4, 5, 4, 3, 2, 1]) == 8
	assert candidate([5, 4, 3, 2, 1]) == 0
def test_check():
	check(longest_mountain)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,dynamic-programming,enumeration
# Metadata Coverage: 100
