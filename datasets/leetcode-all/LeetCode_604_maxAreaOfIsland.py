from typing import List


def maxAreaOfIsland(grid: List[List[int]]) -> int:
    """
    You are given an m x n binary matrix grid. An island is a group of 1's (representing land) connected 4-directionally (horizontal or vertical.) You may assume all four edges of the grid are surrounded by water.
    The area of an island is the number of cells with a value 1 in the island.
    Return the maximum area of an island in grid. If there is no island, return 0.
 
    Example 1:


    Input: grid = [[0,0,1,0,0,0,0,1,0,0,0,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,1,1,0,1,0,0,0,0,0,0,0,0],[0,1,0,0,1,1,0,0,1,0,1,0,0],[0,1,0,0,1,1,0,0,1,1,1,0,0],[0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,0,0,0,0,0,0,1,1,0,0,0,0]]
    Output: 6
    Explanation: The answer is not 11, because the island must be connected 4-directionally.

    Example 2:

    Input: grid = [[0,0,0,0,0,0,0,0]]
    Output: 0

 
    Constraints:

    m == grid.length
    n == grid[i].length
    1 <= m, n <= 50
    grid[i][j] is either 0 or 1.

    """
    ### Canonical solution below ###
    def dfs(x, y):
        if x < 0 or x >= len(grid) or y < 0 or y >= len(grid[0]) or grid[x][y] == 0:
            return 0
        grid[x][y] = 0
        return dfs(x - 1, y) + dfs(x + 1, y) + dfs(x, y - 1) + dfs(x, y + 1) + 1

    ans = 0
    for i, row in enumerate(grid):
        for j, cell in enumerate(row):
            if cell == 0:
                grid[i][j] = 1
                ans = max(ans, dfs(i, j))
                grid[i][j] = 0
    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([[1,0,0],[0,1,0],[0,0,1]]) == 3
	assert candidate([[1,0],[0,1]]) == 3
	assert candidate([[0,0,0,0,0],[0,1,1,1,0],[0,1,0,1,0],[0,1,1,1,0],[0,0,0,0,0]]) == 9
	assert candidate([[1,1],[1,0]]) == 4
	assert candidate([[0,0],[0,0]]) == 1
	assert candidate([[0]]) == 1
def test_check():
	check(maxAreaOfIsland)
# Metadata Difficulty: Medium
# Metadata Topics: array,depth-first-search,breadth-first-search,union-find,matrix
# Metadata Coverage: 100
