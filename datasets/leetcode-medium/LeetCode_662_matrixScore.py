from typing import List


def matrixScore(grid: List[List[int]]) -> int:
    """
    You are given an m x n binary matrix grid.
    A move consists of choosing any row or column and toggling each value in that row or column (i.e., changing all 0's to 1's, and all 1's to 0's).
    Every row of the matrix is interpreted as a binary number, and the score of the matrix is the sum of these numbers.
    Return the highest possible score after making any number of moves (including zero moves).
 
    Example 1:


    Input: grid = [[0,0,1,1],[1,0,1,0],[1,1,0,0]]
    Output: 39
    Explanation: 0b1111 + 0b1001 + 0b1111 = 15 + 9 + 15 = 39

    Example 2:

    Input: grid = [[0]]
    Output: 1

 
    Constraints:

    m == grid.length
    n == grid[i].length
    1 <= m, n <= 20
    grid[i][j] is either 0 or 1.

    """
    ### Canonical solution below ###
    m, n = len(grid), len(grid[0])
    for i in range(m):
        if grid[i][0] == 0:
            for j in range(n):
                grid[i][j] = 1 - grid[i][j]
    for j in range(1, n):
        count = sum(grid[i][j] for i in range(m))
        if count <= m // 2:
            for i in range(m):
                grid[i][j] = 1 - grid[i][j]
    return sum(sum(grid[i][j]*(1 << (n - 1 - j)) for j in range(n)) for i in range(m))




### Unit tests below ###
def check(candidate):
	assert candidate([[0,0,1,1],[1,0,1,0],[1,1,0,0]]) == 39
	assert candidate([[0,0,0,0,0,0,0,0,0,0],[1,1,1,1,1,1,1,1,1,1]]) == 2046
	assert candidate([[0,1,0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0,1,0]]) == 2046
	assert candidate([[1]]) == 1
	assert candidate([[1,0,1,0,1,0,1,0,1,0],[0,1,0,1,0,1,0,1,0,1]]) == 2046
	assert candidate([[0]]) == 1
	assert candidate([[1,0],[0,1]]) == 6
	assert candidate([[1,1,1,1,1,1,1,1,1,1],[0,0,0,0,0,0,0,0,0,0]]) == 2046
def test_check():
	check(matrixScore)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,bit-manipulation,matrix
# Metadata Coverage: 100
