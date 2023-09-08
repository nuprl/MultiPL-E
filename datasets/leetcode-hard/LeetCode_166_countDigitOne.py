def countDigitOne(n: int) -> int:
    """
    Given an integer n, count the total number of digit 1 appearing in all non-negative integers less than or equal to n.
 
    Example 1:

    Input: n = 13
    Output: 6

    Example 2:

    Input: n = 0
    Output: 0

 
    Constraints:

    0 <= n <= 109

    """
    ### Canonical solution below ###
    count = 0
    i = 1
    while i <= n:
        divider = i * 10
        count += (n // divider) * i + min(max(n % divider - i + 1, 0), i)
        i *= 10
    return count




### Unit tests below ###
def check(candidate):
	assert candidate(12) == 5
	assert candidate(1) == 1
	assert candidate(20) == 12
	assert candidate(1000000) == 600001
	assert candidate(1000) == 301
	assert candidate(3) == 1
	assert candidate(100000) == 50001
	assert candidate(2) == 1
	assert candidate(16) == 9
	assert candidate(4) == 1
	assert candidate(10) == 2
	assert candidate(8) == 1
	assert candidate(13) == 6
	assert candidate(5) == 1
	assert candidate(15) == 8
	assert candidate(18) == 11
	assert candidate(0) == 0
	assert candidate(14) == 7
	assert candidate(7) == 1
	assert candidate(9) == 1
	assert candidate(101) == 23
	assert candidate(19) == 12
	assert candidate(17) == 10
	assert candidate(6) == 1
	assert candidate(11) == 4
	assert candidate(10000) == 4001
	assert candidate(100) == 21
	assert candidate(21) == 13
def test_check():
	check(countDigitOne)
# Metadata Difficulty: Hard
# Metadata Topics: math,dynamic-programming,recursion
# Metadata Coverage: 100
