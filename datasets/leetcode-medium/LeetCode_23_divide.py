def divide(dividend: int, divisor: int) -> int:
    """
    Given two integers dividend and divisor, divide two integers without using multiplication, division, and mod operator.
    The integer division should truncate toward zero, which means losing its fractional part. For example, 8.345 would be truncated to 8, and -2.7335 would be truncated to -2.
    Return the quotient after dividing dividend by divisor.
    Note: Assume we are dealing with an environment that could only store integers within the 32-bit signed integer range: [−231, 231 − 1]. For this problem, if the quotient is strictly greater than 231 - 1, then return 231 - 1, and if the quotient is strictly less than -231, then return -231.
 
    Example 1:

    Input: dividend = 10, divisor = 3
    Output: 3
    Explanation: 10/3 = 3.33333.. which is truncated to 3.

    Example 2:

    Input: dividend = 7, divisor = -3
    Output: -2
    Explanation: 7/-3 = -2.33333.. which is truncated to -2.

 
    Constraints:

    -231 <= dividend, divisor <= 231 - 1
    divisor != 0

    """
    ### Canonical solution below ###
    if dividend == -(2**31) and divisor == -1:
        return 2**31 - 1

    sign = -1 if (dividend > 0) ^ (divisor > 0) else 1

    dvd = abs(dividend)
    dvs = abs(divisor)
    ans = 0

    while dvd >= dvs:
        temp = dvs
        multiple = 1
        while dvd >= (temp << 1):
            temp <<= 1
            multiple <<= 1
        dvd -= temp
        ans += multiple

    return ans * sign




### Unit tests below ###
def check(candidate):
	assert candidate(-2**31, 1) == -(2**31)
	assert candidate(2**31 - 1, 2**31) == 0
	assert candidate(100, -10) == -10
	assert candidate(-2**31 + 1, -2**31 + 1) == 1
	assert candidate(-10, -3) == 3
	assert candidate(-2**31, -(2**31 - 1)) == 1
	assert candidate(2, 3) == 0
	assert candidate(2**31, 2**31 - 1) == 1
	assert candidate(3, 3) == 1
	assert candidate(7, 3) == 2
	assert candidate(9, 3) == 3
	assert candidate(-2**31, -(2**31)) == 1
	assert candidate(2**31 - 1, 2**31 - 2) == 1
	assert candidate(45, 5) == 9
	assert candidate(1, 1) == 1
	assert candidate(-2**31, 2**31) == -1
	assert candidate(2**31, 3) == (2**31 - 1) // 3
	assert candidate(2**31 - 1, 2**31 - 1) == 1
	assert candidate(-(2**31 - 1), -(2**31 - 1)) == 1
	assert candidate(-7, -3) == 2
	assert candidate(-1, -1) == 1
	assert candidate(10, -10) == -1
	assert candidate(3, -3) == -1
	assert candidate(-(2**31 - 1), 2**31 - 1) == -1
	assert candidate(2**31, -(2**31 - 1)) == -1
	assert candidate(2**31 - 1, 1) == 2**31 - 1
	assert candidate(-2**31, 2**31 - 1) == -1
	assert candidate(2**31, 2) == 2**30
	assert candidate(-2**31 + 1, -1) == 2**31 - 1
	assert candidate(-2**31, -2**31) == 1
	assert candidate(2**31, 2**31) == 1
	assert candidate(1, 2**31 - 1) == 0
	assert candidate(0, 1) == 0
	assert candidate(2**31, 1) == 2**31
	assert candidate(-3, 3) == -1
	assert candidate(-100, -10) == 10
	assert candidate(-7, 3) == -2
	assert candidate(10, -3) == -3
	assert candidate(2**31 - 1, -1) == -(2**31 - 1)
	assert candidate(1, -2**31) == 0
	assert candidate(10, 3) == 3
	assert candidate(-3, -3) == 1
	assert candidate(-100, 10) == -10
	assert candidate(2**31 - 1, -(2**31 - 1)) == -1
	assert candidate(7, -3) == -2
	assert candidate(2**31, -1) == -(2**31)
	assert candidate(-10, 10) == -1
	assert candidate(-2**31 + 1, 1) == -(2**31) + 1
	assert candidate(-2**31, -1) == 2**31 - 1
	assert candidate(2**31, -2**31) == -1
	assert candidate(100, 10) == 10
def test_check():
	check(divide)
# Metadata Difficulty: Medium
# Metadata Topics: math,bit-manipulation
# Metadata Coverage: 100
