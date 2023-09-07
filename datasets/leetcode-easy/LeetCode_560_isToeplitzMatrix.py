from typing import List


def isToeplitzMatrix(matrix: List[List[int]]) -> bool:
    """
    Given an m x n matrix, return true if the matrix is Toeplitz. Otherwise, return false.
    A matrix is Toeplitz if every diagonal from top-left to bottom-right has the same elements.
 
    Example 1:


    Input: matrix = [[1,2,3,4],[5,1,2,3],[9,5,1,2]]
    Output: true
    Explanation:
    In the above grid, the diagonals are:
    "[9]", "[5, 5]", "[1, 1, 1]", "[2, 2, 2]", "[3, 3]", "[4]".
    In each diagonal all elements are the same, so the answer is True.

    Example 2:


    Input: matrix = [[1,2],[2,2]]
    Output: false
    Explanation:
    The diagonal "[1, 2]" has different elements.

 
    Constraints:

    m == matrix.length
    n == matrix[i].length
    1 <= m, n <= 20
    0 <= matrix[i][j] <= 99

 
    Follow up:

    What if the matrix is stored on disk, and the memory is limited such that you can only load at most one row of the matrix into the memory at once?
    What if the matrix is so large that you can only load up a partial row into the memory at once?

    """
    ### Canonical solution below ###
    rows = len(matrix)
    cols = len(matrix[0])
    for i in range(rows - 1):
        for j in range(cols - 1):
            if matrix[i][j] != matrix[i+1][j+1]:
                return False
    return True




### Unit tests below ###
def check(candidate):
	assert candidate([
    [1,2,3,4,5],
    [6,7,8,9,7],
    [11,12,13,14,15]
]) == False
	assert candidate([
    [1,2,3,4,5],
    [6,7,8,9,10],
    [11,12,13,14,15],
    [16,17,18,19,20],
    [21,22,23,24,25]
]) == False
	assert candidate([
    [1,2,3,4,5],
    [6,7,8,9,7],
    [1,6,7,8,9],
    [2,1,6,7,8]
]) == False
	assert candidate([
    [1,2,3,4,5],
    [6,7,8,9,7],
    [1,6,7,8,9],
    [1,1,1,1,9],
    [8,1,2,3,4]
]) == False
	assert candidate([
    [1,2,3,4,5],
    [6,7,8,9,1],
    [11,12,13,14,15]
]) == False
	assert candidate([
    [1,6,7,8,9],
    [2,1,6,7,8],
    [3,2,1,6,7]
]) == True
	assert candidate([
    [1,2,3],
    [4,5,2],
    [6,4,5]
]) == False
	assert candidate([
    [1]
]) == True
	assert candidate([
    [1,2,3],
    [4,1,2],
    [5,4,1]
]) == True
	assert candidate([
    [1,2,3,4,5],
    [6,1,7,8,9],
    [10,6,2,11,12],
    [13,14,6,3,15],
    [16,17,18,6,4]
]) == False
	assert candidate([
    [1,2,3,4,5],
    [6,7,8,9,7],
    [11,12,13,14,15],
    [16,17,18,19,20]
]) == False
	assert candidate([
    [6,7,8,9,7],
    [1,6,7,8,9],
    [1,1,1,1,6],
    [9,1,1,1,5]
]) == False
	assert candidate([
    [1,2],
    [2,1]
]) == True
	assert candidate([
    [1,2,3,4,5],
    [6,7,8,9,7],
    [1,6,7,8,9],
    [1,1,6,7,8]
]) == False
	assert candidate([
    [1,2,3,4,5,2],
    [6,7,8,9,10,3],
    [11,12,13,14,15,4],
    [16,17,18,19,20,5],
    [21,22,23,24,25,6]
]) == False
	assert candidate([
    [1,2,3,4,5,6],
    [6,7,8,9,10,11],
    [11,12,13,14,15,12],
    [16,17,18,19,20,13],
    [21,22,23,24,25,14]
]) == False
	assert candidate([
    [1,1,1,1],
    [1,1,1,1],
    [1,1,1,1],
    [1,1,1,1]
]) == True
	assert candidate([
    [1,2,3,4,5],
    [6,7,8,9,7],
    [1,6,7,8,9],
    [1,1,1,1,9]
]) == False
	assert candidate([
    [1,2,3,4,5],
    [6,7,8,9,7],
    [1,6,7,8,9],
    [1,1,6,7,9]
]) == False
	assert candidate([
    [1,2],
    [3,1],
    [4,3]
]) == True
	assert candidate([
    [36,13,30,46,1],
    [34,25,33,42,48],
    [33,24,40,39,48],
    [22,14,37,39,45],
    [12,18,29,38,42]
]) == False
	assert candidate([
    [1,2,3,4,5],
    [6,1,2,3,4],
    [7,6,1,2,3],
    [8,7,6,1,2],
    [9,8,7,6,1]
]) == True
	assert candidate([
    [1,2,3,4,5,6],
    [6,7,8,9,10,7],
    [11,12,13,14,15,8],
    [16,17,18,19,20,9],
    [21,22,23,24,25,10]
]) == False
	assert candidate([
    [1,2,3,4],
    [5,1,2,3],
    [6,5,1,2],
    [7,6,9,1]
]) == False
	assert candidate([
    [1,2,3,4],
    [5,1,2,3],
    [6,5,1,2],
    [7,6,5,1]
]) == True
	assert candidate([
    [1,2,3,4,5],
    [6,7,8,9,7],
    [1,6,7,8,9],
    [2,1,6,7,8],
    [3,2,1,6,7]
]) == False
def test_check():
	check(isToeplitzMatrix)
# Metadata Difficulty: Easy
# Metadata Topics: array,matrix
# Metadata Coverage: 100
