from typing import List


def prevPermOpt1(arr: List[int]) -> List[int]:
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
            break
    return arr




### Unit tests below ###
def check(candidate):
	assert candidate([2, 2, 1, 2]) == [2, 1, 2, 2]
	assert candidate([1,1,1,1]) == [1,1,1,1]
	assert candidate([1,1,5]) == [1,1,5]
	assert candidate([2, 2, 2, 1]) == [2, 2, 1, 2]
	assert candidate([]) == []
	assert candidate([1, 2, 3, 5, 4]) == [1, 2, 3, 4, 5]
	assert candidate([2, 1, 2, 1]) == [2, 1, 1, 2]
	assert candidate([1, 2, 3, 5, 6]) == [1, 2, 3, 5, 6]
	assert candidate(list(range(1,8))) == [1, 2, 3, 4, 5, 6, 7]
	assert candidate([3,2,1]) == [3,1,2]
	assert candidate([5, 4, 3, 2, 1]) == [5, 4, 3, 1, 2]
	assert candidate([3, 2, 1, 0]) == [3, 2, 0, 1]
	assert candidate([3]) == [3]
	assert candidate([1,2,3,4]) == [1,2,3,4]
	assert candidate([4, 3, 2, 1]) == [4, 3, 1, 2]
	assert candidate([1,9,4,6,7]) == [1,7,4,6,9]
def test_check():
	check(prevPermOpt1)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy
# Metadata Coverage: 100
