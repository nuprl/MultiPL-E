from typing import List


def matrix_block_sum(mat: List[List[int]], k: int) -> List[List[int]]:
    """
    Given a m x n matrix mat and an integer k, return a matrix answer where each answer[i][j] is the sum of all elements mat[r][c] for:

    i - k <= r <= i + k,
    j - k <= c <= j + k, and
    (r, c) is a valid position in the matrix.

 
    Example 1:

    Input: mat = [[1,2,3],[4,5,6],[7,8,9]], k = 1
    Output: [[12,21,16],[27,45,33],[24,39,28]]

    Example 2:

    Input: mat = [[1,2,3],[4,5,6],[7,8,9]], k = 2
    Output: [[45,45,45],[45,45,45],[45,45,45]]

 
    Constraints:

    m == mat.length
    n == mat[i].length
    1 <= m, n, k <= 100
    1 <= mat[i][j] <= 100

    """
    ### Canonical solution below ###
    m, n = len(mat), len(mat[0])
    answer = [[0 for _ in range(n)] for _ in range(m)]

    for i in range(m):
        for j in range(n):
            for r in range(max(0, i - k), min(m, i + k + 1)):
                for c in range(max(0, j - k), min(n, j + k + 1)):
                    answer[i][j] += mat[r][c]

    return answer




### Unit tests below ###
def check(candidate):
	assert candidate([[1,1,1],[1,1,1],[1,1,1]], 1) == [[4,6,4],[6,9,6],[4,6,4]]
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 2) == [[45,45,45],[45,45,45],[45,45,45]]
	assert candidate([[1]], 1) == [[1]]
	assert candidate([[1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,1]], 1) == [[4,6,6,4],[6,9,9,6],[6,9,9,6],[4,6,6,4]]
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 1) == [[12,21,16],[27,45,33],[24,39,28]]
def test_check():
	check(matrix_block_sum)
# Metadata Difficulty: Medium
# Metadata Topics: array,matrix,prefix-sum
# Metadata Coverage: 100
