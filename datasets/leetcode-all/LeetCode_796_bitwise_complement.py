def bitwise_complement(n: int) -> int:
    """
    The complement of an integer is the integer you get when you flip all the 0's to 1's and all the 1's to 0's in its binary representation.

    For example, The integer 5 is "101" in binary and its complement is "010" which is the integer 2.

    Given an integer n, return its complement.
 
    Example 1:

    Input: n = 5
    Output: 2
    Explanation: 5 is "101" in binary, with complement "010" in binary, which is 2 in base-10.

    Example 2:

    Input: n = 7
    Output: 0
    Explanation: 7 is "111" in binary, with complement "000" in binary, which is 0 in base-10.

    Example 3:

    Input: n = 10
    Output: 5
    Explanation: 10 is "1010" in binary, with complement "0101" in binary, which is 5 in base-10.

 
    Constraints:

    0 <= n < 109

 
    Note: This question is the same as 476: https://leetcode.com/problems/number-complement/
    """
    ### Canonical solution below ###
    x = 1
    while n > x:
        x = x * 2 + 1
    return x - n




### Unit tests below ###
def check(candidate):
	assert candidate(31) == 0
	assert candidate(37) == 26
	assert candidate(35) == 28
	assert candidate(26) == 5
	assert candidate(19) == 12
	assert candidate(48) == 15
	assert candidate(24) == 7
	assert candidate(8) == 7
	assert candidate(38) == 25
	assert candidate(3) == 0
	assert candidate(33) == 30
	assert candidate(32) == 31
	assert candidate(47) == 16
	assert candidate(15) == 0
	assert candidate(43) == 20
	assert candidate(4) == 3
	assert candidate(21) == 10
	assert candidate(45) == 18
	assert candidate(36) == 27
	assert candidate(63) == 0
	assert candidate(16) == 15
	assert candidate(22) == 9
	assert candidate(96) == 31
	assert candidate(14) == 1
	assert candidate(41) == 22
	assert candidate(30) == 1
	assert candidate(42) == 21
	assert candidate(39) == 24
	assert candidate(29) == 2
	assert candidate(40) == 23
	assert candidate(18) == 13
	assert candidate(9) == 6
	assert candidate(17) == 14
	assert candidate(46) == 17
	assert candidate(28) == 3
	assert candidate(5) == 2
	assert candidate(23) == 8
	assert candidate(6) == 1
	assert candidate(7) == 0
	assert candidate(10) == 5
	assert candidate(44) == 19
	assert candidate(34) == 29
	assert candidate(13) == 2
	assert candidate(20) == 11
	assert candidate(0) == 1
	assert candidate(25) == 6
	assert candidate(11) == 4
	assert candidate(2) == 1
	assert candidate(12) == 3
	assert candidate(27) == 4
	assert candidate(1) == 0
def test_check():
	check(bitwise_complement)
# Metadata Difficulty: Easy
# Metadata Topics: bit-manipulation
# Metadata Coverage: 100
