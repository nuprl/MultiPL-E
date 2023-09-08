from typing import List


def spiralOrder(matrix: List[List[int]]) -> List[int]:
    """
    Given an m x n matrix, return all elements of the matrix in spiral order.
 
    Example 1:


    Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
    Output: [1,2,3,6,9,8,7,4,5]

    Example 2:


    Input: matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
    Output: [1,2,3,4,8,12,11,10,9,5,6,7]

 
    Constraints:

    m == matrix.length
    n == matrix[i].length
    1 <= m, n <= 10
    -100 <= matrix[i][j] <= 100

    """
    ### Canonical solution below ###
    result = []
    if not matrix:
        return result
    m, n = len(matrix), len(matrix[0])
    rowStart, colStart, rowEnd, colEnd = 0, 0, m - 1, n - 1

    while rowStart <= rowEnd and colStart <= colEnd:
        for i in range(colStart, colEnd + 1):
            result.append(matrix[rowStart][i])
        rowStart += 1

        for i in range(rowStart, rowEnd + 1):
            result.append(matrix[i][colEnd])
        colEnd -= 1

        if rowStart <= rowEnd:
            for i in range(colEnd, colStart - 1, -1):
                result.append(matrix[rowEnd][i])
        rowEnd -= 1

        if colStart <= colEnd:
            for i in range(rowEnd, rowStart - 1, -1):
                result.append(matrix[i][colStart])
        colStart += 1

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([[1]]) == [1]
	assert candidate([[1,2,3],[4,5,6]]) == [1,2,3,6,5,4]
	assert candidate([[1,2,3],[4,5,6],[7,8,9],[10,11,12]]) == [1,2,3,6,9,12,11,10,7,4,5,8]
	assert candidate([[1],[2],[3],[4],[5]]) == [1,2,3,4,5]
	assert candidate([[1],[2],[3],[4],[5],[6],[7],[8],[9],[10]]) == [1,2,3,4,5,6,7,8,9,10]
	assert candidate([[1,2,3,4],[5,6,7,8]]) == [1,2,3,4,8,7,6,5]
	assert candidate([[1,2,3,4,5]]) == [1,2,3,4,5]
	assert candidate([[1,2,3,4,5,6,7,8,9,10]]) == [1,2,3,4,5,6,7,8,9,10]
	assert candidate([[1,2],[3,4],[5,6]]) == [1,2,4,6,5,3]
	assert candidate([]) == []
	assert candidate([[1,2],[3,4]]) == [1,2,4,3]
	assert candidate([[1,2,3,4],[5,6,7,8],[9,10,11,12]]) == [1,2,3,4,8,12,11,10,9,5,6,7]
	assert candidate([[1,2,3],[4,5,6],[7,8,9]]) == [1,2,3,6,9,8,7,4,5]
def test_check():
	check(spiralOrder)
# Metadata Difficulty: Medium
# Metadata Topics: array,matrix,simulation
# Metadata Coverage: 100
