def has_alternating_bits(n: int) -> bool:
    """
    Given a positive integer, check whether it has alternating bits: namely, if two adjacent bits will always have different values.
 
    Example 1:

    Input: n = 5
    Output: true
    Explanation: The binary representation of 5 is: 101

    Example 2:

    Input: n = 7
    Output: false
    Explanation: The binary representation of 7 is: 111.
    Example 3:

    Input: n = 11
    Output: false
    Explanation: The binary representation of 11 is: 1011.
 
    Constraints:

    1 <= n <= 231 - 1

    """
    ### Canonical solution below ###
    prev_bit = n % 2
    n //= 2
    while n > 0:
        curr_bit = n % 2
        if curr_bit == prev_bit:
            return False
        prev_bit = curr_bit
        n //= 2
    return True




### Unit tests below ###
def check(candidate):
	assert candidate(25) == False
	assert candidate(53) == False
	assert candidate(16) == False
	assert candidate(11) == False
	assert candidate(30) == False
	assert candidate(6) == False
	assert candidate(50) == False
	assert candidate(7) == False
	assert candidate(45) == False
	assert candidate(58) == False
	assert candidate(31) == False
	assert candidate(14) == False
	assert candidate(24) == False
	assert candidate(12) == False
	assert candidate(60) == False
	assert candidate(1) == True
	assert candidate(48) == False
	assert candidate(28) == False
	assert candidate(8) == False
	assert candidate(21) == True
	assert candidate(62) == False
	assert candidate(57) == False
	assert candidate(35) == False
	assert candidate(19) == False
	assert candidate(49) == False
	assert candidate(15) == False
	assert candidate(23) == False
	assert candidate(37) == False
	assert candidate(10) == True
	assert candidate(33) == False
	assert candidate(4) == False
	assert candidate(13) == False
	assert candidate(47) == False
	assert candidate(17) == False
	assert candidate(56) == False
	assert candidate(9) == False
	assert candidate(55) == False
	assert candidate(27) == False
	assert candidate(32) == False
	assert candidate(22) == False
	assert candidate(39) == False
	assert candidate(64) == False
	assert candidate(38) == False
	assert candidate(34) == False
	assert candidate(40) == False
	assert candidate(43) == False
	assert candidate(20) == False
	assert candidate(51) == False
	assert candidate(44) == False
	assert candidate(2) == True
	assert candidate(18) == False
	assert candidate(52) == False
	assert candidate(5) == True
	assert candidate(29) == False
	assert candidate(54) == False
	assert candidate(26) == False
	assert candidate(46) == False
	assert candidate(3) == False
def test_check():
	check(has_alternating_bits)
# Metadata Difficulty: Easy
# Metadata Topics: bit-manipulation
# Metadata Coverage: 100
