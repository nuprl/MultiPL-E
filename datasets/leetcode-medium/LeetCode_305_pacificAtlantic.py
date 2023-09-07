from typing import List


def pacificAtlantic(heights: List[List[int]]) -> List[List[int]]:
    """
    There is an m x n rectangular island that borders both the Pacific Ocean and Atlantic Ocean. The Pacific Ocean touches the island's left and top edges, and the Atlantic Ocean touches the island's right and bottom edges.
    The island is partitioned into a grid of square cells. You are given an m x n integer matrix heights where heights[r][c] represents the height above sea level of the cell at coordinate (r, c).
    The island receives a lot of rain, and the rain water can flow to neighboring cells directly north, south, east, and west if the neighboring cell's height is less than or equal to the current cell's height. Water can flow from any cell adjacent to an ocean into the ocean.
    Return a 2D list of grid coordinates result where result[i] = [ri, ci] denotes that rain water can flow from cell (ri, ci) to both the Pacific and Atlantic oceans.
 
    Example 1:


    Input: heights = [[1,2,2,3,5],[3,2,3,4,4],[2,4,5,3,1],[6,7,1,4,5],[5,1,1,2,4]]
    Output: [[0,4],[1,3],[1,4],[2,2],[3,0],[3,1],[4,0]]
    Explanation: The following cells can flow to the Pacific and Atlantic oceans, as shown below:
    [0,4]: [0,4] -> Pacific Ocean 
                  [0,4] -> Atlantic Ocean
    [1,3]: [1,3] -> [0,3] -> Pacific Ocean 
                  [1,3] -> [1,4] -> Atlantic Ocean
    [1,4]: [1,4] -> [1,3] -> [0,3] -> Pacific Ocean 
                  [1,4] -> Atlantic Ocean
    [2,2]: [2,2] -> [1,2] -> [0,2] -> Pacific Ocean 
                  [2,2] -> [2,3] -> [2,4] -> Atlantic Ocean
    [3,0]: [3,0] -> Pacific Ocean 
                  [3,0] -> [4,0] -> Atlantic Ocean
    [3,1]: [3,1] -> [3,0] -> Pacific Ocean 
                  [3,1] -> [4,1] -> Atlantic Ocean
    [4,0]: [4,0] -> Pacific Ocean 
           [4,0] -> Atlantic Ocean
    Note that there are other possible paths for these cells to flow to the Pacific and Atlantic oceans.

    Example 2:

    Input: heights = [[1]]
    Output: [[0,0]]
    Explanation: The water can flow from the only cell to the Pacific and Atlantic oceans.

 
    Constraints:

    m == heights.length
    n == heights[r].length
    1 <= m, n <= 200
    0 <= heights[r][c] <= 105

    """
    ### Canonical solution below ###
    def dfs(r, c, prev_height, visited):
        if not (0 <= r < len(heights)) or not (0 <= c < len(heights[0])):
            return
        if heights[r][c] >= prev_height and not visited[r][c]:
            visited[r][c] = True
            dfs(r - 1, c, heights[r][c], visited)
            dfs(r + 1, c, heights[r][c], visited)
            dfs(r, c - 1, heights[r][c], visited)
            dfs(r, c + 1, heights[r][c], visited)

    m, n = len(heights), len(heights[0])
    pacific = [[False] * n for _ in range(m)]
    atlantic = [[False] * n for _ in range(m)]

    for r in range(m):
        dfs(r, 0, -1, pacific)
        dfs(r, n - 1, -1, atlantic)
    for c in range(n):
        dfs(0, c, -1, pacific)
        dfs(m - 1, c, -1, atlantic)

    result = []
    for r in range(m):
        for c in range(n):
            if pacific[r][c] and atlantic[r][c]:
                result.append([r, c])
    return result




### Unit tests below ###
def check(candidate):
	assert candidate([[1,2,3,4,5]]) == [[0,0],[0,1],[0,2],[0,3],[0,4]]
	assert candidate([[1,1,1,1],[1,2,2,1],[1,2,3,1],[1,1,1,1]]) == [[0,0],[0,1],[0,2],[0,3],[1,0],[1,1],[1,2],[1,3],[2,0],[2,1],[2,2],[2,3],[3,0],[3,1],[3,2],[3,3]]
	assert candidate([[1]]) == [[0,0]]
	assert candidate([[1],[2],[3],[4],[5]]) == [[0,0],[1,0],[2,0],[3,0],[4,0]]
	assert candidate([[1,2,2,3,5],[3,2,3,4,4],[2,4,5,3,1],[6,7,1,4,5],[5,1,1,2,4]]) == [[0,4],[1,3],[1,4],[2,2],[3,0],[3,1],[4,0]]
	assert candidate([[1,1,1],[1,2,1],[1,1,1]]) == [[0,0],[0,1],[0,2],[1,0],[1,1],[1,2],[2,0],[2,1],[2,2]]
def test_check():
	check(pacificAtlantic)
# Metadata Difficulty: Medium
# Metadata Topics: array,depth-first-search,breadth-first-search,matrix
# Metadata Coverage: 100
