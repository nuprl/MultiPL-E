from typing import List


def isPrintable(targetGrid: List[List[int]]) -> bool:
    """
    There is a strange printer with the following two special requirements:

    On each turn, the printer will print a solid rectangular pattern of a single color on the grid. This will cover up the existing colors in the rectangle.
    Once the printer has used a color for the above operation, the same color cannot be used again.

    You are given a m x n matrix targetGrid, where targetGrid[row][col] is the color in the position (row, col) of the grid.
    Return true if it is possible to print the matrix targetGrid, otherwise, return false.
 
    Example 1:


    Input: targetGrid = [[1,1,1,1],[1,2,2,1],[1,2,2,1],[1,1,1,1]]
    Output: true

    Example 2:


    Input: targetGrid = [[1,1,1,1],[1,1,3,3],[1,1,3,4],[5,5,1,4]]
    Output: true

    Example 3:

    Input: targetGrid = [[1,2,1],[2,1,2],[1,2,1]]
    Output: false
    Explanation: It is impossible to form targetGrid because it is not allowed to print the same color in different turns.

 
    Constraints:

    m == targetGrid.length
    n == targetGrid[i].length
    1 <= m, n <= 60
    1 <= targetGrid[row][col] <= 60

    """
    ### Canonical solution below ###
    m, n = len(targetGrid), len(targetGrid[0])
    top, bottom, left, right = [m]*61, [-1]*61, [n]*61, [-1]*61
    vis = [[False]*n for _ in range(m)]

    for i in range(m):
        for j in range(n):
            c = targetGrid[i][j]
            top[c] = min(top[c], i)
            bottom[c] = max(bottom[c], i)
            left[c] = min(left[c], j)
            right[c] = max(right[c], j)

    def dfs(x):
        i, j = x // n, x % n
        if vis[i][j]:
            return True
        c = targetGrid[i][j]
        if i < top[c] or i > bottom[c] or j < left[c] or j > right[c]:
            return False
        vis[i][j] = True
        for k in range(1, 61):
            if k == c:
                continue
            if i >= top[k] and i <= bottom[k] and j >= left[k] and j <= right[k]:
                return False
            if not dfs(((i-top[k])*(right[k]-left[k]+1)) + j - left[k]):
                return False
        return True

    for color in range(1, 61):
        for i in range(top[color], bottom[color] + 1):
            for j in range(left[color], right[color] + 1):
                if not vis[i][j] and not dfs(i * n + j):
                    return False

    return True




### Unit tests below ###
def check(candidate):
	assert candidate(
[[1,2,3,4,5,6],
 [1,2,3,4,5,6],
 [1,2,3,4,5,6]]) == False
	assert candidate(
[[1,1,1,1],
 [1,2,3,1],
 [1,2,3,1],
 [1,1,1,1]]) == False
	assert candidate(
[[1,2,1],
 [2,1,2],
 [1,2,1],
 [2,1,2],
 [1,2,1],
 [2,1,2],
 [1,2,1],
 [2,1,2],
 [1,2,1],
 [2,1,2]]) == False
	assert candidate([[1,1,1,1],
 [1,1,1,1],
 [1,1,1,1],
 [1,1,1,1]]) == True
	assert candidate(
[[1,2,3,4,5,6],
 [1,2,3,4,5,6],
 [1,2,3,4,5,6],
 [1,2,3,4,5,6],
 [1,2,3,4,5,6],
 [1,2,3,4,5,6],
 [1,2,3,4,5,6]]) == False
	assert candidate([[1,2,3,4],[1,2,3,4],[1,2,3,4],[1,2,3,4],[1,2,3,4],[1,2,3,4],[1,2,3,4],[1,2,3,4]]) == False
	assert candidate(
[[1,2,1],
 [2,1,2],
 [1,2,1],
 [2,1,2],
 [1,2,1],
 [2,1,2],
 [1,2,1]]) == False
	assert candidate([[1,2,1],[2,1,2],[1,2,1]]) == False
	assert candidate(
[[1,2,1,2],
 [2,1,2,1],
 [1,2,1,2],
 [2,1,2,1]]) == False
	assert candidate(
[[1,2,1],
 [2,1,2],
 [1,2,1],
 [2,1,2]]) == False
	assert candidate(
[[1,2,3,4,5,6,7,8],
 [8,7,6,5,4,3,2,1],
 [1,2,3,4,5,6,7,8],
 [8,7,6,5,4,3,2,1],
 [1,2,3,4,5,6,7,8],
 [8,7,6,5,4,3,2,1],
 [1,2,3,4,5,6,7,8],
 [8,7,6,5,4,3,2,1]]) == False
	assert candidate(
[[1,2,3,4],
 [2,1,2,3],
 [3,2,1,2],
 [4,3,2,12]]) == False
	assert candidate(
[[1,2,3,4,5,6],
 [1,2,3,4,5,6],
 [1,2,3,4,5,6],
 [1,2,3,4,5,6],
 [1,2,3,4,5,6],
 [1,2,3,4,5,6]]) == False
	assert candidate(
[[1,2,1],
 [2,1,2],
 [1,2,1]]) == False
def test_check():
	check(isPrintable)
# Metadata Difficulty: Hard
# Metadata Topics: array,graph,topological-sort,matrix
# Metadata Coverage: 100
