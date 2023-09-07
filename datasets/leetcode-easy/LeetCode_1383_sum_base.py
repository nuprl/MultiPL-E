def sum_base(n: int, k: int) -> int:
    """
    Given an integer n (in base 10) and a base k, return the sum of the digits of n after converting n from base 10 to base k.
    After converting, each digit should be interpreted as a base 10 number, and the sum should be returned in base 10.
 
    Example 1:

    Input: n = 34, k = 6
    Output: 9
    Explanation: 34 (base 10) expressed in base 6 is 54. 5 + 4 = 9.

    Example 2:

    Input: n = 10, k = 10
    Output: 1
    Explanation: n is already in base 10. 1 + 0 = 1.

 
    Constraints:

    1 <= n <= 100
    2 <= k <= 10

    """
    ### Canonical solution below ###
    s = 0
    while n:
        s += n % k
        n //= k
    return s




### Unit tests below ###
def check(candidate):
	assert candidate(11, 10) == 2
	assert candidate(16, 2) == 1
	assert candidate(10, 4) == 4
	assert candidate(42, 7) == 6
	assert candidate(100, 10) == 1
	assert candidate(1, 2) == 1
	assert candidate(10000000000000000000, 10) == 1
	assert candidate(210, 10) == 3
	assert candidate(34, 6) == 9
	assert candidate(100, 100) == 1
	assert candidate(42, 10) == 6
	assert candidate(100, 4) == 4
	assert candidate(10, 10) == 1
	assert candidate(16, 8) == 2
	assert candidate(16, 16) == 1
	assert candidate(1, 10) == 1
	assert candidate(99, 10) == 18
	assert candidate(100, 5) == 4
	assert candidate(11, 2) == 3
def test_check():
	check(sum_base)
# Metadata Difficulty: Easy
# Metadata Topics: math
# Metadata Coverage: 100
