from typing import List


def transpose(matrix: List[List[int]]) -> List[List[int]]:
    """
    Given a 2D integer array matrix, return the transpose of matrix.
    The transpose of a matrix is the matrix flipped over its main diagonal, switching the matrix's row and column indices.

 
    Example 1:

    Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
    Output: [[1,4,7],[2,5,8],[3,6,9]]

    Example 2:

    Input: matrix = [[1,2,3],[4,5,6]]
    Output: [[1,4],[2,5],[3,6]]

 
    Constraints:

    m == matrix.length
    n == matrix[i].length
    1 <= m, n <= 1000
    1 <= m * n <= 105
    -109 <= matrix[i][j] <= 109

    """
    ### Canonical solution below ###
    rows = len(matrix)
    cols = len(matrix[0])
    result = [[0] * rows for _ in range(cols)]
    for i in range(rows):
        for j in range(cols):
            result[j][i] = matrix[i][j]
    return result




### Unit tests below ###
def check(candidate):
	assert candidate([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
	assert candidate(
    [[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15], [16, 17, 18, 19, 20], [21, 22, 23, 24, 25]]) == [[1, 6, 11, 16, 21],
                                                                                                             [2, 7, 12, 17,
                                                                                                              22],
                                                                                                             [3, 8, 13, 18,
                                                                                                              23],
                                                                                                             [4, 9, 14, 19,
                                                                                                              24],
                                                                                                             [5, 10, 15,
                                                                                                              20, 25]]
	assert candidate([[1, 2, 3, 4, 5]]) == [[1], [2], [3], [4], [5]]
	assert candidate([[1, 2, 3, 4], [5, 6, 7, 8]]) == [[1, 5], [2, 6], [3, 7], [4, 8]]
	assert candidate(
    [[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15], [16, 17, 18, 19, 20], [21, 22, 23, 24, 25]]) == [[1, 6, 11, 16, 21], [2, 7, 12, 17, 22], [3, 8, 13, 18, 23], [4, 9, 14, 19, 24], [5, 10, 15, 20, 25]]
	assert candidate([[1, 2, 3], [4, 5, 6]]) == [[1, 4], [2, 5], [3, 6]]
	assert candidate([[1], [2], [3], [4], [5]]) == [[1, 2, 3, 4, 5]]
	assert candidate([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) == [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
	assert candidate(
    [[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15], [16, 17, 18, 19, 20], [21, 22, 23, 24, 25]]) == [[1, 6, 11, 16, 21],
                                                                                                             [2, 7, 12, 17, 22],
                                                                                                             [3, 8, 13, 18, 23],
                                                                                                             [4, 9, 14, 19, 24],
                                                                                                             [5, 10, 15, 20,
                                                                                                              25]]
	assert candidate([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]) == [[1, 5, 9], [2, 6, 10], [3, 7, 11], [4, 8, 12]]
	assert candidate(
    [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16], [17, 18, 19, 20]]
) == [[1, 5, 9, 13, 17], [2, 6, 10, 14, 18], [3, 7, 11, 15, 19], [4, 8, 12, 16, 20]]
	assert candidate([[1, 2], [3, 4], [5, 6], [7, 8]]) == [[1, 3, 5, 7], [2, 4, 6, 8]]
	assert candidate([[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15], [16, 17, 18, 19, 20]]) == [[1, 6, 11, 16], [2, 7, 12, 17], [3, 8, 13, 18], [4, 9, 14, 19], [5, 10, 15, 20]]
	assert candidate([[1, 2, 3]]) == [[1], [2], [3]]
	assert candidate([[1, 2], [3, 4], [5, 6]]) == [[1, 3, 5], [2, 4, 6]]
	assert candidate([[1]]) == [[1]]
	assert candidate([[1, 2], [3, 4]]) == [[1, 3], [2, 4]]
	assert candidate([[1], [2], [3]]) == [[1, 2, 3]]
	assert candidate([[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]) == [[1, 4, 7, 10], [2, 5, 8, 11], [3, 6, 9, 12]]
	assert candidate([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
def test_check():
	check(transpose)
# Metadata Difficulty: Easy
# Metadata Topics: array,matrix,simulation
# Metadata Coverage: 100
