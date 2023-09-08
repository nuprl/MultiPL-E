from typing import List


def shortestPathBinaryMatrix(grid: List[List[int]]) -> int:
    """
    Given an n x n binary matrix grid, return the length of the shortest clear path in the matrix. If there is no clear path, return -1.
    A clear path in a binary matrix is a path from the top-left cell (i.e., (0, 0)) to the bottom-right cell (i.e., (n - 1, n - 1)) such that:

    All the visited cells of the path are 0.
    All the adjacent cells of the path are 8-directionally connected (i.e., they are different and they share an edge or a corner).

    The length of a clear path is the number of visited cells of this path.
 
    Example 1:


    Input: grid = [[0,1],[1,0]]
    Output: 2

    Example 2:


    Input: grid = [[0,0,0],[1,1,0],[1,1,0]]
    Output: 4

    Example 3:

    Input: grid = [[1,0,0],[1,1,0],[1,1,0]]
    Output: -1

 
    Constraints:

    n == grid.length
    n == grid[i].length
    1 <= n <= 100
    grid[i][j] is 0 or 1

    """
    ### Canonical solution below ###
    from collections import deque
    n = len(grid)
    if grid[0][0] == 1 or grid[n - 1][n - 1] == 1:
        return -1
    q = deque([(0, 0)])
    dirs = [(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)]
    grid[0][0] = 1
    steps = 1

    while q:
        size = len(q)
        for _ in range(size):
            x, y = q.popleft()

            if x == n - 1 and y == n - 1:
                return steps

            for dx, dy in dirs:
                newX, newY = x + dx, y + dy

                if 0 <= newX < n and 0 <= newY < n and grid[newX][newY] == 0:
                    q.append((newX, newY))
                    grid[newX][newY] = 1

        steps += 1

    return -1




### Unit tests below ###
def check(candidate):
	assert candidate([[0, 0, 0, 0], [1, 1, 1, 0], [1, 1, 1, 0], [0, 0, 0, 0]]) == 6
	assert candidate(
    [[1, 0, 0, 0, 1, 1, 0, 1, 0, 0], [0, 0, 1, 0, 1, 1, 0, 0, 0, 1], [0, 1, 1, 0, 1, 1, 1, 1, 1, 1],
     [0, 1, 1, 0, 1, 0, 0, 0, 0, 0], [1, 1, 0, 0, 0, 0, 0, 1, 0, 0], [0, 0, 0, 0, 0, 0, 0, 1, 0, 1],
     [0, 0, 0, 0, 0, 0, 0, 1, 1, 0], [1, 0, 1, 0, 1, 1, 1, 0, 1, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
     [1, 0, 1, 0, 1, 1, 0, 0, 0, 0]]) == -1
	assert candidate([[0, 1, 0, 0], [1, 1, 1, 0], [0, 0, 0, 0], [0, 1, 1, 0]]) == -1
	assert candidate(
    [[0, 0, 0, 0, 1], [1, 1, 1, 0, 1], [0, 0, 0, 1, 1], [0, 1, 1, 1, 1], [1, 1, 1, 1, 0]]) == -1
	assert candidate([[0, 1], [1, 0]]) == 2
	assert candidate([[0, 0, 0], [1, 1, 0], [1, 1, 0]]) == 4
	assert candidate([[0]]) == 1
	assert candidate([[1]]) == -1
def test_check():
	check(shortestPathBinaryMatrix)
# Metadata Difficulty: Medium
# Metadata Topics: array,breadth-first-search,matrix
# Metadata Coverage: 100
