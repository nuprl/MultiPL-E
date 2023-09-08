def numSquares(n: int) -> int:
    """
    Given an integer n, return the least number of perfect square numbers that sum to n.
    A perfect square is an integer that is the square of an integer; in other words, it is the product of some integer with itself. For example, 1, 4, 9, and 16 are perfect squares while 3 and 11 are not.
 
    Example 1:

    Input: n = 12
    Output: 3
    Explanation: 12 = 4 + 4 + 4.

    Example 2:

    Input: n = 13
    Output: 2
    Explanation: 13 = 4 + 9.

 
    Constraints:

    1 <= n <= 104

    """
    ### Canonical solution below ###
    dp = [float('inf')] * (n + 1)
    dp[0] = 0

    for i in range(1, n + 1):
        j = 1
        while j * j <= i:
            dp[i] = min(dp[i], dp[i - j * j] + 1)
            j += 1

    return dp[n]




### Unit tests below ###
def check(candidate):
	assert candidate(6) == 3
	assert candidate(41) == 2
	assert candidate(45) == 2
	assert candidate(28) == 4
	assert candidate(5) == 2
	assert candidate(1200) == 3
	assert candidate(7) == 4
	assert candidate(32) == 2
	assert candidate(71) == 4
	assert candidate(66) == 3
	assert candidate(222) == 3
	assert candidate(42) == 3
	assert candidate(44) == 3
	assert candidate(55) == 4
	assert candidate(60) == 4
	assert candidate(38) == 3
	assert candidate(1) == 1
	assert candidate(72) == 2
	assert candidate(68) == 2
	assert candidate(26) == 2
	assert candidate(63) == 4
	assert candidate(30) == 3
	assert candidate(64) == 1
	assert candidate(20) == 2
	assert candidate(522) == 2
	assert candidate(70) == 3
	assert candidate(1425) == 3
	assert candidate(31) == 4
	assert candidate(58) == 2
	assert candidate(1132) == 3
	assert candidate(27) == 3
	assert candidate(2) == 2
	assert candidate(46) == 3
	assert candidate(22) == 3
	assert candidate(13) == 2
	assert candidate(57) == 3
	assert candidate(56) == 3
	assert candidate(37) == 2
	assert candidate(21) == 3
	assert candidate(4001) == 2
	assert candidate(23) == 4
	assert candidate(40) == 2
	assert candidate(16) == 1
	assert candidate(24) == 3
	assert candidate(12) == 3
	assert candidate(14) == 3
	assert candidate(19) == 3
	assert candidate(51) == 3
	assert candidate(8) == 2
	assert candidate(43) == 3
	assert candidate(80) == 2
	assert candidate(18) == 2
	assert candidate(11) == 3
	assert candidate(33) == 3
	assert candidate(69) == 3
	assert candidate(99) == 3
	assert candidate(76) == 3
	assert candidate(17) == 2
	assert candidate(48) == 3
	assert candidate(4) == 1
	assert candidate(36) == 1
	assert candidate(62) == 3
	assert candidate(1037) == 2
	assert candidate(65) == 2
	assert candidate(25) == 1
	assert candidate(47) == 4
	assert candidate(772) == 2
	assert candidate(29) == 2
	assert candidate(82) == 2
	assert candidate(9) == 1
	assert candidate(3) == 3
	assert candidate(52) == 2
	assert candidate(10) == 2
	assert candidate(34) == 2
	assert candidate(54) == 3
	assert candidate(93) == 3
	assert candidate(85) == 2
	assert candidate(15) == 4
	assert candidate(98) == 2
def test_check():
	check(numSquares)
# Metadata Difficulty: Medium
# Metadata Topics: math,dynamic-programming,breadth-first-search
# Metadata Coverage: 100
