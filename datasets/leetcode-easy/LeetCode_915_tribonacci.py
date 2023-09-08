def tribonacci(n: int) -> int:
    """
    The Tribonacci sequence Tn is defined as follows: 
    T0 = 0, T1 = 1, T2 = 1, and Tn+3 = Tn + Tn+1 + Tn+2 for n >= 0.
    Given n, return the value of Tn.
 
    Example 1:

    Input: n = 4
    Output: 4
    Explanation:
    T_3 = 0 + 1 + 1 = 2
    T_4 = 1 + 1 + 2 = 4

    Example 2:

    Input: n = 25
    Output: 1389537

 
    Constraints:

    0 <= n <= 37
    The answer is guaranteed to fit within a 32-bit integer, ie. answer <= 2^31 - 1.
    """
    ### Canonical solution below ###
    if n == 0:
        return 0
    if n == 1 or n == 2:
        return 1
    a, b, c = 0, 1, 1
    for _ in range(3, n + 1):
        a, b, c = b, c, a + b + c
    return c




### Unit tests below ###
def check(candidate):
	assert candidate(12) == 504
	assert candidate(4) == 4
	assert candidate(13) == 927
	assert candidate(9) == 81
	assert candidate(3) == 2
	assert candidate(5) == 7
	assert candidate(25) == 1389537
	assert candidate(2) == 1
	assert candidate(11) == 274
	assert candidate(1) == 1
	assert candidate(6) == 13
	assert candidate(8) == 44
	assert candidate(0) == 0
	assert candidate(15) == 3136
	assert candidate(10) == 149
	assert candidate(7) == 24
	assert candidate(14) == 1705
def test_check():
	check(tribonacci)
# Metadata Difficulty: Easy
# Metadata Topics: math,dynamic-programming,memoization
# Metadata Coverage: 100
