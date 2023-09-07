def reorderedPowerOf2(n: int) -> bool:
    """
    You are given an integer n. We reorder the digits in any order (including the original order) such that the leading digit is not zero.
    Return true if and only if we can do this so that the resulting number is a power of two.
 
    Example 1:

    Input: n = 1
    Output: true

    Example 2:

    Input: n = 10
    Output: false

 
    Constraints:

    1 <= n <= 109

    """
    ### Canonical solution below ###
    from itertools import permutations as perm
    for p in set(perm(str(n))):
        if p[0] != '0' and (bin(int(''.join(p))).count('1') == 1):
            return True
    return False




### Unit tests below ###
def check(candidate):
	assert candidate(2097152) == True
	assert candidate(1024) == True
	assert candidate(10) == False
	assert candidate(8589934593) == False
	assert candidate(16) == True
	assert candidate(123456789) == False
	assert candidate(128) == True
	assert candidate(46) == True
	assert candidate(1023) == False
	assert candidate(15) == False
	assert candidate(65535) == False
	assert candidate(134217728) == True
	assert candidate(536870911) == False
	assert candidate(1073741823) == False
	assert candidate(11) == False
	assert candidate(808) == False
	assert candidate(1) == True
	assert candidate(511) == False
	assert candidate(655360) == False
	assert candidate(99) == False
	assert candidate(256) == True
	assert candidate(101) == False
	assert candidate(4) == True
	assert candidate(25) == False
	assert candidate(2147483648) == True
	assert candidate(18000000000) == False
	assert candidate(1729) == False
	assert candidate(18) == False
	assert candidate(1073741825) == False
	assert candidate(64) == True
	assert candidate(65536) == True
	assert candidate(524288) == True
	assert candidate(4194304) == True
	assert candidate(8192) == True
	assert candidate(8589934592) == True
	assert candidate(32768) == True
	assert candidate(8388608) == True
	assert candidate(33554431) == False
	assert candidate(4095) == False
	assert candidate(9) == False
	assert candidate(100) == False
	assert candidate(2048) == True
	assert candidate(39916800) == False
	assert candidate(67108864) == True
	assert candidate(2) == True
	assert candidate(32767) == False
	assert candidate(327680) == False
	assert candidate(36) == False
	assert candidate(16777216) == True
	assert candidate(16383) == False
	assert candidate(100000000) == False
	assert candidate(83886080) == False
	assert candidate(536870912) == True
	assert candidate(8) == True
	assert candidate(5) == False
	assert candidate(32) == True
	assert candidate(46656) == False
	assert candidate(1073741824) == True
	assert candidate(129) == False
	assert candidate(262144) == True
	assert candidate(147483647) == False
	assert candidate(1000) == False
	assert candidate(55) == False
	assert candidate(7) == False
	assert candidate(335544320) == False
	assert candidate(1048576) == True
	assert candidate(24) == False
	assert candidate(351376) == False
	assert candidate(94089687) == False
	assert candidate(16384) == True
	assert candidate(131072) == True
	assert candidate(33554432) == True
	assert candidate(4096) == True
	assert candidate(512) == True
	assert candidate(400000000) == False
	assert candidate(131071) == False
	assert candidate(3) == False
	assert candidate(268435456) == True
	assert candidate(999999999) == False
	assert candidate(987654321) == False
	assert candidate(5368709120) == False
def test_check():
	check(reorderedPowerOf2)
# Metadata Difficulty: Medium
# Metadata Topics: math,sorting,counting,enumeration
# Metadata Coverage: 100
