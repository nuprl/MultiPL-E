from typing import List


def shiftGrid(grid: List[List[int]], k: int) -> List[List[int]]:
    """
    Given a 2D grid of size m x n and an integer k. You need to shift the grid k times.
    In one shift operation:

    Element at grid[i][j] moves to grid[i][j + 1].
    Element at grid[i][n - 1] moves to grid[i + 1][0].
    Element at grid[m - 1][n - 1] moves to grid[0][0].

    Return the 2D grid after applying shift operation k times.
 
    Example 1:


    Input: grid = [[1,2,3],[4,5,6],[7,8,9]], k = 1
    Output: [[9,1,2],[3,4,5],[6,7,8]]

    Example 2:


    Input: grid = [[3,8,1,9],[19,7,2,5],[4,6,11,10],[12,0,21,13]], k = 4
    Output: [[12,0,21,13],[3,8,1,9],[19,7,2,5],[4,6,11,10]]

    Example 3:

    Input: grid = [[1,2,3],[4,5,6],[7,8,9]], k = 9
    Output: [[1,2,3],[4,5,6],[7,8,9]]

 
    Constraints:

    m == grid.length
    n == grid[i].length
    1 <= m <= 50
    1 <= n <= 50
    -1000 <= grid[i][j] <= 1000
    0 <= k <= 100

    """
    ### Canonical solution below ###
    m, n = len(grid), len(grid[0])
    k %= (m * n)
    res = [[0] * n for _ in range(m)]
    for i in range(m):
        for j in range(n):
            idx = (i * n + j + k) % (m * n)
            res[idx // n][idx % n] = grid[i][j]
    return res




### Unit tests below ###
def check(candidate):
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 9) == [[1,2,3],[4,5,6],[7,8,9]]
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 10) == [[9,1,2],[3,4,5],[6,7,8]]
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 5) == [[5,6,7],[8,9,1],[2,3,4]]
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 1) == [[9,1,2],[3,4,5],[6,7,8]]
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 2) == [[8,9,1],[2,3,4],[5,6,7]]
	assert candidate([[1]], 100) == [[1]]
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 7) == [[3,4,5],[6,7,8],[9,1,2]]
	assert candidate([[3,8,1,9],[19,7,2,5],[4,6,11,10],[12,0,21,13]], 4) == [[12,0,21,13],[3,8,1,9],[19,7,2,5],[4,6,11,10]]
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 3) == [[7,8,9],[1,2,3],[4,5,6]]
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 4) == [[6,7,8],[9,1,2],[3,4,5]]
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 8) == [[2,3,4],[5,6,7],[8,9,1]]
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 0) == [[1,2,3],[4,5,6],[7,8,9]]
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 6) == [[4,5,6],[7,8,9],[1,2,3]]
	assert candidate([[1,2,3,4,5,6,7,8,9,10]], 3) == [[8,9,10,1,2,3,4,5,6,7]]
def test_check():
	check(shiftGrid)
# Metadata Difficulty: Easy
# Metadata Topics: array,matrix,simulation
# Metadata Coverage: 100
