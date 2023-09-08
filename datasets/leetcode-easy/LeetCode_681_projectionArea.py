from typing import List


def projectionArea(grid: List[List[int]]) -> int:
    """
    You are given an n x n grid where we place some 1 x 1 x 1 cubes that are axis-aligned with the x, y, and z axes.
    Each value v = grid[i][j] represents a tower of v cubes placed on top of the cell (i, j).
    We view the projection of these cubes onto the xy, yz, and zx planes.
    A projection is like a shadow, that maps our 3-dimensional figure to a 2-dimensional plane. We are viewing the "shadow" when looking at the cubes from the top, the front, and the side.
    Return the total area of all three projections.
 
    Example 1:


    Input: grid = [[1,2],[3,4]]
    Output: 17
    Explanation: Here are the three projections ("shadows") of the shape made with each axis-aligned plane.

    Example 2:

    Input: grid = [[2]]
    Output: 5

    Example 3:

    Input: grid = [[1,0],[0,2]]
    Output: 8

 
    Constraints:

    n == grid.length == grid[i].length
    1 <= n <= 50
    0 <= grid[i][j] <= 50

    """
    ### Canonical solution below ###
    n = len(grid)
    top, front, side = 0, 0, 0
    for i in range(n):
        max_front, max_side = 0, 0
        for j in range(n):
            if grid[i][j] > 0:
                top += 1
            max_front = max(max_front, grid[i][j])
            max_side = max(max_side, grid[j][i])
        front += max_front
        side += max_side
    return top + front + side




### Unit tests below ###
def check(candidate):
	assert candidate([[1,0,1],[0,0,0],[1,0,1]]) == 8
	assert candidate([[2,2,2],[2,1,2],[2,2,2]]) == 21
	assert candidate([[1,1,1],[1,0,1],[1,1,1]]) == 14
	assert candidate(
    [[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]) == 0
	assert candidate([[1,1],[1,1]]) == 8
	assert candidate([[1,2],[3,4]]) == 17
	assert candidate([[1,0],[0,2]]) == 8
	assert candidate([[2]]) == 5
def test_check():
	check(projectionArea)
# Metadata Difficulty: Easy
# Metadata Topics: array,math,geometry,matrix
# Metadata Coverage: 100
