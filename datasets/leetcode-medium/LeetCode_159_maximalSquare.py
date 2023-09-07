from typing import List


def maximalSquare(matrix: List[List[str]]) -> int:
    """
    Given an m x n binary matrix filled with 0's and 1's, find the largest square containing only 1's and return its area.
 
    Example 1:


    Input: matrix = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]
    Output: 4

    Example 2:


    Input: matrix = [["0","1"],["1","0"]]
    Output: 1

    Example 3:

    Input: matrix = [["0"]]
    Output: 0

 
    Constraints:

    m == matrix.length
    n == matrix[i].length
    1 <= m, n <= 300
    matrix[i][j] is '0' or '1'.

    """
    ### Canonical solution below ###
    m, n = len(matrix), len(matrix[0])
    dp = [[0] * (n + 1) for _ in range(m + 1)]
    maxSize = 0

    for i in range(1, m + 1):
        for j in range(1, n + 1):
            if matrix[i - 1][j - 1] == '1':
                dp[i][j] = min(dp[i - 1][j], dp[i][j - 1], dp[i - 1][j - 1]) + 1
                maxSize = max(maxSize, dp[i][j])

    return maxSize * maxSize




### Unit tests below ###
def check(candidate):
	assert candidate([["1", "1", "1", "1"], ["1", "1", "1", "1"], ["1", "1", "1", "1"], ["1", "1", "1", "1"]]) == 16
	assert candidate([["1", "0", "1", "0", "0"], ["1", "0", "1", "1", "1"], ["1", "1", "1", "1", "1"], ["1", "0", "0", "1", "0"]]) == 4
	assert candidate([["0"]]) == 0
	assert candidate([["1", "1", "0"], ["1", "1", "0"], ["0", "0", "1"]]) == 4
	assert candidate(
    [["1", "0", "1", "0", "0"], ["1", "0", "1", "1", "1"], ["1", "1", "1", "1", "1"], ["1", "0", "0", "1", "0"]]) == 4
	assert candidate([["0", "0", "0", "0"], ["0", "0", "0", "0"], ["0", "0", "0", "0"], ["0", "0", "0", "0"]]) == 0
	assert candidate(
    [["1", "1", "1", "0", "0"], ["1", "1", "1", "1", "1"], ["1", "1", "1", "1", "1"], ["1", "1", "0", "1", "1"], ["0", "1", "1", "1", "0"]]) == 9
	assert candidate([["1", "1", "1"], ["1", "1", "1"], ["1", "1", "1"]]) == 9
	assert candidate(
    [["1", "1", "1", "0", "0"], ["1", "1", "1", "1", "1"], ["1", "1", "1", "1", "1"], ["0", "0", "0", "0", "0"], ["0", "0", "0", "0", "0"]]) == 9
	assert candidate([["1", "1", "1", "0"], ["1", "1", "1", "1"], ["1", "1", "0", "1"], ["1", "0", "1", "1"]]) == 4
	assert candidate([["1"]]) == 1
	assert candidate([["1", "1", "1", "1", "1"], ["1", "1", "1", "1", "1"], ["1", "1", "1", "1", "1"], ["1", "1", "1", "1", "1"], ["1", "1", "1", "1", "1"]]) == 25
	assert candidate([["1", "0", "0", "0"], ["0", "0", "0", "0"], ["0", "0", "0", "0"], ["0", "0", "0", "0"]]) == 1
	assert candidate([["1", "1"], ["1", "0"]]) == 1
	assert candidate(
    [["0", "0", "0", "0", "0", "0"], ["0", "1", "0", "0", "0", "0"], ["0", "0", "1", "0", "0", "0"], ["0", "0", "0", "1", "0", "0"], ["0", "0", "0", "0", "1", "0"], ["0", "0", "0", "0", "0", "1"]]) == 1
	assert candidate([["0", "1"], ["1", "0"]]) == 1
	assert candidate([["1", "0", "1"], ["0", "1", "0"], ["1", "0", "1"]]) == 1
	assert candidate([["1", "1", "0", "0", "1"], ["1", "1", "1", "1", "1"], ["0", "1", "1", "1", "1"], ["0", "1", "1", "1", "0"], ["1", "1", "1", "1", "1"]]) == 9
def test_check():
	check(maximalSquare)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,matrix
# Metadata Coverage: 100
