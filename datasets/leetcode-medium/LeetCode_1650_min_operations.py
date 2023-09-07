from typing import List


def min_operations(grid: List[List[int]], x: int) -> int:
    """
    You are given a 2D integer grid of size m x n and an integer x. In one operation, you can add x to or subtract x from any element in the grid.
    A uni-value grid is a grid where all the elements of it are equal.
    Return the minimum number of operations to make the grid uni-value. If it is not possible, return -1.
 
    Example 1:


    Input: grid = [[2,4],[6,8]], x = 2
    Output: 4
    Explanation: We can make every element equal to 4 by doing the following: 
    - Add x to 2 once.
    - Subtract x from 6 once.
    - Subtract x from 8 twice.
    A total of 4 operations were used.

    Example 2:


    Input: grid = [[1,5],[2,3]], x = 1
    Output: 5
    Explanation: We can make every element equal to 3.

    Example 3:


    Input: grid = [[1,2],[3,4]], x = 2
    Output: -1
    Explanation: It is impossible to make every element equal.

 
    Constraints:

    m == grid.length
    n == grid[i].length
    1 <= m, n <= 105
    1 <= m * n <= 105
    1 <= x, grid[i][j] <= 104

    """
    ### Canonical solution below ###
    min_element = min(min(row) for row in grid)
    min_ops = float('inf')

    base = min_element
    while True:
        operations = 0
        impossible = False
        for row in grid:
            if impossible:
                break
            for cell in row:
                diff = abs(cell - base)
                if diff % x != 0:
                    impossible = True
                    break
                operations += diff // x
        if impossible:
            break
        min_ops = min(min_ops, operations)
        base -= 1

    return -1 if min_ops == float('inf') else min_ops




### Unit tests below ###
def check(candidate):
	assert candidate(
    [[33, 39, 40, 42, 44], [46, 47, 49, 51, 55], [57, 58, 59, 60, 61], [63, 64, 66, 67, 69], [71, 72, 73, 74, 75]], 7) == -1
	assert candidate([[2, 4, 6], [7, 9, 11]], 2) == -1
	assert candidate([[1, 2, 3], [4, 5, 6]], 3) == -1
	assert candidate([[5, 5], [5, 5]], 5) == 0
	assert candidate([[1, 3, 5], [7, 9, 11]], 2) == 15
	assert candidate([[2, 4, 6], [8, 10, 12]], 2) == 15
	assert candidate([[2, 3, 5, 7], [8, 10, 12, 13], [14, 15, 16, 17], [18, 20, 21, 24]], 3) == -1
	assert candidate([[1, 3, 2, 1, 2], [3, 4, 1, 3, 4], [3, 4, 3, 4, 4]], 3) == -1
	assert candidate([[4, 8, 12], [16, 20, 24]], 4) == 15
	assert candidate([[3, 6, 9], [11, 14, 17]], 3) == -1
	assert candidate(
    [[5, 9, 8, 1, 2, 4], [4, 3, 2, 2, 1, 1], [6, 6, 6, 8, 3, 1], [2, 4, 2, 4, 3, 4]], 4
) == -1
	assert candidate([[2, 2], [2, 2]], 2) == 0
	assert candidate([[3, 6, 9], [11, 14, 17]], 4) == -1
	assert candidate([[1, 2, 3], [4, 5, 6]], 4) == -1
	assert candidate([[3, 5, 7], [8, 10, 12]], 2) == -1
	assert candidate([[2, 4, 8], [3, 7, 14], [5, 8, 20]], 2) == -1
	assert candidate([[1, 2, 3], [4, 5, 6]], 5) == -1
	assert candidate(
    [[49, 69, 102], [70, 110, 148], [149, 178, 227]], 25) == -1
	assert candidate([[1, 2, 3], [4, 5, 6]], 2) == -1
def test_check():
	check(min_operations)
# Metadata Difficulty: Medium
# Metadata Topics: array,math,sorting,matrix
# Metadata Coverage: 100
