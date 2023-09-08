from typing import List


def getMaximumGold(grid: List[List[int]]) -> int:
    """
    In a gold mine grid of size m x n, each cell in this mine has an integer representing the amount of gold in that cell, 0 if it is empty.
    Return the maximum amount of gold you can collect under the conditions:

    Every time you are located in a cell you will collect all the gold in that cell.
    From your position, you can walk one step to the left, right, up, or down.
    You can't visit the same cell more than once.
    Never visit a cell with 0 gold.
    You can start and stop collecting gold from any position in the grid that has some gold.

 
    Example 1:

    Input: grid = [[0,6,0],[5,8,7],[0,9,0]]
    Output: 24
    Explanation:
    [[0,6,0],
     [5,8,7],
     [0,9,0]]
    Path to get the maximum gold, 9 -> 8 -> 7.

    Example 2:

    Input: grid = [[1,0,7],[2,0,6],[3,4,5],[0,3,0],[9,0,20]]
    Output: 28
    Explanation:
    [[1,0,7],
     [2,0,6],
     [3,4,5],
     [0,3,0],
     [9,0,20]]
    Path to get the maximum gold, 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7.

 
    Constraints:

    m == grid.length
    n == grid[i].length
    1 <= m, n <= 15
    0 <= grid[i][j] <= 100
    There are at most 25 cells containing gold.

    """
    ### Canonical solution below ###
    m, n, max_gold = len(grid), len(grid[0]), 0

    def getMaximumGoldHelper(x, y):
        if not (0 <= x < m) or not (0 <= y < n) or grid[x][y] == 0:
            return 0

        original_gold = grid[x][y]
        grid[x][y] = 0

        max_gold = 0
        max_gold = max(max_gold, getMaximumGoldHelper(x + 1, y))
        max_gold = max(max_gold, getMaximumGoldHelper(x - 1, y))
        max_gold = max(max_gold, getMaximumGoldHelper(x, y + 1))
        max_gold = max(max_gold, getMaximumGoldHelper(x, y - 1))

        grid[x][y] = original_gold
        return max_gold + original_gold

    for i in range(m):
        for j in range(n):
            if grid[i][j] != 0:
                max_gold = max(max_gold, getMaximumGoldHelper(i, j))

    return max_gold




### Unit tests below ###
def check(candidate):
	assert candidate([[1,0,0,0],[0,1,0,0],[0,0,1,0],[0,0,0,1]]) == 1
	assert candidate([[1, 0, 7], [2, 0, 6], [3, 4, 5], [0, 3, 0], [9, 0, 20]]) == 28
	assert candidate([[0, 0, 0, 0, 0, 0, 32], [0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0]]) == 32
	assert candidate([[1, 0, 0, 0], [0, 1, 0, 0], [0, 1, 1, 1], [0, 0, 1, 0]]) == 4
	assert candidate([[0, 6, 0], [5, 8, 7], [0, 9, 0]]) == 24
	assert candidate([[1,0,0,1],[0,1,1,0],[0,1,1,0],[1,0,0,1]]) == 4
def test_check():
	check(getMaximumGold)
# Metadata Difficulty: Medium
# Metadata Topics: array,backtracking,matrix
# Metadata Coverage: 100
