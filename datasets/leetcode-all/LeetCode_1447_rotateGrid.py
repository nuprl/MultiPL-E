from typing import Optional, List


def rotateGrid(grid: Optional[List[List[int]]], k: int) -> Optional[List[List[int]]]:
    """
    You are given an m x n integer matrix grid​​​, where m and n are both even integers, and an integer k.
    The matrix is composed of several layers, which is shown in the below image, where each color is its own layer:

    A cyclic rotation of the matrix is done by cyclically rotating each layer in the matrix. To cyclically rotate a layer once, each element in the layer will take the place of the adjacent element in the counter-clockwise direction. An example rotation is shown below:

    Return the matrix after applying k cyclic rotations to it.
 
    Example 1:


    Input: grid = [[40,10],[30,20]], k = 1
    Output: [[10,20],[40,30]]
    Explanation: The figures above represent the grid at every state.

    Example 2:


    Input: grid = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]], k = 2
    Output: [[3,4,8,12],[2,11,10,16],[1,7,6,15],[5,9,13,14]]
    Explanation: The figures above represent the grid at every state.

 
    Constraints:

    m == grid.length
    n == grid[i].length
    2 <= m, n <= 50
    Both m and n are even integers.
    1 <= grid[i][j] <= 5000
    1 <= k <= 109
    """
    ### Canonical solution below ###
    if not grid:
        return grid

    m, n = len(grid), len(grid[0])
    numLayers = min(m, n) // 2

    for layer in range(numLayers):
        numToRotate = (m - 2 * layer) * 2 + (n - 2 * layer - 2) * 2
        effective_k = k % numToRotate

        while effective_k:
            temp = grid[layer][layer]
            for i in range(layer + 1, m - layer):
                temp, grid[i][layer] = grid[i][layer], temp
            for j in range(layer + 1, n - layer):
                temp, grid[m - layer - 1][j] = grid[m - layer - 1][j], temp
            for i in range(m - layer - 2, layer - 1, -1):
                temp, grid[i][n - layer - 1] = grid[i][n - layer - 1], temp
            for j in range(n - layer - 2, layer, -1):
                temp, grid[layer][j] = grid[layer][j], temp
            effective_k -= 1

    return grid




### Unit tests below ###
def check(candidate):
	assert candidate([[1]*20]*20, 400) == [[1]*20]*20
	assert candidate([], 1) == []
	assert candidate([[5000]*20]*20, 1) == [[5000]*19 + [5000]]*19 + [[5000]*20]
	assert candidate(None, 1) == None
	assert candidate([[1,2],[3,4]], 10**9) == [[1,2],[3,4]]
def test_check():
	check(rotateGrid)
# Metadata Difficulty: Medium
# Metadata Topics: array,matrix,simulation
# Metadata Coverage: 100
