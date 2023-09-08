def nthMagicalNumber(n: int, a: int, b: int) -> int:
    """
    A positive integer is magical if it is divisible by either a or b.
    Given the three integers n, a, and b, return the nth magical number. Since the answer may be very large, return it modulo 109 + 7.
 
    Example 1:

    Input: n = 1, a = 2, b = 3
    Output: 2

    Example 2:

    Input: n = 4, a = 2, b = 3
    Output: 6

 
    Constraints:

    1 <= n <= 109
    2 <= a, b <= 4 * 104

    """
    ### Canonical solution below ###
    def gcd(a, b):
        return a if b == 0 else gcd(b, a % b)
    mod = 1000000007
    lcm = a * b // gcd(a, b)
    left, right = 1, 10**14
    while left < right:
        mid = left + (right - left) // 2
        if (mid // a + mid // b - mid // lcm) < n:
            left = mid + 1
        else:
            right = mid
    return left % mod




### Unit tests below ###
def check(candidate):
	assert candidate(1, 1, 2) == 1
	assert candidate(15, 15, 15) == 225
	assert candidate(8, 4, 2) == 16
	assert candidate(1, 1, 8) == 1
	assert candidate(9, 3, 3) == 27
	assert candidate(7, 7, 7) == 49
	assert candidate(1, 2, 3) == 2
	assert candidate(11, 11, 11) == 121
	assert candidate(1, 1, 4) == 1
	assert candidate(8, 8, 8) == 64
	assert candidate(10, 10000, 10000) == 100000
	assert candidate(10, 1, 1) == 10
	assert candidate(1, 1, 9) == 1
	assert candidate(1, 1, 7) == 1
	assert candidate(1, 3, 2) == 2
	assert candidate(1, 100, 10000) == 100
	assert candidate(1, 1, 10000) == 1
	assert candidate(1, 1, 5) == 1
	assert candidate(4, 4, 4) == 16
	assert candidate(4, 2, 3) == 6
	assert candidate(2, 2, 1) == 2
	assert candidate(6, 2, 4) == 12
	assert candidate(1, 10000, 10000) == 10000
	assert candidate(2, 2, 2) == 4
	assert candidate(10, 4, 2) == 20
	assert candidate(5, 5, 5) == 25
	assert candidate(12, 12, 12) == 144
	assert candidate(6, 6, 6) == 36
	assert candidate(10000, 10000, 10000) == 100000000
	assert candidate(14, 14, 14) == 196
	assert candidate(10, 10, 10) == 100
	assert candidate(9, 9, 9) == 81
	assert candidate(1, 1, 1) == 1
	assert candidate(100000, 10000, 10000) == 1000000000
	assert candidate(1000, 2, 1) == 1000
	assert candidate(3, 3, 3) == 9
	assert candidate(1, 2, 1) == 1
	assert candidate(13, 13, 13) == 169
	assert candidate(10, 2, 2) == 20
	assert candidate(1, 3, 4) == 3
	assert candidate(1, 1, 6) == 1
	assert candidate(1, 1, 3) == 1
def test_check():
	check(nthMagicalNumber)
# Metadata Difficulty: Hard
# Metadata Topics: math,binary-search
# Metadata Coverage: 100
