def tilingRectangle(n: int, m: int) -> int:
    """
    Given a rectangle of size n x m, return the minimum number of integer-sided squares that tile the rectangle.
 
    Example 1:


    Input: n = 2, m = 3
    Output: 3
    Explanation: 3 squares are necessary to cover the rectangle.
    2 (squares of 1x1)
    1 (square of 2x2)
    Example 2:


    Input: n = 5, m = 8
    Output: 5

    Example 3:


    Input: n = 11, m = 13
    Output: 6

 
    Constraints:

    1 <= n, m <= 13

    """
    ### Canonical solution below ###
    if n > m:
        n, m = m, n
    if n == 1:
        return m
    if n == m:
        return 1

    res = float('inf')
    for a in range(1, n // 2 + 1):
        res = min(res, tilingRectangle(a, m) + tilingRectangle(n - a, m))

    for b in range(1, m // 2 + 1):
        res = min(res, tilingRectangle(n, b) + tilingRectangle(n, m - b))

    return res




### Unit tests below ###
def check(candidate):
	assert candidate(2, 3) == 3
	assert candidate(1, 4) == 4
	assert candidate(1, 50) == 50
	assert candidate(48, 1) == 48
	assert candidate(35, 35) == 1
	assert candidate(30, 30) == 1
	assert candidate(34, 34) == 1
	assert candidate(20, 20) == 1
	assert candidate(15, 5) == 3
	assert candidate(5, 5) == 1
	assert candidate(1, 6) == 6
	assert candidate(39, 39) == 1
	assert candidate(13, 13) == 1
	assert candidate(8, 7) == 7
	assert candidate(1, 58) == 58
	assert candidate(18, 18) == 1
	assert candidate(42, 42) == 1
	assert candidate(6, 7) == 5
	assert candidate(56, 1) == 56
	assert candidate(5, 1) == 5
	assert candidate(4, 2) == 2
	assert candidate(36, 36) == 1
	assert candidate(1, 20) == 20
	assert candidate(37, 37) == 1
	assert candidate(10, 10) == 1
	assert candidate(16, 16) == 1
	assert candidate(55, 55) == 1
	assert candidate(26, 26) == 1
	assert candidate(7, 1) == 7
	assert candidate(17, 17) == 1
	assert candidate(1, 7) == 7
	assert candidate(1, 5) == 5
	assert candidate(30, 1) == 30
	assert candidate(29, 1) == 29
	assert candidate(12, 12) == 1
	assert candidate(24, 24) == 1
	assert candidate(2, 2) == 1
	assert candidate(10, 1) == 10
	assert candidate(40, 40) == 1
	assert candidate(38, 1) == 38
	assert candidate(1, 3) == 3
	assert candidate(15, 15) == 1
	assert candidate(4, 1) == 4
	assert candidate(41, 41) == 1
	assert candidate(28, 1) == 28
	assert candidate(29, 29) == 1
	assert candidate(1, 2) == 2
	assert candidate(1, 55) == 55
	assert candidate(1, 10) == 10
	assert candidate(1, 40) == 40
	assert candidate(2, 4) == 2
	assert candidate(14, 14) == 1
	assert candidate(8, 8) == 1
	assert candidate(27, 27) == 1
	assert candidate(19, 19) == 1
	assert candidate(3, 2) == 3
	assert candidate(7, 5) == 5
	assert candidate(6, 4) == 3
	assert candidate(31, 31) == 1
	assert candidate(15, 1) == 15
	assert candidate(7, 3) == 5
	assert candidate(25, 25) == 1
	assert candidate(3, 3) == 1
	assert candidate(47, 47) == 1
	assert candidate(1, 30) == 30
	assert candidate(32, 32) == 1
	assert candidate(1, 59) == 59
	assert candidate(1, 1) == 1
	assert candidate(21, 21) == 1
def test_check():
	check(tilingRectangle)
# Metadata Difficulty: Hard
# Metadata Topics: backtracking
# Metadata Coverage: 100
