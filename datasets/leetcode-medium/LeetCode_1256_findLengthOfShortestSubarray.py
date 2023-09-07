from typing import List


def findLengthOfShortestSubarray(arr: List[int]) -> int:
    """
    Given an integer array arr, remove a subarray (can be empty) from arr such that the remaining elements in arr are non-decreasing.
    Return the length of the shortest subarray to remove.
    A subarray is a contiguous subsequence of the array.
 
    Example 1:

    Input: arr = [1,2,3,10,4,2,3,5]
    Output: 3
    Explanation: The shortest subarray we can remove is [10,4,2] of length 3. The remaining elements after that will be [1,2,3,3,5] which are sorted.
    Another correct solution is to remove the subarray [3,10,4].

    Example 2:

    Input: arr = [5,4,3,2,1]
    Output: 4
    Explanation: Since the array is strictly decreasing, we can only keep a single element. Therefore we need to remove a subarray of length 4, either [5,4,3,2] or [4,3,2,1].

    Example 3:

    Input: arr = [1,2,3]
    Output: 0
    Explanation: The array is already non-decreasing. We do not need to remove any elements.

 
    Constraints:

    1 <= arr.length <= 105
    0 <= arr[i] <= 109

    """
    ### Canonical solution below ###
    n = len(arr)
    left, right = 0, n - 1

    while left < n - 1 and arr[left] <= arr[left + 1]:
        left += 1

    if left == n - 1:
        return 0

    while right > 0 and arr[right] >= arr[right - 1]:
        right -= 1

    result = min(right, n - left - 1)

    i, j = 0, right

    while i <= left and j < n:
        if arr[i] <= arr[j]:
            result = min(result, j - i - 1)
            i += 1
        else:
            j += 1

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([5, 4, 3, 2, 1]) == 4, "A subarray can be the entire array."
	assert candidate([1, 2, 3, 4, 5, 7, 6]) == 1
	assert candidate([1, 2, 3, 10, 4, 2, 3, 5]) == 3
	assert candidate([1, 1, 1, 1, 1, 1, 1]) == 0
	assert candidate([5, 4, 3, 2, 1]) == 4
	assert candidate(
    [1, 2, 3, 10, 4, 2, 3, 5]) == 3, "A subarray can be empty."
	assert candidate([1, 2, 3, 10, 4, 2, 3, 5, 6, 7]) == 3
	assert candidate(
    [1, 2, 3, 10, 4, 2, 3, 5]) == 3, "Error in case [1, 2, 3, 10, 4, 2, 3, 5]"
	assert candidate([1, 2, 3, 4, 3, 5]) == 1
	assert candidate([1, 2, 3, 4, 5, 6, 6, 5, 4, 3, 2, 1]) == 5
	assert candidate([1, 2, 3]) == 0, "The array is already non-decreasing."
	assert candidate([1, 2, 3]) == 0
	assert candidate([1, 10, 10, 2, 3, 4, 5, 6]) == 2
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == 8
	assert candidate([2, 2, 2, 2, 2, 2, 2, 2, 2, 2]) == 0
def test_check():
	check(findLengthOfShortestSubarray)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,binary-search,stack,monotonic-stack
# Metadata Coverage: 100
