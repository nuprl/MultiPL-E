from typing import List


def maxEqualRowsAfterFlips(matrix: List[List[int]]) -> int:
    """
    You are given an m x n binary matrix matrix.
    You can choose any number of columns in the matrix and flip every cell in that column (i.e., Change the value of the cell from 0 to 1 or vice versa).
    Return the maximum number of rows that have all values equal after some number of flips.
 
    Example 1:

    Input: matrix = [[0,1],[1,1]]
    Output: 1
    Explanation: After flipping no values, 1 row has all values equal.

    Example 2:

    Input: matrix = [[0,1],[1,0]]
    Output: 2
    Explanation: After flipping values in the first column, both rows have equal values.

    Example 3:

    Input: matrix = [[0,0,0],[0,0,1],[1,1,0]]
    Output: 2
    Explanation: After flipping values in the first two columns, the last two rows have equal values.

 
    Constraints:

    m == matrix.length
    n == matrix[i].length
    1 <= m, n <= 300
    matrix[i][j] is either 0 or 1.

    """
    ### Canonical solution below ###
    from collections import defaultdict
    count = defaultdict(int)
    for row in matrix:
        row_str = "".join(str(row[0] ^ val) for val in row)
        count[row_str] += 1
    return max(count.values())




### Unit tests below ###
def check(candidate):
	assert candidate([[1, 1, 1], [0, 0, 0], [1, 1, 1]]) == 3
	assert candidate(
    [[1, 0, 1, 0, 1], [1, 0, 1, 0, 1], [0, 1, 0, 0, 0], [1, 0, 1, 1, 1], [1, 0, 1, 1, 1]]) == 3
	assert candidate([[0, 1], [1, 0]]) == 2
	assert candidate([[0, 0], [0, 0]]) == 2
	assert candidate(
    [[0, 0, 0, 1], [0, 0, 0, 1], [1, 0, 0, 0], [0, 0, 1, 1]]) == 2
	assert candidate([[1, 1], [1, 1]]) == 2
	assert candidate([[1, 0], [1, 0]]) == 2
	assert candidate([[0, 0, 0], [0, 0, 1], [1, 1, 0]]) == 2
	assert candidate(
    [[1, 1, 1, 1, 1, 1, 1], [0, 0, 0, 0, 0, 0, 0], [1, 1, 1, 1, 1, 1, 1], [0, 0, 0, 0, 0, 0, 0], [1, 1, 1, 1, 1, 1, 1]]) == 5
	assert candidate([[1, 1, 0, 1], [0, 0, 1, 0], [1, 1, 0, 1]]) == 3
	assert candidate([[0, 1], [1, 1], [1, 0]]) == 2
	assert candidate([[0, 1, 1], [1, 0, 0]]) == 2
	assert candidate([[0, 0, 0, 0], [0, 0, 0, 0], [1, 1, 1, 1]]) == 3
	assert candidate([[0, 0, 0], [0, 0, 0], [1, 1, 1]]) == 3
	assert candidate([[0, 0, 0], [0, 1, 0], [1, 0, 1]]) == 2
def test_check():
	check(maxEqualRowsAfterFlips)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,matrix
# Metadata Coverage: 100
