def common_factors(a: int, b: int) -> int:
    """
    Given two positive integers a and b, return the number of common factors of a and b.
    An integer x is a common factor of a and b if x divides both a and b.
 
    Example 1:

    Input: a = 12, b = 6
    Output: 4
    Explanation: The common factors of 12 and 6 are 1, 2, 3, 6.

    Example 2:

    Input: a = 25, b = 30
    Output: 2
    Explanation: The common factors of 25 and 30 are 1, 5.

 
    Constraints:

    1 <= a, b <= 1000

    """
    ### Canonical solution below ###
    from math import gcd

    g = gcd(a, b)
    count = 0
    for i in range(1, int(g**0.5) + 1):
        if g % i == 0:
            count += 1
            if i * i != g:
                count += 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate(14, 28) == 4
	assert candidate(44, 88) == 6
	assert candidate(8, 16) == 4
	assert candidate(125, 25) == 3
	assert candidate(33, 99) == 4
	assert candidate(19, 38) == 2
	assert candidate(25, 125) == 3
	assert candidate(17, 34) == 2
	assert candidate(81, 27) == 4
	assert candidate(40, 80) == 8
	assert candidate(5, 25) == 2
	assert candidate(18, 36) == 6
	assert candidate(20, 40) == 6
	assert candidate(11, 7) == 1
	assert candidate(13, 26) == 2
	assert candidate(9, 3) == 2
	assert candidate(16, 32) == 5
	assert candidate(7, 21) == 2
	assert candidate(1000, 999) == 1
	assert candidate(11, 22) == 2
	assert candidate(27, 81) == 4
	assert candidate(12, 6) == 4
	assert candidate(999, 1000) == 1
	assert candidate(1000, 1000) == 16
	assert candidate(10, 15) == 2
	assert candidate(31, 62) == 2
	assert candidate(77, 154) == 4
	assert candidate(1, 16) == 1
	assert candidate(37, 74) == 2
	assert candidate(35, 70) == 4
	assert candidate(25, 30) == 2
	assert candidate(1, 1) == 1
	assert candidate(789, 123) == 2
	assert candidate(2, 14) == 2
	assert candidate(42, 56) == 4
	assert candidate(5, 10) == 2
	assert candidate(26, 52) == 4
	assert candidate(32, 64) == 6
	assert candidate(128, 64) == 7
	assert candidate(77, 88) == 2
	assert candidate(36, 48) == 6
	assert candidate(7, 14) == 2
	assert candidate(3, 6) == 2
	assert candidate(64, 128) == 7
	assert candidate(14, 21) == 2
	assert candidate(10, 5) == 2
	assert candidate(24, 48) == 8
	assert candidate(3, 9) == 2
	assert candidate(111, 222) == 4
	assert candidate(28, 70) == 4
	assert candidate(12, 24) == 6
	assert candidate(23, 46) == 2
	assert candidate(9, 18) == 3
def test_check():
	check(common_factors)
# Metadata Difficulty: Easy
# Metadata Topics: math,enumeration,number-theory
# Metadata Coverage: 100
