from typing import List


def countNegatives(grid: List[List[int]]) -> int:
    """
    Given a m x n matrix grid which is sorted in non-increasing order both row-wise and column-wise, return the number of negative numbers in grid.
 
    Example 1:

    Input: grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
    Output: 8
    Explanation: There are 8 negatives number in the matrix.

    Example 2:

    Input: grid = [[3,2],[1,0]]
    Output: 0

 
    Constraints:

    m == grid.length
    n == grid[i].length
    1 <= m, n <= 100
    -100 <= grid[i][j] <= 100

 
    Follow up: Could you find an O(n + m) solution?"""
    ### Canonical solution below ###
    m, n, count, i, j = len(grid), len(grid[0]), 0, 0, len(grid[0]) - 1
    while i < m and j >= 0:
        if grid[i][j] < 0:
            count += j + 1
            i += 1
        else:
            j -= 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate([[-1,-1,-1,-1,-1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1]]) == 5
	assert candidate([[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]]) == 0
	assert candidate([[-1,-1,-1,-1],[1,1,1,1],[1,1,1,1]]) == 4
	assert candidate([[-1]]) == 1
	assert candidate([[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1]]) == 0
	assert candidate(
    [[-4, -3, -1, 1], [-3, -2, 1, 2], [-2, -1, 1, 3], [-1, 1, 2, 4], [1, 2, 3, 5]]) == 8
	assert candidate([[3,2],[1,0]]) == 0
def test_check():
	check(countNegatives)
# Metadata Difficulty: Easy
# Metadata Topics: array,binary-search,matrix
# Metadata Coverage: 100
