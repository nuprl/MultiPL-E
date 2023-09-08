def reverse_bits(n: int) -> int:
    """
    Reverse bits of a given 32 bits unsigned integer.
    Note:

    Note that in some languages, such as Java, there is no unsigned integer type. In this case, both input and output will be given as a signed integer type. They should not affect your implementation, as the integer's internal binary representation is the same, whether it is signed or unsigned.
    In Java, the compiler represents the signed integers using 2's complement notation. Therefore, in Example 2 above, the input represents the signed integer -3 and the output represents the signed integer -1073741825.

 
    Example 1:

    Input: n = 00000010100101000001111010011100
    Output:    964176192 (00111001011110000010100101000000)
    Explanation: The input binary string 00000010100101000001111010011100 represents the unsigned integer 43261596, so return 964176192 which its binary representation is 00111001011110000010100101000000.

    Example 2:

    Input: n = 11111111111111111111111111111101
    Output:   3221225471 (10111111111111111111111111111111)
    Explanation: The input binary string 11111111111111111111111111111101 represents the unsigned integer 4294967293, so return 3221225471 which its binary representation is 10111111111111111111111111111111.

 
    Constraints:

    The input must be a binary string of length 32

 
    Follow up: If this function is called many times, how would you optimize it?
    """
    ### Canonical solution below ###
    res = 0
    for _ in range(32):
        res <<= 1
        res |= n & 1
        n >>= 1
    return res




### Unit tests below ###
def check(candidate):
	assert candidate(7) == 3758096384
	assert candidate(6) == 1610612736
	assert candidate(4294967295) == 4294967295
	assert candidate(3) == 3221225472
	assert candidate(2) == 1073741824
	assert candidate(4294967293) == 3221225471
	assert candidate(0) == 0
	assert candidate(1073741824) == 2
	assert candidate(4294967296) == 0
	assert candidate(4) == 536870912
	assert candidate(5) == 2684354560
	assert candidate(1) == 2147483648
	assert candidate(8) == 268435456
	assert candidate(16) == 134217728
	assert candidate(43261596) == 964176192
def test_check():
	check(reverse_bits)
# Metadata Difficulty: Easy
# Metadata Topics: divide-and-conquer,bit-manipulation
# Metadata Coverage: 100
