from typing import List


def minFallingPathSum(grid: List[List[int]]) -> int:
    """
    Given an n x n integer matrix grid, return the minimum sum of a falling path with non-zero shifts.
    A falling path with non-zero shifts is a choice of exactly one element from each row of grid such that no two elements chosen in adjacent rows are in the same column.
 
    Example 1:


    Input: grid = [[1,2,3],[4,5,6],[7,8,9]]
    Output: 13
    Explanation: 
    The possible falling paths are:
    [1,5,9], [1,5,7], [1,6,7], [1,6,8],
    [2,4,8], [2,4,9], [2,6,7], [2,6,8],
    [3,4,8], [3,4,9], [3,5,7], [3,5,9]
    The falling path with the smallest sum is [1,5,7], so the answer is 13.

    Example 2:

    Input: grid = [[7]]
    Output: 7

 
    Constraints:

    n == grid.length == grid[i].length
    1 <= n <= 200
    -99 <= grid[i][j] <= 99

    """
    ### Canonical solution below ###
    n = len(grid)
    for i in range(1, n):
        for j in range(n):
            minVal = float('inf')
            for k in range(n):
                if k == j:
                    continue
                minVal = min(minVal, grid[i - 1][k])
            grid[i][j] += minVal
    return min(grid[n - 1])




### Unit tests below ###
def check(candidate):
	assert candidate([[1,2,3,4,5,6,7,8,9,10]]) == 1
	assert candidate(
    [[1, 2, 3],
     [4, 5, 6],
     [7, 8, 9]]) == 13
	assert candidate([[1,2]]) == 1
	assert candidate([[1,2,3],[4,5,6]]) == 6
	assert candidate([[1,100,1],[1,100,1],[1,100,1]]) == 3
	assert candidate(
    [[1,2,3],[4,5,6],[7,8,9]]) == 13
	assert candidate([[1,2,3],[4,5,6],[7,8,9]]) == 13
	assert candidate([[1]]) == 1
def test_check():
	check(minFallingPathSum)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming,matrix
# Metadata Coverage: 100
