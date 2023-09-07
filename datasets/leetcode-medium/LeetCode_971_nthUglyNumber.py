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
    from math import gcd

    ab = a * b // gcd(a, b)
    ac = a * c // gcd(a, c)
    bc = b * c // gcd(b, c)
    abc = a * bc // gcd(a, bc)

    left, right = 0, 2 * 10**9
    while left < right:
        mid = left + (right - left) // 2
        cnt = mid // a + mid // b + mid // c - mid // ab - mid // ac - mid // bc + mid // abc
        if cnt < n:
            left = mid + 1
        else:
            right = mid

    return left




### Unit tests below ###
def check(candidate):
	assert candidate(7, 2, 3, 5) == 9
	assert candidate(6, 2, 3, 5) == 8
	assert candidate(1000000000, 2, 217983653, 336916467) == 1999999984
	assert candidate(5, 2, 3, 5) == 6
	assert candidate(10, 2, 2, 2) == 20
	assert candidate(4, 2, 3, 5) == 5
	assert candidate(9, 1, 3, 7) == 9
	assert candidate(1, 2, 3, 5) == 2
	assert candidate(1000, 2, 2, 2) == 2000
	assert candidate(8, 1, 3, 7) == 8
	assert candidate(8, 2, 3, 5) == 10
	assert candidate(2, 1, 3, 7) == 2
	assert candidate(3, 2, 3, 5) == 4
	assert candidate(100, 2, 2, 2) == 200
	assert candidate(1, 1, 1, 1) == 1
	assert candidate(9, 1, 3, 5) == 9
	assert candidate(9, 2, 3, 5) == 12
def test_check():
	check(nthUglyNumber)
# Metadata Difficulty: Medium
# Metadata Topics: math,binary-search,number-theory
# Metadata Coverage: 100
