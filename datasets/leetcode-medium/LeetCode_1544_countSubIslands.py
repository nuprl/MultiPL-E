from typing import List


def countSubIslands(grid1: List[List[int]], grid2: List[List[int]]) -> int:
    """
    You are given two m x n binary matrices grid1 and grid2 containing only 0's (representing water) and 1's (representing land). An island is a group of 1's connected 4-directionally (horizontal or vertical). Any cells outside of the grid are considered water cells.
    An island in grid2 is considered a sub-island if there is an island in grid1 that contains all the cells that make up this island in grid2.
    Return the number of islands in grid2 that are considered sub-islands.
 
    Example 1:


    Input: grid1 = [[1,1,1,0,0],[0,1,1,1,1],[0,0,0,0,0],[1,0,0,0,0],[1,1,0,1,1]], grid2 = [[1,1,1,0,0],[0,0,1,1,1],[0,1,0,0,0],[1,0,1,1,0],[0,1,0,1,0]]
    Output: 3
    Explanation: In the picture above, the grid on the left is grid1 and the grid on the right is grid2.
    The 1s colored red in grid2 are those considered to be part of a sub-island. There are three sub-islands.

    Example 2:


    Input: grid1 = [[1,0,1,0,1],[1,1,1,1,1],[0,0,0,0,0],[1,1,1,1,1],[1,0,1,0,1]], grid2 = [[0,0,0,0,0],[1,1,1,1,1],[0,1,0,1,0],[0,1,0,1,0],[1,0,0,0,1]]
    Output: 2 
    Explanation: In the picture above, the grid on the left is grid1 and the grid on the right is grid2.
    The 1s colored red in grid2 are those considered to be part of a sub-island. There are two sub-islands.

 
    Constraints:

    m == grid1.length == grid2.length
    n == grid1[i].length == grid2[i].length
    1 <= m, n <= 500
    grid1[i][j] and grid2[i][j] are either 0 or 1.

    """
    ### Canonical solution below ###
    def dfs(i, j):
        if i < 0 or i >= len(grid1) or j < 0 or j >= len(grid1[0]) or grid2[i][j] == 0:
            return True

        grid2[i][j] = 0

        isSubIsland = grid1[i][j] == 1
        isSubIsland &= dfs(i + 1, j)
        isSubIsland &= dfs(i - 1, j)
        isSubIsland &= dfs(i, j + 1)
        isSubIsland &= dfs(i, j - 1)

        return isSubIsland

    count = 0

    for i in range(len(grid1)):
        for j in range(len(grid1[0])):
            if grid2[i][j] == 1 and dfs(i, j):
                count += 1

    return count




### Unit tests below ###
def check(candidate):
	assert candidate([[1,1,1,0,1], [1,1,1,1,1], [0,0,0,0,0], [1,0,1,0,1], [1,1,0,1,1]], [[0,0,0,0,0], [1,1,1,1,1], [0,1,0,1,0], [0,1,0,1,0], [1,0,0,0,1]]) == 2
	assert candidate([[1,0,1,0,1],[1,1,1,1,1],[0,0,0,0,0],[1,0,0,0,0],[1,1,0,1,1]], [[0,0,0,0,0],[1,1,1,1,1],[0,1,0,1,0],[0,1,0,1,0],[1,0,0,0,1]]) == 2
	assert candidate([[1,1,1,1,1], [1,1,1,1,1], [1,1,1,1,1], [1,1,1,1,1]], [[1,1,1,1,1], [1,1,1,1,1], [1,1,1,1,1], [1,1,1,1,1]]) == 1
	assert candidate([[1,0,1,0,1], [1,1,1,1,1], [0,0,0,0,0], [1,0,1,1,0], [1,1,0,1,1]], [[0,0,0,0,0], [1,1,1,1,1], [0,1,0,1,0], [0,1,0,1,0], [1,0,0,0,1]]) == 2
	assert candidate([[1,1,1,0,0], [0,1,1,1,1], [0,0,0,0,0], [1,0,0,0,0], [1,1,0,1,1]], [[1,1,1,0,0], [0,0,1,1,1], [0,1,0,0,0], [1,0,1,1,0], [0,1,0,1,0]]) == 3
	assert candidate([[0,0,0,0,0], [0,0,0,0,0], [0,0,0,0,0], [0,0,0,0,0]], [[0,0,0,0,0], [0,0,0,0,0], [0,0,0,0,0], [0,0,0,0,0]]) == 0
	assert candidate([[1,1,1,1,1], [1,1,1,1,1], [1,1,1,1,1], [1,1,1,1,1]], [[0,0,0,0,0], [0,0,0,0,0], [0,0,0,0,0], [0,0,0,0,0]]) == 0
def test_check():
	check(countSubIslands)
# Metadata Difficulty: Medium
# Metadata Topics: array,depth-first-search,breadth-first-search,union-find,matrix
# Metadata Coverage: 100
