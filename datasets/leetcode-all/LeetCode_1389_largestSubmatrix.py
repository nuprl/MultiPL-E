from typing import List


def largestSubmatrix(matrix: List[List[int]]) -> int:
    """
    You are given a binary matrix matrix of size m x n, and you are allowed to rearrange the columns of the matrix in any order.
    Return the area of the largest submatrix within matrix where every element of the submatrix is 1 after reordering the columns optimally.
 
    Example 1:


    Input: matrix = [[0,0,1],[1,1,1],[1,0,1]]
    Output: 4
    Explanation: You can rearrange the columns as shown above.
    The largest submatrix of 1s, in bold, has an area of 4.

    Example 2:


    Input: matrix = [[1,0,1,0,1]]
    Output: 3
    Explanation: You can rearrange the columns as shown above.
    The largest submatrix of 1s, in bold, has an area of 3.

    Example 3:

    Input: matrix = [[1,1,0],[1,0,1]]
    Output: 2
    Explanation: Notice that you must rearrange entire columns, and there is no way to make a submatrix of 1s larger than an area of 2.

 
    Constraints:

    m == matrix.length
    n == matrix[i].length
    1 <= m * n <= 105
    matrix[i][j] is either 0 or 1.

    """
    ### Canonical solution below ###
    m, n = len(matrix), len(matrix[0])
    height = [0] * n
    max_area = 0

    for i in range(m):
        for j in range(n):
            if matrix[i][j] == 1:
                height[j] += 1
            else:
                height[j] = 0
        sorted_height = sorted(height)
        for j in range(n):
            max_area = max(max_area, sorted_height[j] * (n - j))

    return max_area




### Unit tests below ###
def check(candidate):
	assert candidate([[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]) == 0
	assert candidate([[1, 0, 0], [0, 1, 1]]) == 2
	assert candidate([[1,0,0,0],[0,1,0,0],[0,0,1,0],[0,0,0,1]]) == 1
	assert candidate([[1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,1]]) == 16
	assert candidate([[1,1,1,1,0],[1,1,1,0,0],[1,1,0,0,0],[1,0,0,0,0],[0,0,0,0,0]]) == 6
	assert candidate([[0, 0, 0], [0, 0, 0]]) == 0
	assert candidate([[1, 0, 0, 0], [0, 0, 1, 1], [0, 1, 1, 1], [0, 0, 0, 1]]) == 4
	assert candidate([[1, 0, 0], [0, 0, 1]]) == 1
	assert candidate([[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1]]) == 25
	assert candidate([[1,1,0,0],[1,0,0,0],[0,1,1,0],[0,0,1,1]]) == 2
	assert candidate([[1,1,0,0],[1,1,0,0],[0,0,1,1],[0,0,1,1]]) == 4
	assert candidate(
    [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
     [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
     [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
     [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]) == 0
	assert candidate([[1,1,1,0],[1,1,1,0],[1,1,1,0],[0,0,0,1]]) == 9
def test_check():
	check(largestSubmatrix)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,sorting,matrix
# Metadata Coverage: 100
