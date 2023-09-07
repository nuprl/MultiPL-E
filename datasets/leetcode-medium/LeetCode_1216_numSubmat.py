from typing import List


def numSubmat(mat: List[List[int]]) -> int:
    """
    Given an m x n binary matrix mat, return the number of submatrices that have all ones.
 
    Example 1:


    Input: mat = [[1,0,1],[1,1,0],[1,1,0]]
    Output: 13
    Explanation: 
    There are 6 rectangles of side 1x1.
    There are 2 rectangles of side 1x2.
    There are 3 rectangles of side 2x1.
    There is 1 rectangle of side 2x2. 
    There is 1 rectangle of side 3x1.
    Total number of rectangles = 6 + 2 + 3 + 1 + 1 = 13.

    Example 2:


    Input: mat = [[0,1,1,0],[0,1,1,1],[1,1,1,0]]
    Output: 24
    Explanation: 
    There are 8 rectangles of side 1x1.
    There are 5 rectangles of side 1x2.
    There are 2 rectangles of side 1x3. 
    There are 4 rectangles of side 2x1.
    There are 2 rectangles of side 2x2. 
    There are 2 rectangles of side 3x1. 
    There is 1 rectangle of side 3x2. 
    Total number of rectangles = 8 + 5 + 2 + 4 + 2 + 2 + 1 = 24.

 
    Constraints:

    1 <= m, n <= 150
    mat[i][j] is either 0 or 1.

    """
    ### Canonical solution below ###
    m, n = len(mat), len(mat[0])
    dp = [[0] * n for _ in range(m)]
    count = 0

    for i in range(m):
        for j in range(n):
            if mat[i][j] == 1:
                dp[i][j] = (1 if j == 0 else dp[i][j - 1] + 1)
                minWidth = dp[i][j]
                for k in range(i, -1, -1):
                    minWidth = min(minWidth, dp[k][j])
                    count += minWidth

    return count




### Unit tests below ###
def check(candidate):
	assert candidate([[1,1,1],[1,1,1],[1,1,1]]) == 36
	assert candidate([[0]]) == 0
	assert candidate([[1]]) == 1
	assert candidate([[1,1],[1,1]]) == 9
	assert candidate([[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1]]) == 225
	assert candidate([[0]] * 150) == 0
	assert candidate([[1,1,0],[1,1,0],[0,0,1]]) == 10
	assert candidate([[0,1,1,0],[0,1,1,1],[1,1,1,0]]) == 24
def test_check():
	check(numSubmat)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,stack,matrix,monotonic-stack
# Metadata Coverage: 100
