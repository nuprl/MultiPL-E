from typing import List


def shortestPath(grid: List[List[int]], k: int) -> int:
    """
    You are given an m x n integer matrix grid where each cell is either 0 (empty) or 1 (obstacle). You can move up, down, left, or right from and to an empty cell in one step.
    Return the minimum number of steps to walk from the upper left corner (0, 0) to the lower right corner (m - 1, n - 1) given that you can eliminate at most k obstacles. If it is not possible to find such walk return -1.
 
    Example 1:


    Input: grid = [[0,0,0],[1,1,0],[0,0,0],[0,1,1],[0,0,0]], k = 1
    Output: 6
    Explanation: 
    The shortest path without eliminating any obstacle is 10.
    The shortest path with one obstacle elimination at position (3,2) is 6. Such path is (0,0) -> (0,1) -> (0,2) -> (1,2) -> (2,2) -> (3,2) -> (4,2).

    Example 2:


    Input: grid = [[0,1,1],[1,1,1],[1,0,0]], k = 1
    Output: -1
    Explanation: We need to eliminate at least two obstacles to find such a walk.

 
    Constraints:

    m == grid.length
    n == grid[i].length
    1 <= m, n <= 40
    1 <= k <= m * n
    grid[i][j] is either 0 or 1.
    grid[0][0] == grid[m - 1][n - 1] == 0

    """
    ### Canonical solution below ###
    from collections import deque
    m, n = len(grid), len(grid[0])
    visited = [[[False for _ in range(k + 1)] for _ in range(n)] for _ in range(m)]
    q = deque([(0, 0, 0, k)])
    moves = [(0, 1), (0, -1), (1, 0), (-1, 0)]
    steps = 0

    while q:
        for _ in range(len(q)):
            x, y, steps, k_remaining = q.popleft()
            if x == m - 1 and y == n - 1:
                return steps
            for dx, dy in moves:
                new_x, new_y, = x + dx, y + dy
                if 0 <= new_x < m and 0 <= new_y < n:
                    new_k_remaining = k_remaining - grid[new_x][new_y]
                    if new_k_remaining >= 0 and not visited[new_x][new_y][new_k_remaining]:
                        visited[new_x][new_y][new_k_remaining] = True
                        q.append((new_x, new_y, steps + 1, new_k_remaining))
        steps += 1

    return -1




### Unit tests below ###
def check(candidate):
	assert candidate([[0,0,0]], 2) == 2
	assert candidate([[0,1,1,1,0]], 3) == 4
	assert candidate([[0,0,0],[1,1,0],[0,0,0]], 1) == 4
	assert candidate([[0,0,0],[0,1,1],[0,0,0]], 1) == 4
	assert candidate([[0,0,0],[1,1,0],[0,0,0],[0,1,1],[0,0,0]], 1) == 6
	assert candidate([[0,1],[1,0]], 1) == 2
	assert candidate([[0,0,0],[0,0,0],[0,1,0],[0,1,0],[0,0,0]], 1) == 6
	assert candidate([[0,1,1,0]], 1) == -1
	assert candidate([[0],[0],[0]], 1) == 2
	assert candidate([[0,0,0],[1,1,1],[0,0,0]], 2) == 4
	assert candidate([[0,0,0,0,0,0],[0,0,0,1,0,0],[0,0,0,1,0,0],[0,0,1,1,0,0],[0,0,1,1,0,0],[0,0,0,0,0,0]], 2) == 10
	assert candidate([[0],[1],[1],[0]], 1) == -1
	assert candidate([[0,0,0,0,0],[1,1,1,1,1],[0,0,0,0,0]], 1) == 6
	assert candidate([[0,0],[0,1],[0,0],[0,1],[0,0]], 0) == 5
	assert candidate([[0,0,0]], 1) == 2
	assert candidate([[0,0,0]], 0) == 2
	assert candidate([[0,1,1,0,0]], 2) == 4
	assert candidate([[0,0,0],[0,1,0],[0,0,0]], 2) == 4
	assert candidate([[0,0,0],[1,1,0],[0,0,0],[0,1,1],[0,0,0]], 2) == 6
	assert candidate([[0,1,1],[1,1,1],[1,0,0]], 1) == -1
	assert candidate([[0],[1],[1],[1],[0]], 3) == 4
	assert candidate([[0],[1],[0]], 1) == 2
	assert candidate([[0,1,0],[1,1,0],[0,0,0]], 1) == 4
	assert candidate([[0,0,0],[1,0,0],[0,0,0]], 0) == 4
	assert candidate([[0,1,0]], 2) == 2
	assert candidate([[0,0,0],[0,0,0],[0,1,1],[0,0,0],[0,0,0]], 1) == 6
	assert candidate([[0,0,0],[1,1,0],[0,0,0]], 2) == 4
	assert candidate([[0,1,0,0,0],[0,1,0,1,0],[0,1,0,1,0],[0,1,0,0,0],[0,0,0,0,0]], 0) == 8
	assert candidate([[0,1,0]], 1) == 2
	assert candidate([[0,1,0,1,0]], 2) == 4
def test_check():
	check(shortestPath)
# Metadata Difficulty: Hard
# Metadata Topics: array,breadth-first-search,matrix
# Metadata Coverage: 100
