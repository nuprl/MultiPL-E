from typing import List


def minSwaps(grid: List[List[int]]) -> int:
    """
    Given an n x n binary grid, in one step you can choose two adjacent rows of the grid and swap them.
    A grid is said to be valid if all the cells above the main diagonal are zeros.
    Return the minimum number of steps needed to make the grid valid, or -1 if the grid cannot be valid.
    The main diagonal of a grid is the diagonal that starts at cell (1, 1) and ends at cell (n, n).
 
    Example 1:


    Input: grid = [[0,0,1],[1,1,0],[1,0,0]]
    Output: 3

    Example 2:


    Input: grid = [[0,1,1,0],[0,1,1,0],[0,1,1,0],[0,1,1,0]]
    Output: -1
    Explanation: All rows are similar, swaps have no effect on the grid.

    Example 3:


    Input: grid = [[1,0,0],[1,1,0],[1,1,1]]
    Output: 0

 
    Constraints:

    n == grid.length == grid[i].length
    1 <= n <= 200
    grid[i][j] is either 0 or 1

    """
    ### Canonical solution below ###
    n = len(grid)
    steps = 0

    for i in range(n):
        row = -1
        for j in range(i, n):
            if grid[j][i] == 0:
                row = j
                break
        if row == -1:
            return -1

        while row > i:
            grid[row], grid[row - 1] = grid[row - 1], grid[row]
            steps += 1
            row -= 1

    return steps




### Unit tests below ###
def check(candidate):
	assert candidate(
    [[0, 1, 1, 0],
     [0, 1, 1, 0],
     [0, 1, 1, 0],
     [0, 1, 1, 0]]) == -1
	assert candidate(
    [[1, 0, 0, 0, 1], [0, 0, 1, 1, 0], [0, 1, 0, 1, 0], [0, 1, 1, 0, 0], [1, 1, 1, 1, 1]]) == -1
	assert candidate([[1, 1], [1, 0]]) == -1
	assert candidate([[0]]) == 0
	assert candidate([[0,1,1,0],[0,1,1,0],[0,1,1,0],[0,1,1,0]]) == -1
	assert candidate(
    [[0, 0, 0, 0],
     [0, 0, 0, 0],
     [0, 0, 0, 0],
     [0, 0, 0, 0]]) == 0
def test_check():
	check(minSwaps)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,matrix
# Metadata Coverage: 100
