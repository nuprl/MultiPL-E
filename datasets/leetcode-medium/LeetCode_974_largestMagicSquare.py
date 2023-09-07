from typing import List


def largestMagicSquare(grid: List[List[int]]) -> int:
    """
    A k x k magic square is a k x k grid filled with integers such that every row sum, every column sum, and both diagonal sums are all equal. The integers in the magic square do not have to be distinct. Every 1 x 1 grid is trivially a magic square.
    Given an m x n integer grid, return the size (i.e., the side length k) of the largest magic square that can be found within this grid.
 
    Example 1:


    Input: grid = [[7,1,4,5,6],[2,5,1,6,4],[1,5,4,3,2],[1,2,7,3,4]]
    Output: 3
    Explanation: The largest magic square has a size of 3.
    Every row sum, column sum, and diagonal sum of this magic square is equal to 12.
    - Row sums: 5+1+6 = 5+4+3 = 2+7+3 = 12
    - Column sums: 5+5+2 = 1+4+7 = 6+3+3 = 12
    - Diagonal sums: 5+4+3 = 6+4+2 = 12

    Example 2:


    Input: grid = [[5,1,3,1],[9,3,3,1],[1,3,3,8]]
    Output: 2

 
    Constraints:

    m == grid.length
    n == grid[i].length
    1 <= m, n <= 50
    1 <= grid[i][j] <= 106

    """
    ### Canonical solution below ###
    m, n = len(grid), len(grid[0])
    row = [[0] * (n + 1) for _ in range(m)]
    col = [[0] * n for _ in range(m + 1)]

    for i in range(m):
        for j in range(n):
            row[i][j + 1] = row[i][j] + grid[i][j]
            col[i + 1][j] = col[i][j] + grid[i][j]

    for k in reversed(range(2, min(m, n) + 1)):
        for i in range(m - k + 1):
            for j in range(n - k + 1):
                _sum = row[i][j + k] - row[i][j]
                ok = all(row[i + t][j + k] - row[i + t][j] == _sum for t in range(1, k)) and all(
                    col[i + k][j + t] - col[i][j + t] == _sum for t in range(1, k))

                if not ok:
                    continue

                diag1 = sum(grid[i + t][j + t] for t in range(k))
                diag2 = sum(grid[i + t][j + k - 1 - t] for t in range(k))

                if diag1 == _sum and diag2 == _sum:
                    return k

    return 1




### Unit tests below ###
def check(candidate):
	assert candidate(
 [[2, 7, 6],
 [9, 5, 1],
 [4, 3, 8]]) == 3
	assert candidate(
 [[5, 1, 3, 1],
 [9, 3, 3, 1],
 [1, 3, 3, 8]]) == 2
	assert candidate(
 [[5, 1, 4, 3, 2],
 [9, 6, 8, 2, 1],
 [5, 7, 4, 2, 3],
 [6, 3, 1, 9, 4],
 [1, 2, 3, 4, 5],
 [1, 2, 3, 4, 5]]) == 1
	assert candidate(
 [[5, 1, 4, 3, 2],
 [9, 6, 8, 2, 1],
 [5, 7, 4, 2, 3],
 [6, 3, 1, 9, 4],
 [1, 2, 3, 4, 5]]) == 1
	assert candidate(
 [[7, 1, 4, 5, 6],
 [2, 5, 1, 6, 4],
 [1, 5, 4, 3, 2],
 [1, 2, 7, 3, 4]]) == 3
	assert candidate(
 [[4, 8, 2, 6, 2],
 [4, 3, 1, 5, 4],
 [3, 8, 8, 5, 8],
 [5, 1, 3, 8, 1],
 [5, 1, 1, 1, 3]]) == 1
	assert candidate(
 [[5, 1, 4, 3],
 [9, 6, 8, 2],
 [5, 7, 4, 2],
 [6, 3, 1, 7]]) == 1
	assert candidate(
 [[2, 2],
 [2, 2]]) == 2
def test_check():
	check(largestMagicSquare)
# Metadata Difficulty: Medium
# Metadata Topics: array,matrix,prefix-sum
# Metadata Coverage: 100
