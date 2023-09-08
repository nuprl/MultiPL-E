from typing import List


def minFallingPathSum(matrix: List[List[int]]) -> int:
    """
    Given an n x n array of integers matrix, return the minimum sum of any falling path through matrix.
    A falling path starts at any element in the first row and chooses the element in the next row that is either directly below or diagonally left/right. Specifically, the next element from position (row, col) will be (row + 1, col - 1), (row + 1, col), or (row + 1, col + 1).
 
    Example 1:


    Input: matrix = [[2,1,3],[6,5,4],[7,8,9]]
    Output: 13
    Explanation: There are two falling paths with a minimum sum as shown.

    Example 2:


    Input: matrix = [[-19,57],[-40,-5]]
    Output: -59
    Explanation: The falling path with a minimum sum is shown.

 
    Constraints:

    n == matrix.length == matrix[i].length
    1 <= n <= 100
    -100 <= matrix[i][j] <= 100

    """
    ### Canonical solution below ###
    n = len(matrix)
    for i in range(1, n):
        for j in range(n):
            min_val = matrix[i - 1][j]
            if j > 0:
                min_val = min(min_val, matrix[i - 1][j - 1])
            if j < n - 1:
                min_val = min(min_val, matrix[i - 1][j + 1])
            matrix[i][j] += min_val
    return min(matrix[-1])




### Unit tests below ###
def check(candidate):
	assert candidate([[1,100],[1,100]]) == 2
	assert candidate([[1,100,1],[100,1,100],[1,100,1]]) == 3
	assert candidate([[10,5],[2,10]]) == 7
	assert candidate([[6,8],[7,2]]) == 8
	assert candidate([[1]]) == 1
	assert candidate([[5,8],[1,6]]) == 6
	assert candidate([[10,50,10],[50,10,50],[10,50,10]]) == 30
	assert candidate([[10,10],[10,10]]) == 20
	assert candidate(
    [[-19, 57], [-40, -5]]) == -59
	assert candidate([[1,2],[3,4]]) == 4
	assert candidate([[1,2,3,4,5],[6,7,8,9,10],[11,12,13,14,15],[16,17,18,19,20],[21,22,23,24,25]]) == 55
	assert candidate([[1,5],[2,7]]) == 3
	assert candidate([[1,2,3],[4,5,6],[7,8,9]]) == 12
	assert candidate([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]) == 28
	assert candidate([[-19, 57], [-40, -5]]) == -59
def test_check():
	check(minFallingPathSum)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,matrix
# Metadata Coverage: 100
