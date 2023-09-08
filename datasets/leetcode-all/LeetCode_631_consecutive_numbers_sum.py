def consecutive_numbers_sum(n: int) -> int:
    """
    Given an integer n, return the number of ways you can write n as the sum of consecutive positive integers.
 
    Example 1:

    Input: n = 5
    Output: 2
    Explanation: 5 = 2 + 3

    Example 2:

    Input: n = 9
    Output: 3
    Explanation: 9 = 4 + 5 = 2 + 3 + 4

    Example 3:

    Input: n = 15
    Output: 4
    Explanation: 15 = 8 + 7 = 4 + 5 + 6 = 1 + 2 + 3 + 4 + 5

 
    Constraints:

    1 <= n <= 109

    """
    ### Canonical solution below ###
    count = 0
    i = 1
    while i * (i - 1) // 2 < n:
        if (n - i * (i - 1) // 2) % i == 0:
            count += 1
        i += 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate(674) == 2
	assert candidate(1) == 1
	assert candidate(21) == 4
	assert candidate(33) == 4
	assert candidate(54) == 4
	assert candidate(12) == 2
	assert candidate(100) == 3
	assert candidate(998) == 2
	assert candidate(22) == 2
	assert candidate(41) == 2
	assert candidate(17) == 2
	assert candidate(30) == 4
	assert candidate(2) == 1
	assert candidate(15) == 4
	assert candidate(62) == 2
	assert candidate(26) == 2
	assert candidate(37) == 2
	assert candidate(43) == 2
	assert candidate(427) == 4
	assert candidate(25) == 3
	assert candidate(16) == 1
	assert candidate(31) == 2
	assert candidate(7) == 2
	assert candidate(102) == 4
	assert candidate(11) == 2
	assert candidate(19) == 2
	assert candidate(23) == 2
	assert candidate(42) == 4
	assert candidate(3) == 2
	assert candidate(40) == 2
	assert candidate(133) == 4
	assert candidate(35) == 4
	assert candidate(49) == 3
	assert candidate(9) == 3
	assert candidate(132) == 4
	assert candidate(32) == 1
	assert candidate(20) == 2
	assert candidate(103) == 2
	assert candidate(18) == 3
	assert candidate(10) == 2
	assert candidate(5) == 2
	assert candidate(6) == 2
	assert candidate(74) == 2
	assert candidate(34) == 2
	assert candidate(88) == 2
	assert candidate(53) == 2
	assert candidate(13) == 2
	assert candidate(8) == 1
	assert candidate(14) == 2
	assert candidate(36) == 3
	assert candidate(388) == 2
	assert candidate(64) == 1
	assert candidate(38) == 2
	assert candidate(29) == 2
	assert candidate(28) == 2
	assert candidate(52) == 2
	assert candidate(4) == 1
	assert candidate(45) == 6
def test_check():
	check(consecutive_numbers_sum)
# Metadata Difficulty: Hard
# Metadata Topics: math,enumeration
# Metadata Coverage: 100
