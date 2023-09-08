def isPowerOfFour(n: int) -> bool:
    """
    Given an integer n, return true if it is a power of four. Otherwise, return false.
    An integer n is a power of four, if there exists an integer x such that n == 4x.
 
    Example 1:
    Input: n = 16
    Output: true
    Example 2:
    Input: n = 5
    Output: false
    Example 3:
    Input: n = 1
    Output: true

 
    Constraints:

    -231 <= n <= 231 - 1

 
    Follow up: Could you solve it without loops/recursion?"""
    ### Canonical solution below ###
    if n <= 0:
        return False
    while n % 4 == 0:
        n //= 4
    return n == 1




### Unit tests below ###
def check(candidate):
	assert candidate(256) == True
	assert candidate(2 ** 5) == False
	assert candidate(-16) == False
	assert candidate(4 ** 20) == True
	assert candidate(18) == False
	assert candidate(256 * 256) == True
	assert candidate(0) == False
	assert candidate(4 ** 2) == True
	assert candidate(3 ** 30) == False
	assert candidate(2 ** 35) == False
	assert candidate(20) == False
	assert candidate(16) == True
	assert candidate(10) == False
	assert candidate(4 ** 15) == True
	assert candidate(4 ** 30) == True
	assert candidate(-1) == False
	assert candidate(1) == True
	assert candidate(2 ** 12) == True
	assert candidate(10000) == False
	assert candidate(3 ** 2) == False
	assert candidate(2 ** 30) == True
	assert candidate(6) == False
	assert candidate(-100) == False
	assert candidate(2 ** 32) == True
	assert candidate(2 ** 10) == True
	assert candidate(4 ** 17) == True
	assert candidate(-230) == False
	assert candidate(2) == False
	assert candidate(1024 * 1024 * 1024) == True
	assert candidate(4096) == True
	assert candidate(10 ** 10) == False
	assert candidate(1024 * 2) == False
	assert candidate(1024 ** 2) == True
	assert candidate(1024) == True
	assert candidate(1000) == False
	assert candidate(31) == False
	assert candidate(81) == False
	assert candidate(231) == False
	assert candidate(5) == False
	assert candidate(3) == False
	assert candidate(2 ** 41) == False
	assert candidate(64 * 1024) == True
	assert candidate(2 ** 1) == False
	assert candidate(4 ** 26) == True
	assert candidate(14) == False
	assert candidate(25) == False
	assert candidate(2 ** 31) == False
	assert candidate(2 ** 40) == True
	assert candidate(-231) == False
	assert candidate(-4) == False
	assert candidate(2 ** 20) == True
	assert candidate(231 - 1) == False
	assert candidate(4 ** 25) == True
	assert candidate(2 ** 39) == False
	assert candidate(2 ** 33) == False
	assert candidate(2 ** 37) == False
	assert candidate(1024 * 1024) == True
	assert candidate(4) == True
	assert candidate(64) == True
	assert candidate(-232) == False
	assert candidate(100) == False
	assert candidate(4 ** 18) == True
	assert candidate(-4 ** 10) == False
	assert candidate(-2 ** 35) == False
	assert candidate(4 ** 5) == True
	assert candidate(4 ** 10) == True
	assert candidate(625) == False
	assert candidate(15) == False
	assert candidate(-8) == False
	assert candidate(1024 ** 3) == True
	assert candidate((4 ** 10) * 3) == False
	assert candidate(1023) == False
def test_check():
	check(isPowerOfFour)
# Metadata Difficulty: Easy
# Metadata Topics: math,bit-manipulation,recursion
# Metadata Coverage: 100
