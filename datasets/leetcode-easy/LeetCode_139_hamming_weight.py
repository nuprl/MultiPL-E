def hamming_weight(n: int) -> int:
    """
    Write a function that takes the binary representation of an unsigned integer and returns the number of '1' bits it has (also known as the Hamming weight).
    Note:

    Note that in some languages, such as Java, there is no unsigned integer type. In this case, the input will be given as a signed integer type. It should not affect your implementation, as the integer's internal binary representation is the same, whether it is signed or unsigned.
    In Java, the compiler represents the signed integers using 2's complement notation. Therefore, in Example 3, the input represents the signed integer. -3.

 
    Example 1:

    Input: n = 00000000000000000000000000001011
    Output: 3
    Explanation: The input binary string 00000000000000000000000000001011 has a total of three '1' bits.

    Example 2:

    Input: n = 00000000000000000000000010000000
    Output: 1
    Explanation: The input binary string 00000000000000000000000010000000 has a total of one '1' bit.

    Example 3:

    Input: n = 11111111111111111111111111111101
    Output: 31
    Explanation: The input binary string 11111111111111111111111111111101 has a total of thirty one '1' bits.

 
    Constraints:

    The input must be a binary string of length 32.

 
    Follow up: If this function is called many times, how would you optimize it?"""
    ### Canonical solution below ###
    count = 0
    while n:
        count += n & 1
        n >>= 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate(0b00000000000000000000000000001011) == 3
	assert candidate(0b11111111111111111111111111111111) == 32
	assert candidate(0b00000000000000010000000000000000) == 1
	assert candidate(0b01000000000000000000000000001000) == 2
	assert candidate(0b11111111111111111111111111111100) == 30
	assert candidate(0b00000000000000000000000000000000) == 0
	assert candidate(0b00000000000000000000000000000001) == 1
	assert candidate(0b00000000000000000000000010000000) == 1
	assert candidate(0b01010101010101010101010101010101) == 16
	assert candidate(0b00000000000100000000000000000000) == 1
	assert candidate(0b00010000000000000000000000000000) == 1
	assert candidate(0b11111111111111111111111111111101) == 31
	assert candidate(0b10000000000000000000000000000000) == 1
	assert candidate(0b00010001000100010001000100010001) == 8
	assert candidate(0b00000000000000000001000000000000) == 1
	assert candidate(0b00000000000000000000000100000000) == 1
	assert candidate(0b10000000000000000000000000000100) == 2
	assert candidate(0b00000000000000000000000000000010) == 1
	assert candidate(0b00100000000000000000000000010000) == 2
	assert candidate(0b00000001000000000000000000000000) == 1
	assert candidate(0b00000000000000000000000000010000) == 1
	assert candidate(0b10101010101010101010101010101010) == 16
	assert candidate(0b01111111111111111111111111111111) == 31
def test_check():
	check(hamming_weight)
# Metadata Difficulty: Easy
# Metadata Topics: divide-and-conquer,bit-manipulation
# Metadata Coverage: 100
