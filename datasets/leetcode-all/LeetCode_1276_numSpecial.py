from typing import List


def numSpecial(mat: List[List[int]]) -> int:
    """
    Given an m x n binary matrix mat, return the number of special positions in mat.
    A position (i, j) is called special if mat[i][j] == 1 and all other elements in row i and column j are 0 (rows and columns are 0-indexed).
 
    Example 1:


    Input: mat = [[1,0,0],[0,0,1],[1,0,0]]
    Output: 1
    Explanation: (1, 2) is a special position because mat[1][2] == 1 and all other elements in row 1 and column 2 are 0.

    Example 2:


    Input: mat = [[1,0,0],[0,1,0],[0,0,1]]
    Output: 3
    Explanation: (0, 0), (1, 1) and (2, 2) are special positions.

 
    Constraints:

    m == mat.length
    n == mat[i].length
    1 <= m, n <= 100
    mat[i][j] is either 0 or 1.

    """
    ### Canonical solution below ###
    m, n = len(mat), len(mat[0])
    row, col = [0] * m, [0] * n

    for i in range(m):
        for j in range(n):
            if mat[i][j] == 1:
                row[i] += 1
                col[j] += 1

    special_positions = 0
    for i in range(m):
        for j in range(n):
            if mat[i][j] == 1 and row[i] == 1 and col[j] == 1:
                special_positions += 1

    return special_positions




### Unit tests below ###
def check(candidate):
	assert candidate(
    [
        [1, 1, 0, 1, 1],
        [1, 1, 0, 1, 1],
        [1, 1, 0, 1, 1],
        [1, 1, 1, 1, 1],
        [1, 1, 0, 1, 1],
        [1, 1, 0, 1, 1],
        [1, 1, 0, 1, 1],
    ]
) == 0
	assert candidate([[0, 0, 1], [0, 0, 0], [0, 0, 0]]) == 1
	assert candidate([[1, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]]) == 4
	assert candidate([[1]]) == 1
	assert candidate([[1, 0, 0], [0, 0, 1], [1, 0, 0]]) == 1
	assert candidate([[1, 0, 0, 1], [0, 1, 1, 0], [0, 1, 1, 0], [1, 0, 0, 1]]) == 0
	assert candidate(
    [[0, 0, 1, 0], [0, 0, 0, 1], [1, 1, 0, 0], [0, 0, 0, 0]]) == 2
	assert candidate([[1, 0], [0, 1]]) == 2
	assert candidate([[0]]) == 0
	assert candidate([[1, 1], [1, 1]]) == 0
	assert candidate(
    [[0, 0, 0, 0, 0], [1, 0, 0, 0, 0], [0, 1, 0, 0, 0], [0, 0, 1, 0, 0], [0, 0, 0, 1, 1]]) == 3
	assert candidate(
    [
        [0, 0, 0, 0, 0],
        [1, 0, 0, 0, 0],
        [0, 1, 0, 0, 0],
        [0, 0, 1, 0, 0],
        [0, 0, 0, 1, 1],
    ]
) == 3
	assert candidate([[1, 0, 1], [0, 1, 0], [1, 0, 0]]) == 1
	assert candidate([[0, 1], [1, 1]]) == 0
	assert candidate([[0, 1], [1, 0]]) == 2
	assert candidate([[1, 1], [0, 0]]) == 0
	assert candidate([[1, 1, 1], [1, 1, 1], [1, 1, 1]]) == 0
	assert candidate([[1, 0, 0], [0, 1, 0], [0, 0, 1]]) == 3
	assert candidate([[0, 0, 0], [0, 0, 0], [0, 0, 0]]) == 0
	assert candidate([[0, 0, 0], [0, 1, 0], [0, 0, 0]]) == 1
	assert candidate([[1, 1, 0], [0, 1, 1], [1, 0, 0]]) == 0
def test_check():
	check(numSpecial)
# Metadata Difficulty: Easy
# Metadata Topics: array,matrix
# Metadata Coverage: 100
