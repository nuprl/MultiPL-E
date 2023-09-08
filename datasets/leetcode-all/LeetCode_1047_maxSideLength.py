from typing import List


def maxSideLength(mat: List[List[int]], threshold: int) -> int:
    """
    Given a m x n matrix mat and an integer threshold, return the maximum side-length of a square with a sum less than or equal to threshold or return 0 if there is no such square.
 
    Example 1:


    Input: mat = [[1,1,3,2,4,3,2],[1,1,3,2,4,3,2],[1,1,3,2,4,3,2]], threshold = 4
    Output: 2
    Explanation: The maximum side length of square with sum less than 4 is 2 as shown.

    Example 2:

    Input: mat = [[2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2]], threshold = 1
    Output: 0

 
    Constraints:

    m == mat.length
    n == mat[i].length
    1 <= m, n <= 300
    0 <= mat[i][j] <= 104
    0 <= threshold <= 105

    """
    ### Canonical solution below ###
    m, n = len(mat), len(mat[0])
    dp = [[0] * (n + 1) for _ in range(m + 1)]
    ans = 0

    for i in range(1, m + 1):
        for j in range(1, n + 1):
            dp[i][j] = mat[i - 1][j - 1] + dp[i][j - 1] + dp[i - 1][j] - dp[i - 1][j - 1]
            k = ans + 1
            if i >= k and j >= k and dp[i][j] - dp[i][j - k] - dp[i - k][j] + dp[i - k][j - k] <= threshold:
                ans += 1

    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([[10,10,10],[10,10,10],[10,10,10]], 100) == 3
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 18) == 2
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 9) == 1
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 17) == 2
	assert candidate([[1,2,1],[1,2,1],[1,2,1]], 0) == 0
	assert candidate([[1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,1]], 0) == 0
	assert candidate([[1,2,1],[1,2,1],[1,2,1]], 6) == 2
	assert candidate([[1]], 0) == 0
	assert candidate([[1,2,1],[1,2,1],[1,2,1]], 1) == 1
	assert candidate([[2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2]], 1) == 0
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 100) == 3
	assert candidate([[1,2],[3,4]], 10) == 2
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 0) == 0
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 10) == 1
	assert candidate([[1,2],[3,4]], 4) == 1
	assert candidate([[1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,1]], 4) == 2
	assert candidate([[1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,1]], 16) == 4
	assert candidate([[1,2],[3,4]], 0) == 0
	assert candidate([[10,10,10],[10,10,10],[10,10,10]], 10) == 1
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 25) == 2
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 3) == 1
	assert candidate([[1]], 1) == 1
	assert candidate([[1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,1]], 1) == 1
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 15) == 2
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 14) == 2
	assert candidate([[1,2,1],[1,2,1],[1,2,1]], 2) == 1
	assert candidate([[1,1,3,2,4,3,2],[1,1,3,2,4,3,2],[1,1,3,2,4,3,2]], 4) == 2
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 48) == 3
	assert candidate([[1,2,1],[1,2,1],[1,2,1]], 3) == 1
def test_check():
	check(maxSideLength)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search,matrix,prefix-sum
# Metadata Coverage: 100
