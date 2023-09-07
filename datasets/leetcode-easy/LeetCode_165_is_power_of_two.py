def is_power_of_two(n: int) -> bool:
    """
    Given an integer n, return true if it is a power of two. Otherwise, return false.
    An integer n is a power of two, if there exists an integer x such that n == 2x.
 
    Example 1:

    Input: n = 1
    Output: true
    Explanation: 20 = 1

    Example 2:

    Input: n = 16
    Output: true
    Explanation: 24 = 16

    Example 3:

    Input: n = 3
    Output: false

 
    Constraints:

    -231 <= n <= 231 - 1

 
    Follow up: Could you solve it without loops/recursion?"""
    ### Canonical solution below ###
    if n <= 0:
        return False
    return (n & (n - 1)) == 0




### Unit tests below ###
def check(candidate):
	assert candidate(13) == False
	assert candidate(2147483648) == True
	assert candidate(4098) == False
	assert candidate(32) == True
	assert candidate(254) == False
	assert candidate(31) == False
	assert candidate(257) == False
	assert candidate(129) == False
	assert candidate(511) == False
	assert candidate(8589934592) == True
	assert candidate(4094) == False
	assert candidate(1048576) == True
	assert candidate(536870912) == True
	assert candidate(32767) == False
	assert candidate(256) == True
	assert candidate(1024) == True
	assert candidate(16) == True
	assert candidate(8190) == False
	assert candidate(1000000) == False
	assert candidate(33) == False
	assert candidate(4099) == False
	assert candidate(33554432) == True
	assert candidate(127) == False
	assert candidate(4096) == True
	assert candidate(99) == False
	assert candidate(524288) == True
	assert candidate(4097) == False
	assert candidate(5) == False
	assert candidate(65) == False
	assert candidate(8193) == False
	assert candidate(2046) == False
	assert candidate(2050) == False
	assert candidate(66) == False
	assert candidate(2047) == False
	assert candidate(4095) == False
	assert candidate(513) == False
	assert candidate(8) == True
	assert candidate(8191) == False
	assert candidate(65536) == True
	assert candidate(2000) == False
	assert candidate(9) == False
	assert candidate(79) == False
	assert candidate(1001) == False
	assert candidate(2002) == False
	assert candidate(17) == False
	assert candidate(16777216) == True
	assert candidate(1000) == False
	assert candidate(0) == False
	assert candidate(100663296) == False
	assert candidate(2048) == True
	assert candidate(2049) == False
	assert candidate(512) == True
	assert candidate(1073741823) == False
	assert candidate(14) == False
	assert candidate(255) == False
	assert candidate(7) == False
	assert candidate(18) == False
	assert candidate(8192) == True
	assert candidate(2) == True
	assert candidate(10000) == False
	assert candidate(128) == True
	assert candidate(4) == True
	assert candidate(10) == False
	assert candidate(6) == False
	assert candidate(-2) == False
	assert candidate(100) == False
	assert candidate(17179869184) == True
	assert candidate(200) == False
	assert candidate(32769) == False
	assert candidate(258) == False
	assert candidate(16384) == True
	assert candidate(131072) == True
	assert candidate(-1) == False
	assert candidate(262144) == True
	assert candidate(1025) == False
	assert candidate(15) == False
	assert candidate(500) == False
	assert candidate(64) == True
	assert candidate(1) == True
	assert candidate(25) == False
	assert candidate(1023) == False
	assert candidate(3) == False
	assert candidate(327681) == False
	assert candidate(63) == False
	assert candidate(1073741824) == True
	assert candidate(32768) == True
def test_check():
	check(is_power_of_two)
# Metadata Difficulty: Easy
# Metadata Topics: math,bit-manipulation,recursion
# Metadata Coverage: 100
