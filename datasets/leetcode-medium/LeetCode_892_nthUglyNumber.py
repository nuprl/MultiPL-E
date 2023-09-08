def nthUglyNumber(n: int, a: int, b: int, c: int) -> int:
    """
    An ugly number is a positive integer that is divisible by a, b, or c.
    Given four integers n, a, b, and c, return the nth ugly number.
 
    Example 1:

    Input: n = 3, a = 2, b = 3, c = 5
    Output: 4
    Explanation: The ugly numbers are 2, 3, 4, 5, 6, 8, 9, 10... The 3rd is 4.

    Example 2:

    Input: n = 4, a = 2, b = 3, c = 4
    Output: 6
    Explanation: The ugly numbers are 2, 3, 4, 6, 8, 9, 10, 12... The 4th is 6.

    Example 3:

    Input: n = 5, a = 2, b = 11, c = 13
    Output: 10
    Explanation: The ugly numbers are 2, 4, 6, 8, 10, 11, 12, 13... The 5th is 10.

 
    Constraints:

    1 <= n, a, b, c <= 109
    1 <= a * b * c <= 1018
    It is guaranteed that the result will be in range [1, 2 * 109].

    """
    ### Canonical solution below ###
    import math
    left, right = 1, int(2e9)
    lcm_ab, lcm_ac, lcm_bc = a * b // math.gcd(a, b), a * c // math.gcd(a, c), b * c // math.gcd(b, c)
    lcm_abc = a * lcm_bc // math.gcd(a, lcm_bc)

    while left < right:
        mid = left + (right - left) // 2
        count = mid // a + mid // b + mid // c - mid // lcm_ab - mid // lcm_ac - mid // lcm_bc + mid // lcm_abc
        if count < n:
            left = mid + 1
        else:
            right = mid
    return left




### Unit tests below ###
def check(candidate):
	assert candidate(1000000000, 2, 217983653, 336916467) == 1999999984
	assert candidate(4, 3, 4, 5) == 6
	assert candidate(1, 1, 2, 3) == 1
	assert candidate(3, 1, 1, 1) == 3
	assert candidate(1000000000, 1, 1, 2) == 1000000000
	assert candidate(1, 2, 3, 5) == 2
	assert candidate(1, 2, 3, 4) == 2
	assert candidate(4, 2, 3, 4) == 6
	assert candidate(2, 4, 6, 10) == 6
	assert candidate(1000000000, 1, 1, 1) == 1000000000
	assert candidate(3, 2, 3, 5) == 4
	assert candidate(1000000000, 1, 2, 5) == 1000000000
	assert candidate(1, 1, 1, 1) == 1
	assert candidate(2, 1, 1, 1) == 2
	assert candidate(1, 1, 1, 2) == 1
	assert candidate(5, 2, 11, 13) == 10
def test_check():
	check(nthUglyNumber)
# Metadata Difficulty: Medium
# Metadata Topics: math,binary-search,number-theory
# Metadata Coverage: 100
