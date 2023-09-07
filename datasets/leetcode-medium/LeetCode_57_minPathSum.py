from typing import List


def minPathSum(grid: List[List[int]]) -> int:
    """
    Given a m x n grid filled with non-negative numbers, find a path from top left to bottom right, which minimizes the sum of all numbers along its path.
    Note: You can only move either down or right at any point in time.
 
    Example 1:


    Input: grid = [[1,3,1],[1,5,1],[4,2,1]]
    Output: 7
    Explanation: Because the path 1 → 3 → 1 → 1 → 1 minimizes the sum.

    Example 2:

    Input: grid = [[1,2,3],[4,5,6]]
    Output: 12

 
    Constraints:

    m == grid.length
    n == grid[i].length
    1 <= m, n <= 200
    0 <= grid[i][j] <= 200

    """
    ### Canonical solution below ###
    m, n = len(grid), len(grid[0])

    for i in range(1, m):
        grid[i][0] += grid[i - 1][0]

    for i in range(1, n):
        grid[0][i] += grid[0][i - 1]

    for i in range(1, m):
        for j in range(1, n):
            grid[i][j] += min(grid[i - 1][j], grid[i][j - 1])

    return grid[m - 1][n - 1]




### Unit tests below ###
def check(candidate):
	assert candidate(
    [[1, 3, 1], [1, 5, 1], [4, 2, 1]]) == 7
	assert candidate([[1,3,1],[1,5,1],[4,2,1]]) == 7
	assert candidate(
    [[1, 3, 1],
     [1, 5, 1],
     [4, 2, 1]]) == 7
	assert candidate([[1]]) == 1
	assert candidate([[1,2,3],[4,5,6]]) == 12
	assert candidate([[1, 2, 3], [4, 5, 6]]) == 12
	assert candidate([[1, 3, 1], [1, 5, 1], [4, 2, 1]]) == 7
	assert candidate([[1],[2],[3],[4],[5],[6],[7],[8],[9],[10]]) == 55
	assert candidate([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) == 21
	assert candidate([[1, 3, 2, 3], [2, 4, 1, 2], [3, 6, 1, 1], [2, 3, 2, 3]]) == 12
	assert candidate([[1,2,3,4,5,6,7,8,9,10]]) == 55
def test_check():
	check(minPathSum)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,matrix
# Metadata Coverage: 100
