def clumsy(n: int) -> int:
    """
    The factorial of a positive integer n is the product of all positive integers less than or equal to n.

    For example, factorial(10) = 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1.

    We make a clumsy factorial using the integers in decreasing order by swapping out the multiply operations for a fixed rotation of operations with multiply '*', divide '/', add '+', and subtract '-' in this order.

    For example, clumsy(10) = 10 * 9 / 8 + 7 - 6 * 5 / 4 + 3 - 2 * 1.

    However, these operations are still applied using the usual order of operations of arithmetic. We do all multiplication and division steps before any addition or subtraction steps, and multiplication and division steps are processed left to right.
    Additionally, the division that we use is floor division such that 10 * 9 / 8 = 90 / 8 = 11.
    Given an integer n, return the clumsy factorial of n.
 
    Example 1:

    Input: n = 4
    Output: 7
    Explanation: 7 = 4 * 3 / 2 + 1

    Example 2:

    Input: n = 10
    Output: 12
    Explanation: 12 = 10 * 9 / 8 + 7 - 6 * 5 / 4 + 3 - 2 * 1

 
    Constraints:

    1 <= n <= 104

    """
    ### Canonical solution below ###
    if n <= 2:
        return n
    if n == 3:
        return 6
    result = n * (n - 1) // (n - 2) + (n - 3)
    n -= 4
    while n >= 4:
        result = result - (n * (n - 1) // (n - 2)) + (n - 3)
        n -= 4
    return result - clumsy(n)




### Unit tests below ###
def check(candidate):
	assert candidate(1900) == 1901
	assert candidate(8) == 9
	assert candidate(2200) == 2201
	assert candidate(3000000) == 3000001
	assert candidate(200) == 201
	assert candidate(2100) == 2101
	assert candidate(9900) == 9901
	assert candidate(300000) == 300001
	assert candidate(2600) == 2601
	assert candidate(2000) == 2001
	assert candidate(3000) == 3001
	assert candidate(20) == 21
	assert candidate(4) == 7
	assert candidate(9000) == 9001
	assert candidate(5) == 7
	assert candidate(5000) == 5001
	assert candidate(4000) == 4001
	assert candidate(300) == 301
	assert candidate(100) == 101
	assert candidate(2400) == 2401
	assert candidate(45000000) == 45000001
	assert candidate(1000000) == 1000001
	assert candidate(9) == 11
	assert candidate(11) == 10
	assert candidate(2300) == 2301
	assert candidate(7) == 6
	assert candidate(19) == 18
	assert candidate(3) == 6
	assert candidate(14) == 16
	assert candidate(15) == 14
	assert candidate(2500) == 2501
	assert candidate(1600) == 1601
	assert candidate(1100) == 1101
	assert candidate(9000000) == 9000001
	assert candidate(20000) == 20001
	assert candidate(2700) == 2701
	assert candidate(1) == 1
	assert candidate(15000000) == 15000001
	assert candidate(30000) == 30001
	assert candidate(50000000) == 50000001
	assert candidate(500) == 501
	assert candidate(13) == 15
	assert candidate(6) == 8
	assert candidate(40000) == 40001
	assert candidate(30) == 32
	assert candidate(999) == 998
	assert candidate(1700) == 1701
	assert candidate(10) == 12
	assert candidate(400) == 401
	assert candidate(10000000) == 10000001
	assert candidate(2900) == 2901
	assert candidate(900) == 901
	assert candidate(16) == 17
	assert candidate(1500) == 1501
	assert candidate(2800) == 2801
	assert candidate(12) == 13
	assert candidate(1400) == 1401
	assert candidate(1800) == 1801
	assert candidate(18) == 20
	assert candidate(600) == 601
	assert candidate(6000) == 6001
	assert candidate(1200) == 1201
	assert candidate(700) == 701
	assert candidate(5000000) == 5000001
	assert candidate(1300) == 1301
	assert candidate(900000) == 900001
	assert candidate(17) == 19
	assert candidate(1000) == 1001
	assert candidate(10000) == 10001
	assert candidate(3200) == 3201
	assert candidate(2) == 2
	assert candidate(800) == 801
	assert candidate(100000) == 100001
def test_check():
	check(clumsy)
# Metadata Difficulty: Medium
# Metadata Topics: math,stack,simulation
# Metadata Coverage: 100
