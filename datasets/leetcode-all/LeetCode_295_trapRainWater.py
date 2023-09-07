from typing import List


def trapRainWater(heightMap: List[List[int]]) -> int:
    """
    Given an m x n integer matrix heightMap representing the height of each unit cell in a 2D elevation map, return the volume of water it can trap after raining.
 
    Example 1:


    Input: heightMap = [[1,4,3,1,3,2],[3,2,1,3,2,4],[2,3,3,2,3,1]]
    Output: 4
    Explanation: After the rain, water is trapped between the blocks.
    We have two small ponds 1 and 3 units trapped.
    The total volume of water trapped is 4.

    Example 2:


    Input: heightMap = [[3,3,3,3,3],[3,2,2,2,3],[3,2,1,2,3],[3,2,2,2,3],[3,3,3,3,3]]
    Output: 10

 
    Constraints:

    m == heightMap.length
    n == heightMap[i].length
    1 <= m, n <= 200
    0 <= heightMap[i][j] <= 2 * 104

    """
    ### Canonical solution below ###
    import heapq
    m, n = len(heightMap), len(heightMap[0])
    pq = []
    visited = [[False] * n for _ in range(m)]

    for i in range(m):
        heapq.heappush(pq, (heightMap[i][0], i, 0))
        heapq.heappush(pq, (heightMap[i][n - 1], i, n - 1))
        visited[i][0] = visited[i][n - 1] = True

    for i in range(1, n - 1):
        heapq.heappush(pq, (heightMap[0][i], 0, i))
        heapq.heappush(pq, (heightMap[m - 1][i], m - 1, i))
        visited[0][i] = visited[m - 1][i] = True

    water, maxHeight = 0, 0
    dirs = ((0, 1), (0, -1), (1, 0), (-1, 0))

    while pq:
        h, r, c = heapq.heappop(pq)
        maxHeight = max(maxHeight, h)
        for dx, dy in dirs:
            x, y = r + dx, c + dy
            if x < 0 or x >= m or y < 0 or y >= n or visited[x][y]:
                continue
            if heightMap[x][y] < maxHeight:
                water += maxHeight - heightMap[x][y]
            heapq.heappush(pq, (heightMap[x][y], x, y))
            visited[x][y] = True

    return water




### Unit tests below ###
def check(candidate):
	assert candidate([[3,3,3,3,3],[3,2,2,2,3],[3,2,1,2,3],[3,2,2,2,3],[3,3,3,3,3]]) == 10
	assert candidate([[1,4,3,1,3,2],[3,2,1,3,2,4],[2,3,3,2,3,1]]) == 4
	assert candidate(
    [
        [1, 4, 3, 1, 3, 2],
        [3, 2, 1, 3, 2, 4],
        [2, 3, 3, 2, 3, 1],
    ]
) == 4
	assert candidate([[1,2,3,4,5],[1,0,0,0,1],[1,0,0,0,1],[1,1,1,1,1]]) == 6
	assert candidate(
    [[3,3,3,3,3],[3,2,2,2,3],[3,2,1,2,3],[3,2,2,2,3],[3,3,3,3,3]]
) == 10
def test_check():
	check(trapRainWater)
# Metadata Difficulty: Hard
# Metadata Topics: array,breadth-first-search,heap-priority-queue,matrix
# Metadata Coverage: 100
