from typing import List


def construct2DArray(original: List[int], m: int, n: int) -> List[List[int]]:
    """
    You are given a 0-indexed 1-dimensional (1D) integer array original, and two integers, m and n. You are tasked with creating a 2-dimensional (2D) array with  m rows and n columns using all the elements from original.
    The elements from indices 0 to n - 1 (inclusive) of original should form the first row of the constructed 2D array, the elements from indices n to 2 * n - 1 (inclusive) should form the second row of the constructed 2D array, and so on.
    Return an m x n 2D array constructed according to the above procedure, or an empty 2D array if it is impossible.
 
    Example 1:


    Input: original = [1,2,3,4], m = 2, n = 2
    Output: [[1,2],[3,4]]
    Explanation: The constructed 2D array should contain 2 rows and 2 columns.
    The first group of n=2 elements in original, [1,2], becomes the first row in the constructed 2D array.
    The second group of n=2 elements in original, [3,4], becomes the second row in the constructed 2D array.

    Example 2:

    Input: original = [1,2,3], m = 1, n = 3
    Output: [[1,2,3]]
    Explanation: The constructed 2D array should contain 1 row and 3 columns.
    Put all three elements in original into the first row of the constructed 2D array.

    Example 3:

    Input: original = [1,2], m = 1, n = 1
    Output: []
    Explanation: There are 2 elements in original.
    It is impossible to fit 2 elements in a 1x1 2D array, so return an empty 2D array.

 
    Constraints:

    1 <= original.length <= 5 * 104
    1 <= original[i] <= 105
    1 <= m, n <= 4 * 104

    """
    ### Canonical solution below ###
    if m * n != len(original):
        return []
    res = [[0] * n for _ in range(m)]
    for i in range(len(original)):
        res[i // n][i % n] = original[i]
    return res




### Unit tests below ###
def check(candidate):
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0], 4, 2) == [[0, 0], [0, 0], [0, 0], [0, 0]]
	assert candidate([1, 2], 1, 2) == [[1, 2]]
	assert candidate([1], 2, 1) == []
	assert candidate([1, 2, 3], 1, 2) == []
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1], 4, 2) == [[1, 1], [1, 1], [1, 1], [1, 1]]
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0], 2, 4) == [[0, 0, 0, 0], [0, 0, 0, 0]]
	assert candidate([1, 2, 3], 3, 1) == [[1], [2], [3]]
	assert candidate([1, 2], 1, 1) == []
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5, 2) == [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8], 2, 4) == [[1, 2, 3, 4], [5, 6, 7, 8]]
	assert candidate([1, 2, 3, 4], 2, 2) == [[1, 2], [3, 4]]
	assert candidate([7, 8, 9, 10, 11, 12], 3, 2) == [[7, 8], [9, 10], [11, 12]]
	assert candidate([1], 1, 1) == [[1]]
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], 3, 4) == [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8], 4, 2) == [[1, 2], [3, 4], [5, 6], [7, 8]]
	assert candidate([1], 1, 2) == []
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], 4, 4) == [
    [1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
	assert candidate([1, 2], 2, 1) == [[1], [2]]
	assert candidate([0, 1, 0, 1, 0, 1, 0, 1], 4, 2) == [[0, 1], [0, 1], [0, 1], [0, 1]]
	assert candidate([1, 2, 3, 4, 5, 6], 2, 3) == [[1, 2, 3], [4, 5, 6]]
	assert candidate([1, 2, 3], 1, 3) == [[1, 2, 3]]
	assert candidate([1, 2, 3], 2, 3) == []
	assert candidate([1, 2, 3, 4], 3, 2) == []
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0], 1, 8) == [[0, 0, 0, 0, 0, 0, 0, 0]]
	assert candidate([1, 2, 3, 4], 1, 3) == []
def test_check():
	check(construct2DArray)
# Metadata Difficulty: Easy
# Metadata Topics: array,matrix,simulation
# Metadata Coverage: 100
