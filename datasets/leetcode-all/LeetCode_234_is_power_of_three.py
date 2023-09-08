def is_power_of_three(n: int) -> bool:
    """
    Given an integer n, return true if it is a power of three. Otherwise, return false.
    An integer n is a power of three, if there exists an integer x such that n == 3x.
 
    Example 1:

    Input: n = 27
    Output: true
    Explanation: 27 = 33

    Example 2:

    Input: n = 0
    Output: false
    Explanation: There is no x where 3x = 0.

    Example 3:

    Input: n = -1
    Output: false
    Explanation: There is no x where 3x = (-1).

 
    Constraints:

    -231 <= n <= 231 - 1

 
    Follow up: Could you solve it without loops/recursion?"""
    ### Canonical solution below ###
    if n < 1:
        return False

    while n % 3 == 0:
        n //= 3

    return n == 1




### Unit tests below ###
def check(candidate):
	assert candidate(75) == False
	assert candidate(37) == False
	assert candidate(-9) == False
	assert candidate(1594323) == True
	assert candidate(92) == False
	assert candidate(1458) == False
	assert candidate(4374) == False
	assert candidate(10000) == False
	assert candidate(27) == True
	assert candidate(153) == False
	assert candidate(69) == False
	assert candidate(576460752303423481) == False
	assert candidate(2) == False
	assert candidate(125) == False
	assert candidate(46) == False
	assert candidate(64) == False
	assert candidate(1) == True
	assert candidate(730) == False
	assert candidate(1162261467) == True
	assert candidate(2187) == True
	assert candidate(47) == False
	assert candidate(21) == False
	assert candidate(-36) == False
	assert candidate(35831808) == False
	assert candidate(81) == True
	assert candidate(900) == False
	assert candidate(122) == False
	assert candidate(51) == False
	assert candidate(300) == False
	assert candidate(18) == False
	assert candidate(324) == False
	assert candidate(-4) == False
	assert candidate(13122) == False
	assert candidate(36) == False
	assert candidate(369) == False
	assert candidate(161) == False
	assert candidate(531441) == True
	assert candidate(387420489) == True
	assert candidate(99) == False
	assert candidate(1000) == False
	assert candidate(48) == False
	assert candidate(-1) == False
	assert candidate(15) == False
	assert candidate(4562) == False
	assert candidate(14348907) == True
	assert candidate(-3) == False
	assert candidate(54) == False
	assert candidate(129140163) == True
	assert candidate(200) == False
	assert candidate(6561) == True
	assert candidate(4) == False
	assert candidate(3) == True
	assert candidate(59049) == True
	assert candidate(402) == False
	assert candidate(270) == False
	assert candidate(53) == False
	assert candidate(16) == False
	assert candidate(32) == False
	assert candidate(19683) == True
	assert candidate(162) == False
	assert candidate(43) == False
	assert candidate(-43) == False
	assert candidate(-100) == False
	assert candidate(8406880) == False
	assert candidate(486) == False
	assert candidate(177147) == True
	assert candidate(6) == False
	assert candidate(97) == False
	assert candidate(-27) == False
	assert candidate(96) == False
	assert candidate(10) == False
	assert candidate(243) == True
	assert candidate(100) == False
	assert candidate(500) == False
	assert candidate(696) == False
	assert candidate(-243) == False
	assert candidate(24) == False
	assert candidate(729) == True
	assert candidate(-21) == False
	assert candidate(4782969) == True
	assert candidate(43046721) == True
	assert candidate(984324) == False
	assert candidate(1162261468) == False
	assert candidate(0) == False
	assert candidate(9) == True
	assert candidate(8) == False
def test_check():
	check(is_power_of_three)
# Metadata Difficulty: Easy
# Metadata Topics: math,recursion
# Metadata Coverage: 100
