from typing import List


def replaceElements(arr: List[int]) -> List[int]:
    """
    Given an array arr, replace every element in that array with the greatest element among the elements to its right, and replace the last element with -1.
    After doing so, return the array.
 
    Example 1:

    Input: arr = [17,18,5,4,6,1]
    Output: [18,6,6,6,1,-1]
    Explanation: 
    - index 0 --> the greatest element to the right of index 0 is index 1 (18).
    - index 1 --> the greatest element to the right of index 1 is index 4 (6).
    - index 2 --> the greatest element to the right of index 2 is index 4 (6).
    - index 3 --> the greatest element to the right of index 3 is index 4 (6).
    - index 4 --> the greatest element to the right of index 4 is index 5 (1).
    - index 5 --> there are no elements to the right of index 5, so we put -1.

    Example 2:

    Input: arr = [400]
    Output: [-1]
    Explanation: There are no elements to the right of index 0.

 
    Constraints:

    1 <= arr.length <= 104
    1 <= arr[i] <= 105

    """
    ### Canonical solution below ###
    n = len(arr)
    maxElement = -1
    for i in range(n - 1, -1, -1):
        temp = arr[i]
        arr[i] = maxElement
        maxElement = max(maxElement, temp)
    return arr




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,2,1,2,2,1,2,2]) == [2,2,2,2,2,2,2,2,-1]
	assert candidate([1,2,3,4,5]) == [5,5,5,5,-1]
	assert candidate(
    [17,18,5,4,6,1]) == [18,6,6,6,1,-1]
	assert candidate(
    [400]) == [-1]
	assert candidate([1,2,3,4,5,6,7]) == [7,7,7,7,7,7,-1]
	assert candidate([1,2]) == [2,-1]
	assert candidate( [17,18,5,4,6,1]) == [18,6,6,6,1,-1]
	assert candidate([1]) == [-1]
	assert candidate([1,1,1,1,1,1,1,1,1]) == [1,1,1,1,1,1,1,1,-1]
def test_check():
	check(replaceElements)
# Metadata Difficulty: Easy
# Metadata Topics: array
# Metadata Coverage: 100
