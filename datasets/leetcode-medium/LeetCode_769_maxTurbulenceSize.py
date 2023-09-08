from typing import List


def maxTurbulenceSize(arr: List[int]) -> int:
    """
    Given an integer array arr, return the length of a maximum size turbulent subarray of arr.
    A subarray is turbulent if the comparison sign flips between each adjacent pair of elements in the subarray.
    More formally, a subarray [arr[i], arr[i + 1], ..., arr[j]] of arr is said to be turbulent if and only if:

    For i <= k < j:


    arr[k] > arr[k + 1] when k is odd, and
    arr[k] < arr[k + 1] when k is even.


    Or, for i <= k < j:

    arr[k] > arr[k + 1] when k is even, and
    arr[k] < arr[k + 1] when k is odd.



 
    Example 1:

    Input: arr = [9,4,2,10,7,8,8,1,9]
    Output: 5
    Explanation: arr[1] > arr[2] < arr[3] > arr[4] < arr[5]

    Example 2:

    Input: arr = [4,8,12,16]
    Output: 2

    Example 3:

    Input: arr = [100]
    Output: 1

 
    Constraints:

    1 <= arr.length <= 4 * 104
    0 <= arr[i] <= 109

    """
    ### Canonical solution below ###
    n = len(arr)
    result = 1
    i = 0

    while i < n - 1:
        if arr[i] == arr[i + 1]:
            i += 1
            continue

        j = i + 1
        while j < n - 1 and ((arr[j] > arr[j + 1]) != (arr[j - 1] > arr[j])):
            j += 1

        result = max(result, j - i + 1)
        i = j

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([4,8,12,16]) == 2
	assert candidate([1,2,3,4,5,6,7,8,9]) == 2
	assert candidate([100]) == 1
	assert candidate([9,8,7,6,5,4,3,2,1]) == 2
	assert candidate([0,1,0,1,0,1,0,1,0]) == 9
	assert candidate([1,1,1,1,1,1,1,1,1]) == 1
	assert candidate([100,100,100,100,100,100,100,100,100]) == 1
	assert candidate([1,2,1,2,1,2,1,2,1]) == 9
	assert candidate([3,3,3,2,5,5,5,5,5]) == 3
	assert candidate([9,4,2,10,7,8,8,1,9]) == 5
	assert candidate([1,2,3,4,5,6,7,8,9,9,9,9,9,9,9,9,9,9]) == 2
	assert candidate([9,9]) == 1
def test_check():
	check(maxTurbulenceSize)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,sliding-window
# Metadata Coverage: 100
