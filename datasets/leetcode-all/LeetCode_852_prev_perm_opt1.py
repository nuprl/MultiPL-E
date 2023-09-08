from typing import List


def prev_perm_opt1(arr: List[int]) -> List[int]:
    """
    Given an array of positive integers arr (not necessarily distinct), return the lexicographically largest permutation that is smaller than arr, that can be made with exactly one swap. If it cannot be done, then return the same array.
    Note that a swap exchanges the positions of two numbers arr[i] and arr[j]
 
    Example 1:

    Input: arr = [3,2,1]
    Output: [3,1,2]
    Explanation: Swapping 2 and 1.

    Example 2:

    Input: arr = [1,1,5]
    Output: [1,1,5]
    Explanation: This is already the smallest permutation.

    Example 3:

    Input: arr = [1,9,4,6,7]
    Output: [1,7,4,6,9]
    Explanation: Swapping 9 and 7.

 
    Constraints:

    1 <= arr.length <= 104
    1 <= arr[i] <= 104

    """
    ### Canonical solution below ###
    n = len(arr)
    for i in range(n - 2, -1, -1):
        if arr[i] > arr[i + 1]:
            j = i + 1
            while j < n and arr[j] < arr[i]:
                j += 1
            arr[i], arr[j - 1] = arr[j - 1], arr[i]
            return arr
    return arr




### Unit tests below ###
def check(candidate):
	assert candidate([9, 5, 4, 3, 2]) == [9, 5, 4, 2, 3]
	assert candidate([1, 9, 4, 6, 7]) == [1, 7, 4, 6, 9]
	assert candidate([1, 1, 1]) == [1, 1, 1]
	assert candidate([3, 1, 2]) == [2, 1, 3]
	assert candidate(
    [5, 4, 3, 2, 1]) == [5, 4, 3, 1, 2]
	assert candidate([9, 5, 4, 3, 2, 1]) == [9, 5, 4, 3, 1, 2]
	assert candidate([2, 2, 2, 2]) == [2, 2, 2, 2]
	assert candidate([1, 2, 3, 4]) == [1, 2, 3, 4]
	assert candidate([1, 5, 1, 8, 7]) == [1, 5, 1, 7, 8]
	assert candidate([1, 1, 5, 8, 7]) == [1, 1, 5, 7, 8]
	assert candidate(
    [1, 3, 2, 4]) == [1, 2, 3, 4]
	assert candidate(
    [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]) == [9, 8, 7, 6, 5, 4, 3, 2, 0, 1]
def test_check():
	check(prev_perm_opt1)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy
# Metadata Coverage: 100
