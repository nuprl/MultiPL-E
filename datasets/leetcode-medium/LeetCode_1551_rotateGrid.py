from typing import List


def rotateGrid(grid: List[List[int]], k: int) -> List[List[int]]:
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
    def rotateLayer(layer, k):
        m, n = len(grid), len(grid[0])
        top, bottom = layer, m - 1 - layer
        left, right = layer, n - 1 - layer
        data_in_layer = (right - left + 1) * 2 + (bottom - top - 1) * 2
        k %= data_in_layer
        for _ in range(k):
            temp = grid[top][left]
            for j in range(left, right):
                grid[top][j] = grid[top][j + 1]
            for i in range(top, bottom):
                grid[i][right] = grid[i + 1][right]
            for j in range(right, left, -1):
                grid[bottom][j] = grid[bottom][j - 1]
            for i in range(bottom, top, -1):
                grid[i][left] = grid[i - 1][left]
            grid[top + 1][left] = temp

    m, n = len(grid), len(grid[0])
    layers = min(m, n) // 2
    for layer in range(layers):
        rotateLayer(layer, k)
    return grid




### Unit tests below ###
def check(candidate):
	assert candidate([[1, 2, 3], [4, 5, 6], [7, 8, 9]], 4) == [[9, 8, 7], [6, 5, 4], [3, 2, 1]]
	assert candidate(
    [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]], 2
) == [[3, 4, 8, 12], [2, 11, 10, 16], [1, 7, 6, 15], [5, 9, 13, 14]]
	assert candidate([[40, 10], [30, 20]], 1) == [[10, 20], [40, 30]]
	assert candidate([[1, 2, 3], [4, 5, 6], [7, 8, 9]], 8) == [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
def test_check():
	check(rotateGrid)
# Metadata Difficulty: Medium
# Metadata Topics: array,matrix,simulation
# Metadata Coverage: 100
