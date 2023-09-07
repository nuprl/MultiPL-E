def findPaths(m: int, n: int, maxMove: int, startRow: int, startColumn: int) -> int:
    """
    There is an m x n grid with a ball. The ball is initially at the position [startRow, startColumn]. You are allowed to move the ball to one of the four adjacent cells in the grid (possibly out of the grid crossing the grid boundary). You can apply at most maxMove moves to the ball.
    Given the five integers m, n, maxMove, startRow, startColumn, return the number of paths to move the ball out of the grid boundary. Since the answer can be very large, return it modulo 109 + 7.
 
    Example 1:


    Input: m = 2, n = 2, maxMove = 2, startRow = 0, startColumn = 0
    Output: 6

    Example 2:


    Input: m = 1, n = 3, maxMove = 3, startRow = 0, startColumn = 1
    Output: 12

 
    Constraints:

    1 <= m, n <= 50
    0 <= maxMove <= 50
    0 <= startRow < m
    0 <= startColumn < n

    """
    ### Canonical solution below ###
    MOD = 10**9 + 7
    dp = [[[0] * n for _ in range(m)] for _ in range(maxMove + 1)]
    moves = ((-1, 0), (1, 0), (0, -1), (0, 1))

    for k in range(1, maxMove + 1):
        for i in range(m):
            for j in range(n):
                for move in moves:
                    ni, nj = i + move[0], j + move[1]
                    if ni < 0 or ni >= m or nj < 0 or nj >= n:
                        dp[k][i][j] = (dp[k][i][j] + 1) % MOD
                    else:
                        dp[k][i][j] = (dp[k][i][j] + dp[k - 1][ni][nj]) % MOD

    return dp[maxMove][startRow][startColumn]




### Unit tests below ###
def check(candidate):
	assert candidate(2, 2, 0, 0, 0) == 0
	assert candidate(2, 2, 1, 1, 1) == 2
	assert candidate(1, 3, 3, 0, 1) == 12
	assert candidate(2, 2, 1, 0, 0) == 2
	assert candidate(3, 3, 1, 1, 1) == 0
	assert candidate(3, 3, 2, 1, 1) == 4
	assert candidate(2, 2, 3, 0, 0) == 14
	assert candidate(1, 1, 1, 0, 0) == 4
	assert candidate(2, 2, 2, 1, 1) == 6
	assert candidate(2, 2, 2, 0, 0) == 6
def test_check():
	check(findPaths)
# Metadata Difficulty: Medium
# Metadata Topics: dynamic-programming
# Metadata Coverage: 100
