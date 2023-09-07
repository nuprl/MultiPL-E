from typing import List


def islandPerimeter(grid: List[List[int]]) -> int:
    """
    You are given row x col grid representing a map where grid[i][j] = 1 represents land and grid[i][j] = 0 represents water.
    Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells).
    The island doesn't have "lakes", meaning the water inside isn't connected to the water around the island. One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.
 
    Example 1:


    Input: grid = [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]
    Output: 16
    Explanation: The perimeter is the 16 yellow stripes in the image above.

    Example 2:

    Input: grid = [[1]]
    Output: 4

    Example 3:

    Input: grid = [[1,0]]
    Output: 4

 
    Constraints:

    row == grid.length
    col == grid[i].length
    1 <= row, col <= 100
    grid[i][j] is 0 or 1.
    There is exactly one island in grid.

    """
    ### Canonical solution below ###
    perimeter = 0
    for row in range(len(grid)):
        for col in range(len(grid[row])):
            if grid[row][col] == 1:
                perimeter += 4
                if row > 0 and grid[row - 1][col] == 1:
                    perimeter -= 2
                if col > 0 and grid[row][col - 1] == 1:
                    perimeter -= 2
    return perimeter




### Unit tests below ###
def check(candidate):
	assert candidate([[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]) == 16
	assert candidate([[1, 1], [1, 1]]) == 8
	assert candidate(
    [[1, 0, 0, 0, 1], [1, 0, 0, 1, 1], [1, 0, 1, 1, 1], [1, 1, 1, 1, 1]]) == 24
	assert candidate([[1]]) == 4
	assert candidate(
    [[0, 1, 0, 0],
     [1, 1, 1, 0],
     [0, 1, 0, 0],
     [1, 1, 0, 0]]) == 16
	assert candidate([[1, 0]]) == 4
	assert candidate([[1, 1, 1], [1, 0, 1], [1, 1, 1]]) == 16
def test_check():
	check(islandPerimeter)
# Metadata Difficulty: Easy
# Metadata Topics: array,depth-first-search,breadth-first-search,matrix
# Metadata Coverage: 100
