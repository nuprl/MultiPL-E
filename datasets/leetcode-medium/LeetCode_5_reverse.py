def reverse(x: int) -> int:
    """
    Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
    Assume the environment does not allow you to store 64-bit integers (signed or unsigned).
 
    Example 1:

    Input: x = 123
    Output: 321

    Example 2:

    Input: x = -123
    Output: -321

    Example 3:

    Input: x = 120
    Output: 21

 
    Constraints:

    -231 <= x <= 231 - 1

    """
    ### Canonical solution below ###
    sign = -1 if x < 0 else 1
    x = abs(x)
    res = 0
    while x:
        res = res * 10 + x % 10
        x //= 10
    res *= sign
    return res if -2**31 <= res <= 2**31 - 1 else 0




### Unit tests below ###
def check(candidate):
	assert candidate(7646789234) == 0
	assert candidate(2**31) == 0
	assert candidate(2147483648) == 0
	assert candidate(-4545454546) == 0
	assert candidate(2147483646) == 0
	assert candidate(999999999) == 999999999
	assert candidate(-2**31) == 0
	assert candidate(-8000000003) == 0
	assert candidate(2**31 - 1) == 0
	assert candidate(2**31 - 2) == 0
	assert candidate(10) == 1
	assert candidate(9999999999999999999999999) == 0
	assert candidate(120) == 21
	assert candidate(1534236469) == 0
	assert candidate(-9999999999999999999999999) == 0
	assert candidate(0) == 0
	assert candidate(-900000) == -9
	assert candidate(3453453453) == 0
	assert candidate(-2000000001) == -1000000002
	assert candidate(-123456789) == -987654321
	assert candidate(1) == 1
	assert candidate(123456789) == 987654321
	assert candidate(-10) == -1
	assert candidate(-2**31 - 1) == 0
	assert candidate(-123) == -321
	assert candidate(123) == 321
	assert candidate(-987654321) == -123456789
	assert candidate(1000000003) == 0
	assert candidate(1234567890) == 987654321
	assert candidate(4545454545) == 0
	assert candidate(-4545454545) == 0
	assert candidate(-1000000003) == 0
	assert candidate(-2147483648) == 0
	assert candidate(100) == 1
	assert candidate(2000000001) == 1000000002
	assert candidate(900000) == 9
	assert candidate(-7646789234) == 0
	assert candidate(-1111111111) == -1111111111
	assert candidate(-1234567890) == -987654321
	assert candidate(-1) == -1
	assert candidate(-2**31 - 5) == 0
	assert candidate(-100) == -1
	assert candidate(-1534236469) == 0
	assert candidate(-3453453453) == 0
	assert candidate(-4545454544) == 0
	assert candidate(2**31 + 1) == 0
	assert candidate(1111111111) == 1111111111
	assert candidate(2147483647) == 0
	assert candidate(-2**31 + 1) == 0
	assert candidate(8000000003) == 0
	assert candidate(987654321) == 123456789
	assert candidate(4545454544) == 0
	assert candidate(-2**31 - 4) == 0
	assert candidate(-999999999) == -999999999
def test_check():
	check(reverse)
# Metadata Difficulty: Medium
# Metadata Topics: math
# Metadata Coverage: 100
