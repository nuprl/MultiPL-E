from typing import List


def uniquePathsIII(grid: List[List[int]]) -> int:
    """
    You are given an m x n integer array grid where grid[i][j] could be:

    1 representing the starting square. There is exactly one starting square.
    2 representing the ending square. There is exactly one ending square.
    0 representing empty squares we can walk over.
    -1 representing obstacles that we cannot walk over.

    Return the number of 4-directional walks from the starting square to the ending square, that walk over every non-obstacle square exactly once.
 
    Example 1:


    Input: grid = [[1,0,0,0],[0,0,0,0],[0,0,2,-1]]
    Output: 2
    Explanation: We have the following two paths: 
    1. (0,0),(0,1),(0,2),(0,3),(1,3),(1,2),(1,1),(1,0),(2,0),(2,1),(2,2)
    2. (0,0),(1,0),(2,0),(2,1),(1,1),(0,1),(0,2),(0,3),(1,3),(1,2),(2,2)

    Example 2:


    Input: grid = [[1,0,0,0],[0,0,0,0],[0,0,0,2]]
    Output: 4
    Explanation: We have the following four paths: 
    1. (0,0),(0,1),(0,2),(0,3),(1,3),(1,2),(1,1),(1,0),(2,0),(2,1),(2,2),(2,3)
    2. (0,0),(0,1),(1,1),(1,0),(2,0),(2,1),(2,2),(1,2),(0,2),(0,3),(1,3),(2,3)
    3. (0,0),(1,0),(2,0),(2,1),(2,2),(1,2),(1,1),(0,1),(0,2),(0,3),(1,3),(2,3)
    4. (0,0),(1,0),(2,0),(2,1),(1,1),(0,1),(0,2),(0,3),(1,3),(1,2),(2,2),(2,3)

    Example 3:


    Input: grid = [[0,1],[2,0]]
    Output: 0
    Explanation: There is no path that walks over every empty square exactly once.
    Note that the starting and ending square can be anywhere in the grid.

 
    Constraints:

    m == grid.length
    n == grid[i].length
    1 <= m, n <= 20
    1 <= m * n <= 20
    -1 <= grid[i][j] <= 2
    There is exactly one starting cell and one ending cell.

    """
    ### Canonical solution below ###
    def dfs(grid, x, y, empty):
        if x < 0 or x >= len(grid) or y < 0 or y >= len(grid[0]) or grid[x][y] == -1:
            return 0
        if grid[x][y] == 2:
            return 1 if empty == -1 else 0
        grid[x][y] = -1
        paths = dfs(grid, x + 1, y, empty - 1) + dfs(grid, x - 1, y, empty - 1) + dfs(grid, x, y + 1, empty - 1) + dfs(grid, x, y - 1, empty - 1)
        grid[x][y] = 0
        return paths
    x, y, empty = 0, 0, 1
    for i in range(len(grid)):
        for j in range(len(grid[0])):
            if grid[i][j] == 1:
                x, y = i, j
            elif grid[i][j] == 0:
                empty += 1
    return dfs(grid, x, y, empty)




### Unit tests below ###
def check(candidate):
	assert candidate([[0]]) == 0
	assert candidate([[1,0,0,0],[0,0,-1,0],[0,0,0,2]]) == 0
	assert candidate([[0,1],[2,0]]) == 0
	assert candidate([[1,0,0,0,0],[0,0,0,0,0],[0,0,0,0,-1],[0,0,0,0,2]]) == 0
	assert candidate([[0],[0],[0]]) == 0
	assert candidate([[1,-1,0,0],[0,0,0,0],[0,0,0,2]]) == 0
	assert candidate([[1,0,0,0],[0,0,0,0],[0,0,0,2],[0,0,0,-1]]) == 0
	assert candidate([[0],[0]]) == 0
def test_check():
	check(uniquePathsIII)
# Metadata Difficulty: Hard
# Metadata Topics: array,backtracking,bit-manipulation,matrix
# Metadata Coverage: 100
