from typing import List


def findRotation(mat: List[List[int]], target: List[List[int]]) -> bool:
    """
    Given two n x n binary matrices mat and target, return true if it is possible to make mat equal to target by rotating mat in 90-degree increments, or false otherwise.
 
    Example 1:


    Input: mat = [[0,1],[1,0]], target = [[1,0],[0,1]]
    Output: true
    Explanation: We can rotate mat 90 degrees clockwise to make mat equal target.

    Example 2:


    Input: mat = [[0,1],[1,1]], target = [[1,0],[0,1]]
    Output: false
    Explanation: It is impossible to make mat equal to target by rotating mat.

    Example 3:


    Input: mat = [[0,0,0],[0,1,0],[1,1,1]], target = [[1,1,1],[0,1,0],[0,0,0]]
    Output: true
    Explanation: We can rotate mat 90 degrees clockwise two times to make mat equal target.

 
    Constraints:

    n == mat.length == target.length
    n == mat[i].length == target[i].length
    1 <= n <= 10
    mat[i][j] and target[i][j] are either 0 or 1.

    """
    ### Canonical solution below ###
    for _ in range(4):
        if mat == target:
            return True
        n = len(mat)
        for r in range((n + 1) // 2):
            for c in range(n // 2):
                mat[r][c], mat[n - 1 - c][r], mat[n - 1 - r][n - 1 - c], mat[c][n - 1 - r] = mat[n - 1 - c][r], mat[n - 1 - r][n - 1 - c], mat[c][n - 1 - r], mat[r][c]
    return False




### Unit tests below ###
def check(candidate):
	assert candidate(
    [[1, 1, 0], [1, 0, 1], [1, 1, 0]], [[1, 1, 0], [1, 0, 1], [1, 1, 0]]
) == True
	assert candidate([[1, 0], [0, 1]], [[1, 0], [0, 1]]) == True
	assert candidate([[0, 1], [1, 0]], [[1, 0], [0, 1]]) == True
	assert candidate(
    [[0, 0, 1], [1, 1, 0], [0, 1, 1]],
    [[0, 1, 1], [1, 1, 0], [0, 0, 1]]
) == False
	assert candidate([[0, 1], [1, 0]], [[0, 1], [1, 0]]) == True
	assert candidate([[1, 1, 1], [0, 0, 0], [0, 0, 0]], [[0, 0, 0], [0, 0, 0], [1, 1, 1]]) == True
	assert candidate(
    [[1, 1, 0], [0, 0, 0], [1, 0, 1]],
    [[1, 1, 0], [0, 0, 0], [1, 0, 1]]
) == True
	assert candidate([[1, 0], [0, 1]], [[0, 1], [1, 0]]) == True
	assert candidate([[1, 0, 1], [0, 1, 0], [1, 0, 1]], [[0, 1, 0], [1, 0, 1], [0, 1, 0]]) == False
	assert candidate([[1, 1], [0, 0]], [[1, 0], [0, 1]]) == False
	assert candidate(
    [[1, 1, 0], [0, 0, 0], [1, 0, 1]],
    [[1, 1, 0], [0, 0, 0], [0, 1, 1]]
) == False
	assert candidate(
    [[1, 0, 1], [0, 1, 0], [1, 0, 1]], [[1, 0, 1], [0, 1, 0], [1, 0, 1]]
) == True
	assert candidate(
    [[1, 0, 0], [0, 1, 0], [0, 0, 1]], [[0, 0, 1], [0, 1, 0], [1, 0, 0]]
) == True
	assert candidate([[1, 0], [0, 1]], [[1, 1], [0, 0]]) == False
	assert candidate([[1, 0], [0, 1]], [[0, 0], [1, 1]]) == False
	assert candidate(
    [[1, 0, 1], [0, 1, 0], [1, 0, 1]], [[0, 0, 0], [1, 1, 1], [0, 0, 0]]
) == False
	assert candidate([[1, 0], [0, 1]], [[0, 0], [0, 1]]) == False
	assert candidate(
    [[0, 0, 0], [1, 1, 1], [0, 0, 0]], [[0, 0, 0], [1, 1, 1], [0, 0, 0]]
) == True
	assert candidate([[1, 1, 1], [0, 0, 0], [1, 1, 1]], [[1, 1, 1], [0, 0, 0], [1, 1, 1]]) == True
	assert candidate(
    [[1, 1, 0], [0, 0, 0], [1, 0, 1]],
    [[0, 1, 1], [1, 0, 0], [1, 1, 0]]
) == False
	assert candidate([[0, 0, 0], [1, 1, 1], [0, 0, 0]], [[0, 0, 0], [1, 1, 1], [0, 0, 0]]) == True
	assert candidate(
    [[0, 0, 0, 0], [1, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 0]], [[0, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 0], [1, 0, 0, 0]]
) == False
	assert candidate(
    [[1, 1, 0], [1, 0, 1], [1, 1, 0]], [[1, 0, 1], [1, 1, 0], [0, 1, 0]]
) == False
	assert candidate([[1, 1], [0, 0]], [[1, 1], [0, 0]]) == True
	assert candidate(
    [[0, 0, 0, 0], [1, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 0]], [[0, 0, 0, 0], [0, 0, 1, 0], [1, 0, 0, 0], [0, 1, 0, 0]]
) == False
def test_check():
	check(findRotation)
# Metadata Difficulty: Easy
# Metadata Topics: array,matrix
# Metadata Coverage: 100
