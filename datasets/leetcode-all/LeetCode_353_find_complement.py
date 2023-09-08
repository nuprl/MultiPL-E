def find_complement(num: int) -> int:
    """
    The complement of an integer is the integer you get when you flip all the 0's to 1's and all the 1's to 0's in its binary representation.

    For example, The integer 5 is "101" in binary and its complement is "010" which is the integer 2.

    Given an integer num, return its complement.
 
    Example 1:

    Input: num = 5
    Output: 2
    Explanation: The binary representation of 5 is 101 (no leading zero bits), and its complement is 010. So you need to output 2.

    Example 2:

    Input: num = 1
    Output: 0
    Explanation: The binary representation of 1 is 1 (no leading zero bits), and its complement is 0. So you need to output 0.

 
    Constraints:

    1 <= num < 231

 
    Note: This question is the same as 1009: https://leetcode.com/problems/complement-of-base-10-integer/
    """
    ### Canonical solution below ###
    bit_length = 0
    mask = num
    while mask > 0:
        mask >>= 1
        bit_length += 1
    all_ones = (1 << bit_length) - 1

    return num ^ all_ones




### Unit tests below ###
def check(candidate):
	assert candidate(67108864) == 67108863
	assert candidate(22) == 9
	assert candidate(512) == 511
	assert candidate(16777216) == 16777215
	assert candidate(50) == 13
	assert candidate(10) == 5
	assert candidate(2) == 1
	assert candidate(2147483648) == 2147483647
	assert candidate(8192) == 8191
	assert candidate(17) == 14
	assert candidate(268435456) == 268435455
	assert candidate(2097152) == 2097151
	assert candidate(65536) == 65535
	assert candidate(32) == 31
	assert candidate(4) == 3
	assert candidate(1048576) == 1048575
	assert candidate(536870912) == 536870911
	assert candidate(131072) == 131071
	assert candidate(7) == 0
	assert candidate(8) == 7
	assert candidate(134217728) == 134217727
	assert candidate(14) == 1
	assert candidate(3) == 0
	assert candidate(1024) == 1023
	assert candidate(33554432) == 33554431
	assert candidate(1073741824) == 1073741823
	assert candidate(1) == 0
	assert candidate(6) == 1
	assert candidate(262144) == 262143
	assert candidate(15) == 0
	assert candidate(32768) == 32767
	assert candidate(4096) == 4095
	assert candidate(20) == 11
	assert candidate(16384) == 16383
	assert candidate(9) == 6
	assert candidate(4194304) == 4194303
	assert candidate(256) == 255
	assert candidate(21) == 10
	assert candidate(524288) == 524287
	assert candidate(16) == 15
	assert candidate(2048) == 2047
	assert candidate(5) == 2
	assert candidate(128) == 127
	assert candidate(100) == 27
	assert candidate(255) == 0
	assert candidate(8388608) == 8388607
def test_check():
	check(find_complement)
# Metadata Difficulty: Easy
# Metadata Topics: bit-manipulation
# Metadata Coverage: 100
