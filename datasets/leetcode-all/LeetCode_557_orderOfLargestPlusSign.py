from typing import List


def orderOfLargestPlusSign(n: int, mines: List[List[int]]) -> int:
    """
    You are given an integer n. You have an n x n binary grid grid with all values initially 1's except for some indices given in the array mines. The ith element of the array mines is defined as mines[i] = [xi, yi] where grid[xi][yi] == 0.
    Return the order of the largest axis-aligned plus sign of 1's contained in grid. If there is none, return 0.
    An axis-aligned plus sign of 1's of order k has some center grid[r][c] == 1 along with four arms of length k - 1 going up, down, left, and right, and made of 1's. Note that there could be 0's or 1's beyond the arms of the plus sign, only the relevant area of the plus sign is checked for 1's.
 
    Example 1:


    Input: n = 5, mines = [[4,2]]
    Output: 2
    Explanation: In the above grid, the largest plus sign can only be of order 2. One of them is shown.

    Example 2:


    Input: n = 1, mines = [[0,0]]
    Output: 0
    Explanation: There is no plus sign, so return 0.

 
    Constraints:

    1 <= n <= 500
    1 <= mines.length <= 5000
    0 <= xi, yi < n
    All the pairs (xi, yi) are unique.

    """
    ### Canonical solution below ###
    grid = [[1] * n for _ in range(n)]
    for mine in mines:
        grid[mine[0]][mine[1]] = 0

    left, right, up, down = [list(grid) for _ in range(4)]

    for i in range(n):
        for j in range(n):
            if grid[i][j]:
                left[i][j] = 1 + (left[i][j - 1] if j > 0 else 0)
                up[i][j] = 1 + (up[i - 1][j] if i > 0 else 0)

    ans = 0
    for i in range(n - 1, -1, -1):
        for j in range(n - 1, -1, -1):
            if grid[i][j]:
                right[i][j] = 1 + (right[i][j + 1] if j < n - 1 else 0)
                down[i][j] = 1 + (down[i + 1][j] if i < n - 1 else 0)
                ans = max(ans, min([left[i][j], right[i][j], up[i][j], down[i][j]]))

    return ans




### Unit tests below ###
def check(candidate):
	assert candidate(1, [[0, 0]]) == 0
	assert candidate(2, [[0, 0], [1, 1]]) == 1
	assert candidate(5, [[1, 1], [0, 0], [4, 3], [0, 2], [0, 4], [0, 1]]) == 4
	assert candidate(2, [[0, 0]]) == 2
	assert candidate(3, []) == 3
	assert candidate(2, []) == 2
	assert candidate(3, [[1, 1]]) == 3
	assert candidate(1, []) == 1
	assert candidate(2, [[0, 0], [0, 1]]) == 1
def test_check():
	check(orderOfLargestPlusSign)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
