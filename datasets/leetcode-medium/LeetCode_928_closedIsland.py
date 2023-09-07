from typing import List


def closedIsland(grid: List[List[int]]) -> int:
    """
    Given a 2D grid consists of 0s (land) and 1s (water).  An island is a maximal 4-directionally connected group of 0s and a closed island is an island totally (all left, top, right, bottom) surrounded by 1s.
    Return the number of closed islands.
 
    Example 1:


    Input: grid = [[1,1,1,1,1,1,1,0],[1,0,0,0,0,1,1,0],[1,0,1,0,1,1,1,0],[1,0,0,0,0,1,0,1],[1,1,1,1,1,1,1,0]]
    Output: 2
    Explanation: 
    Islands in gray are closed because they are completely surrounded by water (group of 1s).
    Example 2:


    Input: grid = [[0,0,1,0,0],[0,1,0,1,0],[0,1,1,1,0]]
    Output: 1

    Example 3:

    Input: grid = [[1,1,1,1,1,1,1],
                                  [1,0,0,0,0,0,1],
                                  [1,0,1,1,1,0,1],
                                  [1,0,1,0,1,0,1],
                                  [1,0,1,1,1,0,1],
                                  [1,0,0,0,0,0,1],
                   [1,1,1,1,1,1,1]]
    Output: 2

 
    Constraints:

    1 <= grid.length, grid[0].length <= 100
    0 <= grid[i][j] <=1

    """
    ### Canonical solution below ###
    def dfs(grid, i, j):
        if i < 0 or j < 0 or i >= len(grid) or j >= len(grid[0]):
            return False

        if grid[i][j] == 1:
            return True

        grid[i][j] = 1

        up = dfs(grid, i - 1, j)
        down = dfs(grid, i + 1, j)
        left = dfs(grid, i, j - 1)
        right = dfs(grid, i, j + 1)

        return up and down and left and right

    count = 0
    for i in range(len(grid)):
        for j in range(len(grid[0])):
            if grid[i][j] == 0 and dfs(grid, i, j):
                count += 1

    return count




### Unit tests below ###
def check(candidate):
	assert candidate([[1,1,1,0],[1,0,0,1],[1,1,1,0]]) == 1
	assert candidate([[0]]) == 0
	assert candidate([[1,1,1,1,1],[1,0,1,0,1],[1,0,0,0,1],[1,1,1,1,1]]) == 1
	assert candidate([[0,0,1,0,0],[0,1,0,1,0],[0,1,1,1,0]]) == 1
	assert candidate([[1,1,1,1,1,1,1,1],[1,0,0,0,0,0,0,1],[1,0,1,1,1,1,0,1],[1,0,1,0,0,1,0,1],[1,0,1,1,1,1,0,1],[1,0,1,0,0,1,0,1],[1,0,1,0,1,1,0,1],[1,0,0,0,0,0,0,1],[1,1,1,1,1,1,1,1]]) == 2
	assert candidate([[1]]) == 0
	assert candidate([[1,1,1,1,1,1,1],[1,0,0,0,0,0,1],[1,0,1,1,1,0,1],[1,0,1,0,1,0,1],[1,0,1,1,1,0,1],[1,0,0,0,0,0,1],[1,1,1,1,1,1,1]]) == 2
	assert candidate([[1,1,1,1,1,1,1,0],[1,0,0,0,0,1,1,0],[1,0,1,0,1,1,1,0],[1,0,0,0,0,1,0,1],[1,1,1,1,1,1,1,0]]) == 2
def test_check():
	check(closedIsland)
# Metadata Difficulty: Medium
# Metadata Topics: array,depth-first-search,breadth-first-search,union-find,matrix
# Metadata Coverage: 100
