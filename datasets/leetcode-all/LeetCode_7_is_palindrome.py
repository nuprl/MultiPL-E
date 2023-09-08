def is_palindrome(x: int) -> bool:
    """
    Given an integer x, return true if x is a palindrome, and false otherwise.
 
    Example 1:

    Input: x = 121
    Output: true
    Explanation: 121 reads as 121 from left to right and from right to left.

    Example 2:

    Input: x = -121
    Output: false
    Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.

    Example 3:

    Input: x = 10
    Output: false
    Explanation: Reads 01 from right to left. Therefore it is not a palindrome.

 
    Constraints:

    -231 <= x <= 231 - 1

 
    Follow up: Could you solve it without converting the integer to a string?"""
    ### Canonical solution below ###
    if x < 0:
        return False
    original, reversed = x, 0
    while x > 0:
        reversed = reversed * 10 + x % 10
        x //= 10
    return original == reversed




### Unit tests below ###
def check(candidate):
	assert candidate(-44) == False
	assert candidate(-1221) == False
	assert candidate(1000000000) == False
	assert candidate(-333) == False
	assert candidate(2222) == True
	assert candidate(1000000000000) == False
	assert candidate(-2147483647) == False
	assert candidate(6006006) == True
	assert candidate(100000000000) == False
	assert candidate(-9999) == False
	assert candidate(3003) == True
	assert candidate(6006) == True
	assert candidate(9999) == True
	assert candidate(0) == True
	assert candidate(-66) == False
	assert candidate(22) == True
	assert candidate(-3) == False
	assert candidate(10000000000000000) == False
	assert candidate(77) == True
	assert candidate(-123321) == False
	assert candidate(99) == True
	assert candidate(1000000000000000) == False
	assert candidate(11111) == True
	assert candidate(-2147483648) == False
	assert candidate(999) == True
	assert candidate(-1001) == False
	assert candidate(11) == True
	assert candidate(123321) == True
	assert candidate(66) == True
	assert candidate(-2147447412) == False
	assert candidate(10001) == True
	assert candidate(-444444444444) == False
	assert candidate(114411) == True
	assert candidate(-21474836472147483647) == False
	assert candidate(44444444) == True
	assert candidate(333333333) == True
	assert candidate(1) == True
	assert candidate(3) == True
	assert candidate(-4444) == False
	assert candidate(-55) == False
	assert candidate(-22) == False
	assert candidate(222222222) == True
	assert candidate(10000000000) == False
	assert candidate(55) == True
	assert candidate(1001) == True
	assert candidate(-44444444) == False
	assert candidate(121) == True
	assert candidate(10000) == False
	assert candidate(113311) == True
	assert candidate(99999999) == True
	assert candidate(4444) == True
	assert candidate(11111111) == True
	assert candidate(100000000) == False
	assert candidate(8008) == True
	assert candidate(-4545454) == False
	assert candidate(12321) == True
	assert candidate(6666) == True
	assert candidate(1221) == True
	assert candidate(11311) == True
	assert candidate(10000000000000) == False
	assert candidate(45445) == False
	assert candidate(-2222) == False
	assert candidate(44444) == True
	assert candidate(1111) == True
	assert candidate(111) == True
	assert candidate(-3333) == False
	assert candidate(-454) == False
	assert candidate(3333) == True
	assert candidate(-88) == False
	assert candidate(-1111) == False
	assert candidate(7007) == True
	assert candidate(10) == False
	assert candidate(-878) == False
	assert candidate(-55555) == False
	assert candidate(33) == True
	assert candidate(2112) == True
	assert candidate(1000) == False
	assert candidate(-121) == False
	assert candidate(-222) == False
	assert candidate(4004) == True
	assert candidate(2) == True
	assert candidate(333) == True
	assert candidate(1000000) == False
	assert candidate(-3003) == False
	assert candidate(100000000000000) == False
	assert candidate(1234321) == True
	assert candidate(-101) == False
	assert candidate(5005) == True
	assert candidate(7777) == True
	assert candidate(1133311) == True
	assert candidate(4444444) == True
	assert candidate(6464646) == True
	assert candidate(44) == True
	assert candidate(-8778) == False
	assert candidate(2002) == True
	assert candidate(444) == True
	assert candidate(100) == False
	assert candidate(333333) == True
	assert candidate(-555) == False
	assert candidate(8888) == True
	assert candidate(888) == True
	assert candidate(666) == True
	assert candidate(-12345) == False
	assert candidate(9009) == True
	assert candidate(-1) == False
	assert candidate(8778) == True
	assert candidate(112211) == True
	assert candidate(5555) == True
	assert candidate(12345) == False
	assert candidate(88) == True
	assert candidate(-33) == False
	assert candidate(3131313) == True
	assert candidate(5005005) == True
def test_check():
	check(is_palindrome)
# Metadata Difficulty: Easy
# Metadata Topics: math
# Metadata Coverage: 100
