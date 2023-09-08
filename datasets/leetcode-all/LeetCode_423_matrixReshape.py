from typing import List


def matrixReshape(mat: List[List[int]], r: int, c: int) -> List[List[int]]:
    """
    In MATLAB, there is a handy function called reshape which can reshape an m x n matrix into a new one with a different size r x c keeping its original data.
    You are given an m x n matrix mat and two integers r and c representing the number of rows and the number of columns of the wanted reshaped matrix.
    The reshaped matrix should be filled with all the elements of the original matrix in the same row-traversing order as they were.
    If the reshape operation with given parameters is possible and legal, output the new reshaped matrix; Otherwise, output the original matrix.
 
    Example 1:


    Input: mat = [[1,2],[3,4]], r = 1, c = 4
    Output: [[1,2,3,4]]

    Example 2:


    Input: mat = [[1,2],[3,4]], r = 2, c = 4
    Output: [[1,2],[3,4]]

 
    Constraints:

    m == mat.length
    n == mat[i].length
    1 <= m, n <= 100
    -1000 <= mat[i][j] <= 1000
    1 <= r, c <= 300

    """
    ### Canonical solution below ###
    m, n = len(mat), len(mat[0])
    if m * n != r * c:
        return mat

    reshaped = [[0] * c for _ in range(r)]
    for i in range(m * n):
        reshaped[i // c][i % c] = mat[i // n][i % n]

    return reshaped




### Unit tests below ###
def check(candidate):
	assert candidate([[1,2],[3,4]], 4, 1) == [[1],[2],[3],[4]]
	assert candidate([[1,2],[3,4]], 2, 4) == [[1,2],[3,4]]
	assert candidate([[1,2],[3,4]], 1, 4) == [[1,2,3,4]]
	assert candidate(
    [
        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],
        [21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40],
    ],
    20,
    1,
) == [
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],
    [21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40],
]
	assert candidate([[1,2,3,4,5,6]], 3, 2) == [[1,2],[3,4],[5,6]]
	assert candidate([[1,2],[3,4],[5,6],[7,8],[9,10],[11,12]], 6, 2) == [[1,2],[3,4],[5,6],[7,8],[9,10],[11,12]]
	assert candidate([[1,2,3,4,5,6]], 2, 3) == [[1,2,3],[4,5,6]]
	assert candidate(
    [[1,2,3],[4,5,6],[7,8,9],[10,11,12],[13,14,15],[16,17,18],[19,20,21],[22,23,24],[25,26,27],[28,29,30]], 15, 2
) == [[1,2],[3,4],[5,6],[7,8],[9,10],[11,12],[13,14],[15,16],[17,18],[19,20],[21,22],[23,24],[25,26],[27,28],[29,30]]
	assert candidate([[1,2],[3,4],[5,6],[7,8],[9,10],[11,12]], 5, 2) == [[1,2],[3,4],[5,6],[7,8],[9,10],[11,12]]
	assert candidate([[1,2],[3,4],[5,6],[7,8],[9,10],[11,12]], 2, 6) == [[1,2,3,4,5,6],[7,8,9,10,11,12]]
	assert candidate([[1,2,3,4,5,6],[7,8,9,10,11,12]], 3, 4) == [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
	assert candidate([[1,2,3,4,5,6],[7,8,9,10,11,12]], 4, 3) == [[1,2,3],[4,5,6],[7,8,9],[10,11,12]]
	assert candidate([[1,2,3],[4,5,6]], 2, 3) == [[1,2,3],[4,5,6]]
	assert candidate([[1,2,3,4,5,6],[7,8,9,10,11,12]], 6, 2) == [[1,2],[3,4],[5,6],[7,8],[9,10],[11,12]]
	assert candidate([[1,2,3,4,5,6,7,8,9,10]], 5, 2) == [[1,2],[3,4],[5,6],[7,8],[9,10]]
def test_check():
	check(matrixReshape)
# Metadata Difficulty: Easy
# Metadata Topics: array,matrix,simulation
# Metadata Coverage: 100
