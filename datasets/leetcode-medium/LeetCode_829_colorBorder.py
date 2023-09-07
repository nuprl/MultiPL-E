from typing import List


def colorBorder(grid: List[List[int]], row: int, col: int, color: int) -> List[List[int]]:
    """
    You are given an m x n integer matrix grid, and three integers row, col, and color. Each value in the grid represents the color of the grid square at that location.
    Two squares are called adjacent if they are next to each other in any of the 4 directions.
    Two squares belong to the same connected component if they have the same color and they are adjacent.
    The border of a connected component is all the squares in the connected component that are either adjacent to (at least) a square not in the component, or on the boundary of the grid (the first or last row or column).
    You should color the border of the connected component that contains the square grid[row][col] with color.
    Return the final grid.
 
    Example 1:
    Input: grid = [[1,1],[1,2]], row = 0, col = 0, color = 3
    Output: [[3,3],[3,2]]
    Example 2:
    Input: grid = [[1,2,2],[2,3,2]], row = 0, col = 1, color = 3
    Output: [[1,3,3],[2,3,3]]
    Example 3:
    Input: grid = [[1,1,1],[1,1,1],[1,1,1]], row = 1, col = 1, color = 2
    Output: [[2,2,2],[2,1,2],[2,2,2]]

 
    Constraints:

    m == grid.length
    n == grid[i].length
    1 <= m, n <= 50
    1 <= grid[i][j], color <= 1000
    0 <= row < m
    0 <= col < n

    """
    ### Canonical solution below ###
    def dfs(grid, row, col, current, color):
        if row < 0 or row >= len(grid) or col < 0 or col >= len(grid[0]) or grid[row][col] != current:
            return

        grid[row][col] = color
        dfs(grid, row - 1, col, current, color)
        dfs(grid, row + 1, col, current, color)
        dfs(grid, row, col - 1, current, color)
        dfs(grid, row, col + 1, current, color)

    current = grid[row][col]
    if current == color:
        return grid

    dfs(grid, row, col, current, color + 1000)

    for i in range(len(grid)):
        for j in range(len(grid[0])):
            if grid[i][j] > 1000:
                grid[i][j] -= 1000

    return grid




### Unit tests below ###
def check(candidate):
	assert candidate([[1,1,1],[1,1,1],[1,1,1]], 1, 1, 1) == [[1,1,1],[1,1,1],[1,1,1]]
	assert candidate([[1,2,2],[2,3,2]], 0, 1, 3) == [[1,3,3],[2,3,3]]
	assert candidate(
    [[1,2,1,2,1,2,1,2,1],[1,2,1,2,1,2,1,2,1],[1,2,2,2,2,2,2,2,1],[1,2,1,2,2,2,2,2,1],
     [1,2,2,2,2,2,2,2,1],[1,2,1,2,2,2,2,2,1],[1,2,2,2,2,2,2,2,1],[1,2,1,2,2,2,2,2,1],
     [1,2,1,2,1,2,1,2,1]],
     0, 0, 3
) == [
     [3,2,1,2,1,2,1,2,1],
     [3,2,1,2,1,2,1,2,1],
     [3,2,2,2,2,2,2,2,1],
     [3,2,1,2,2,2,2,2,1],
     [3,2,2,2,2,2,2,2,1],
     [3,2,1,2,2,2,2,2,1],
     [3,2,2,2,2,2,2,2,1],
     [3,2,1,2,2,2,2,2,1],
     [3,2,1,2,1,2,1,2,1]
]
	assert candidate([[1,2,1],[2,2,2],[1,2,1]], 1, 1, 3) == [[1,3,1],[3,3,3],[1,3,1]]
	assert candidate([[1,2,2,1],[2,3,3,2],[2,3,3,2]], 0, 0, 3) == [[3,2,2,1],[2,3,3,2],[2,3,3,2]]
def test_check():
	check(colorBorder)
# Metadata Difficulty: Medium
# Metadata Topics: array,depth-first-search,breadth-first-search,matrix
# Metadata Coverage: 100
