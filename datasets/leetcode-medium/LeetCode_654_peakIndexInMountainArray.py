from typing import List


def peakIndexInMountainArray(arr: List[int]) -> int:
    """
    An array arr is a mountain if the following properties hold:

    arr.length >= 3
    There exists some i with 0 < i < arr.length - 1 such that:

    arr[0] < arr[1] < ... < arr[i - 1] < arr[i] 
    arr[i] > arr[i + 1] > ... > arr[arr.length - 1]



    Given a mountain array arr, return the index i such that arr[0] < arr[1] < ... < arr[i - 1] < arr[i] > arr[i + 1] > ... > arr[arr.length - 1].
    You must solve it in O(log(arr.length)) time complexity.
 
    Example 1:

    Input: arr = [0,1,0]
    Output: 1

    Example 2:

    Input: arr = [0,2,1,0]
    Output: 1

    Example 3:

    Input: arr = [0,10,5,2]
    Output: 1

 
    Constraints:

    3 <= arr.length <= 105
    0 <= arr[i] <= 106
    arr is guaranteed to be a mountain array.

    """
    ### Canonical solution below ###
    low, high = 0, len(arr) - 1
    while low < high:
        mid = low + (high - low) // 2
        if arr[mid] < arr[mid + 1]:
            low = mid + 1
        else:
            high = mid
    return low




### Unit tests below ###
def check(candidate):
	assert candidate([0, 1, 2, 3, 4, 5, 0]) == 5
	assert candidate([1, 3, 5, 7, 9, 7, 5, 3, 1]) == 4
	assert candidate([0, 2, 1, 0]) == 1
	assert candidate([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0]) == 9
	assert candidate([0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0]) == 5
	assert candidate([1, 2, 3, 2, 1, 2, 3, 4, 3, 2, 1]) == 7
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == 8
	assert candidate([0, 1, 2, 1, 0]) == 2
	assert candidate([0, 1, 2, 3, 4, 5, 6, 7, 8, 7, 6, 5, 4, 3, 2, 1, 0]) == 8
	assert candidate([0, 1, 2, 3, 2, 1, 0]) == 3
	assert candidate([0, 1, 0]) == 1
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == 9
	assert candidate([1, 2, 3, 2, 1]) == 2
def test_check():
	check(peakIndexInMountainArray)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search
# Metadata Coverage: 100
