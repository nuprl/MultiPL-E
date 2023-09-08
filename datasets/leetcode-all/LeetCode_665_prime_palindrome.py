def prime_palindrome(n: int) -> int:
    """
    Given an integer n, return the smallest prime palindrome greater than or equal to n.
    An integer is prime if it has exactly two divisors: 1 and itself. Note that 1 is not a prime number.

    For example, 2, 3, 5, 7, 11, and 13 are all primes.

    An integer is a palindrome if it reads the same from left to right as it does from right to left.

    For example, 101 and 12321 are palindromes.

    The test cases are generated so that the answer always exists and is in the range [2, 2 * 108].
 
    Example 1:
    Input: n = 6
    Output: 7
    Example 2:
    Input: n = 8
    Output: 11
    Example 3:
    Input: n = 13
    Output: 101

 
    Constraints:

    1 <= n <= 108

    """
    ### Canonical solution below ###
    def is_palindrome(n):
        return str(n) == str(n)[::-1]

    def is_prime(n):
        if n <= 1:
            return False
        i = 2
        while i * i <= n:
            if n % i == 0:
                return False
            i += 1
        return True
    while True:
        if is_prime(n) and is_palindrome(n):
            return n
        n += 1




### Unit tests below ###
def check(candidate):
	assert candidate(10) == 11
	assert candidate(1) == 2
	assert candidate(300) == 313
	assert candidate(97) == 101
	assert candidate(5) == 5
	assert candidate(1234) == 10301
	assert candidate(6) == 7
	assert candidate(9) == 11
	assert candidate(98) == 101
	assert candidate(13) == 101
	assert candidate(94) == 101
	assert candidate(2) == 2
	assert candidate(4) == 5
	assert candidate(11) == 11
	assert candidate(92) == 101
	assert candidate(3) == 3
	assert candidate(95) == 101
	assert candidate(100) == 101
	assert candidate(7) == 7
	assert candidate(8) == 11
	assert candidate(99) == 101
	assert candidate(93) == 101
	assert candidate(101) == 101
	assert candidate(17) == 101
	assert candidate(124) == 131
	assert candidate(96) == 101
def test_check():
	check(prime_palindrome)
# Metadata Difficulty: Medium
# Metadata Topics: math
# Metadata Coverage: 100
