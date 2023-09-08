from typing import List


def min_swaps(grid: List[List[int]]) -> int:
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
    row_zeros = [0] * n

    for i in range(n):
        for j in range(n - 1, -1, -1):
            if grid[i][j] == 0:
                row_zeros[i] += 1
            else:
                break

    steps = 0
    for i in range(n):
        target = n - i - 1
        current_row = i
        while current_row < n and row_zeros[current_row] < target:
            current_row += 1
        if current_row == n:
            return -1
        steps += current_row - i
        row_zeros.pop(current_row)
        row_zeros.insert(i, target)

    return steps




### Unit tests below ###
def check(candidate):
	assert candidate(
    [[0, 1, 0, 1, 0], [1, 0, 0, 1, 1], [1, 0, 1, 0, 0], [0, 0, 0, 0, 1], [0, 1, 1, 0, 0]]) == -1
	assert candidate([[1, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]]) == 0
	assert candidate([[1, 0, 0, 1, 0, 1, 0], [0, 1, 0, 1, 1, 0, 0], [0, 0, 1, 0, 1, 0, 0], [1, 1, 0, 0, 0, 1, 0],
                 [0, 0, 0, 1, 0, 0, 1], [0, 1, 0, 0, 0, 0, 1], [0, 0, 0, 0, 1, 1, 0]]) == -1
	assert candidate([[1, 0, 0, 0, 0], [0, 1, 0, 0, 0], [0, 0, 1, 0, 0], [0, 0, 0, 1, 0], [0, 0, 0, 0, 1]]) == 0
	assert candidate([[1, 0], [0, 1]]) == 0
	assert candidate([[0, 1, 0], [1, 0, 0], [0, 0, 1]]) == 1
	assert candidate([[1, 0, 0], [0, 1, 0], [0, 0, 1]]) == 0
	assert candidate([[0, 1], [1, 0]]) == 1
	assert candidate([[0, 0, 0, 0, 1], [0, 0, 0, 1, 0], [0, 0, 1, 0, 0], [0, 1, 0, 0, 0], [1, 0, 0, 0, 0]]) == 10
	assert candidate([[0, 0, 0, 1], [0, 0, 1, 0], [0, 1, 0, 0], [1, 0, 0, 0]]) == 6
def test_check():
	check(min_swaps)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,matrix
# Metadata Coverage: 100
