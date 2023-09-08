from typing import List


def orangesRotting(grid: List[List[int]]) -> int:
    """
    You are given an m x n grid where each cell can have one of three values:

    0 representing an empty cell,
    1 representing a fresh orange, or
    2 representing a rotten orange.

    Every minute, any fresh orange that is 4-directionally adjacent to a rotten orange becomes rotten.
    Return the minimum number of minutes that must elapse until no cell has a fresh orange. If this is impossible, return -1.
 
    Example 1:


    Input: grid = [[2,1,1],[1,1,0],[0,1,1]]
    Output: 4

    Example 2:

    Input: grid = [[2,1,1],[0,1,1],[1,0,1]]
    Output: -1
    Explanation: The orange in the bottom left corner (row 2, column 0) is never rotten, because rotting only happens 4-directionally.

    Example 3:

    Input: grid = [[0,2]]
    Output: 0
    Explanation: Since there are already no fresh oranges at minute 0, the answer is just 0.

 
    Constraints:

    m == grid.length
    n == grid[i].length
    1 <= m, n <= 10
    grid[i][j] is 0, 1, or 2.

    """
    ### Canonical solution below ###
    from collections import deque
    m, n = len(grid), len(grid[0])
    fresh_oranges = sum(row.count(1) for row in grid)
    rotten = deque([(i, j) for i, row in enumerate(grid) for j, value in enumerate(row) if value == 2])

    minutes = 0
    directions = [(0, 1), (1, 0), (0, -1), (-1, 0)]

    while rotten and fresh_oranges:
        for _ in range(len(rotten)):
            x, y = rotten.popleft()

            for dx, dy in directions:
                nx, ny = x + dx, y + dy
                if 0 <= nx < m and 0 <= ny < n and grid[nx][ny] == 1:
                    grid[nx][ny] = 2
                    fresh_oranges -= 1
                    rotten.append((nx, ny))
        minutes += 1

    return minutes if fresh_oranges == 0 else -1




### Unit tests below ###
def check(candidate):
	assert candidate(
    [[2,1,1,2,2,1,1,0,1,1,1,0,2,0],[1,1,1,0,2,0,1,1,0,1,2,2,1,1],[0,1,1,0,2,1,2,1,0,2,0,1,2,1],[1,1,1,1,1,1,0,1,0,1,2,2,1,1],[0,1,0,1,0,0,1,2,1,0,1,1,1,1],[1,2,2,1,1,1,2,1,1,0,0,0,1,1],[0,1,1,1,0,1,1,1,1,1,1,2,1,1],[1,1,1,0,0,1,1,1,1,1,0,0,1,0],[2,1,1,1,1,1,1,1,1,2,1,1,1,0],[1,1,1,0,0,1,0,0,0,0,1,0,1,1],[0,1,0,0,1,1,1,0,0,1,0,1,0,0],[1,1,1,1,1,0,0,0,1,0,1,1,0,0],[2,1,1,0,0,1,1,1,1,1,1,0,1,0]]) == -1
	assert candidate([[2,1,1,1,1],[1,1,1,1,1],[0,0,0,0,0],[1,1,1,1,1],[1,1,1,1,1]]) == -1
	assert candidate([[0,2,2]]) == 0
	assert candidate([[1,2],[1,1],[2,2],[0,1]]) == 1
	assert candidate([[2,1,1],[1,1,0],[0,1,1]]) == 4
	assert candidate([[2,1,1],[0,1,1],[1,0,1]]) == -1
	assert candidate([[2,1,1,0,0],[1,1,0,0,0],[0,1,0,0,1],[1,0,0,0,1]]) == -1
	assert candidate([[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,2]]) == 0
	assert candidate([[0,2]]) == 0
	assert candidate(
    [[2,1,1],[1,1,1],[0,1,1],[1,0,1],[0,1,1],[2,1,1],[0,0,1],[2,1,1],[0,1,1],[1,1,1],[1,0,1],[1,1,1],[1,1,1],[0,0,1],[1,1,1],[1,1,1]]) == -1
def test_check():
	check(orangesRotting)
# Metadata Difficulty: Medium
# Metadata Topics: array,breadth-first-search,matrix
# Metadata Coverage: 100
