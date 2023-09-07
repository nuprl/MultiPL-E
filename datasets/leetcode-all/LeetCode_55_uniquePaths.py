def uniquePaths(m: int, n: int) -> int:
    """
    There is a robot on an m x n grid. The robot is initially located at the top-left corner (i.e., grid[0][0]). The robot tries to move to the bottom-right corner (i.e., grid[m - 1][n - 1]). The robot can only move either down or right at any point in time.
    Given the two integers m and n, return the number of possible unique paths that the robot can take to reach the bottom-right corner.
    The test cases are generated so that the answer will be less than or equal to 2 * 109.
 
    Example 1:


    Input: m = 3, n = 7
    Output: 28

    Example 2:

    Input: m = 3, n = 2
    Output: 3
    Explanation: From the top-left corner, there are a total of 3 ways to reach the bottom-right corner:
    1. Right -> Down -> Down
    2. Down -> Down -> Right
    3. Down -> Right -> Down

 
    Constraints:

    1 <= m, n <= 100

    """
    ### Canonical solution below ###
    dp = [[1] * n for _ in range(m)]
    for i in range(1, m):
        for j in range(1, n):
            dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
    return dp[m - 1][n - 1]




### Unit tests below ###
def check(candidate):
	assert candidate(3, 4) == 10
	assert candidate(2, 2) == 2
	assert candidate(1, 2) == 1
	assert candidate(2, 10) == 10
	assert candidate(10, 2) == 10
	assert candidate(4, 3) == 10
	assert candidate(100, 2) == 100
	assert candidate(100, 1) == 1
	assert candidate(2, 100) == 100
	assert candidate(20, 20) == 35345263800
	assert candidate(3, 2) == 3
	assert candidate(5, 5) == 70
	assert candidate(1, 100) == 1
	assert candidate(7, 3) == 28
	assert candidate(10, 10) == 48620
	assert candidate(3, 7) == 28
	assert candidate(2, 3) == 3
	assert candidate(1, 1) == 1
	assert candidate(4, 4) == 20
	assert candidate(3, 3) == 6
	assert candidate(2, 1) == 1
def test_check():
	check(uniquePaths)
# Metadata Difficulty: Medium
# Metadata Topics: math,dynamic-programming,combinatorics
# Metadata Coverage: 100
