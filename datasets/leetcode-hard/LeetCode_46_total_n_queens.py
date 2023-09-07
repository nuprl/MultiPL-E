def total_n_queens(n: int) -> int:
    """
    The n-queens puzzle is the problem of placing n queens on an n x n chessboard such that no two queens attack each other.
    Given an integer n, return the number of distinct solutions to the n-queens puzzle.
 
    Example 1:


    Input: n = 4
    Output: 2
    Explanation: There are two distinct solutions to the 4-queens puzzle as shown.

    Example 2:

    Input: n = 1
    Output: 1

 
    Constraints:

    1 <= n <= 9

    """
    ### Canonical solution below ###
    def backtrack(n, cols):
        if len(cols) == n:
            return 1

        count = 0
        for i in range(n):
            if is_safe(cols, i):
                cols.append(i)
                count += backtrack(n, cols)
                cols.pop()

        return count

    def is_safe(cols, row):
        col = len(cols)
        for i, r in enumerate(cols):
            if r == row or abs(i - col) == abs(r - row):
                return False
        return True
    cols = []
    return backtrack(n, cols)




### Unit tests below ###
def check(candidate):
	assert candidate(6) == 4
	assert candidate(1) == 1
	assert candidate(5) == 10
	assert candidate(8) == 92
	assert candidate(4) == 2
	assert candidate(9) == 352
	assert candidate(7) == 40
	assert candidate(11) == 2680
	assert candidate(3) == 0
	assert candidate(2) == 0
	assert candidate(10) == 724
def test_check():
	check(total_n_queens)
# Metadata Difficulty: Hard
# Metadata Topics: backtracking
# Metadata Coverage: 100
