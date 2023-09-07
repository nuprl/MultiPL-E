from typing import List


def updateMatrix(mat: List[List[int]]) -> List[List[int]]:
    """
    Given an m x n binary matrix mat, return the distance of the nearest 0 for each cell.
    The distance between two adjacent cells is 1.
 
    Example 1:


    Input: mat = [[0,0,0],[0,1,0],[0,0,0]]
    Output: [[0,0,0],[0,1,0],[0,0,0]]

    Example 2:


    Input: mat = [[0,0,0],[0,1,0],[1,1,1]]
    Output: [[0,0,0],[0,1,0],[1,2,1]]

 
    Constraints:

    m == mat.length
    n == mat[i].length
    1 <= m, n <= 104
    1 <= m * n <= 104
    mat[i][j] is either 0 or 1.
    There is at least one 0 in mat.

    """
    ### Canonical solution below ###
    from collections import deque
    m, n = len(mat), len(mat[0])
    distance = [[0 if mat[i][j] == 0 else float('inf') for j in range(n)] for i in range(m)]
    queue = deque([(i, j) for i in range(m) for j in range(n) if mat[i][j] == 0])

    directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]
    while queue:
        x, y = queue.popleft()
        for dx, dy in directions:
            newX, newY = x + dx, y + dy
            if 0 <= newX < m and 0 <= newY < n and distance[newX][newY] > distance[x][y] + 1:
                distance[newX][newY] = distance[x][y] + 1
                queue.append((newX, newY))

    return distance




### Unit tests below ###
def check(candidate):
	assert candidate([[1,0]]) == [[1,0]]
	assert candidate([[0,0,0],[0,1,0],[0,0,0]]) == [[0,0,0],[0,1,0],[0,0,0]]
	assert candidate([[0,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,0]]) == [[0,1,2,3,4],[1,2,3,4,3],[2,3,4,3,2],[3,4,3,2,1],[4,3,2,1,0]]
	assert candidate([[1,1,1,1,0]]) == [[4,3,2,1,0]]
	assert candidate([[1],[0]]) == [[1],[0]]
	assert candidate([[1,0,1],[0,1,0],[1,0,1]]) == [[1,0,1],[0,1,0],[1,0,1]]
	assert candidate([[0]]) == [[0]]
	assert candidate([[1],[1],[1],[1],[0]]) == [[4],[3],[2],[1],[0]]
	assert candidate([[0,0,0],[0,1,0],[1,1,1]]) == [[0,0,0],[0,1,0],[1,2,1]]
	assert candidate(
    [[0, 0, 0],
     [0, 1, 0],
     [1, 1, 1]]
) == [[0, 0, 0],
      [0, 1, 0],
      [1, 2, 1]]
def test_check():
	check(updateMatrix)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,breadth-first-search,matrix
# Metadata Coverage: 100
