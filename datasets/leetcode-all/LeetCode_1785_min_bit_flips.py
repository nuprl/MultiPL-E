def min_bit_flips(start: int, goal: int) -> int:
    """
    A bit flip of a number x is choosing a bit in the binary representation of x and flipping it from either 0 to 1 or 1 to 0.

    For example, for x = 7, the binary representation is 111 and we may choose any bit (including any leading zeros not shown) and flip it. We can flip the first bit from the right to get 110, flip the second bit from the right to get 101, flip the fifth bit from the right (a leading zero) to get 10111, etc.

    Given two integers start and goal, return the minimum number of bit flips to convert start to goal.
 
    Example 1:

    Input: start = 10, goal = 7
    Output: 3
    Explanation: The binary representation of 10 and 7 are 1010 and 0111 respectively. We can convert 10 to 7 in 3 steps:
    - Flip the first bit from the right: 1010 -> 1011.
    - Flip the third bit from the right: 1011 -> 1111.
    - Flip the fourth bit from the right: 1111 -> 0111.
    It can be shown we cannot convert 10 to 7 in less than 3 steps. Hence, we return 3.
    Example 2:

    Input: start = 3, goal = 4
    Output: 3
    Explanation: The binary representation of 3 and 4 are 011 and 100 respectively. We can convert 3 to 4 in 3 steps:
    - Flip the first bit from the right: 011 -> 010.
    - Flip the second bit from the right: 010 -> 000.
    - Flip the third bit from the right: 000 -> 100.
    It can be shown we cannot convert 3 to 4 in less than 3 steps. Hence, we return 3.

 
    Constraints:

    0 <= start, goal <= 109

    """
    ### Canonical solution below ###
    xor_value = start ^ goal
    flips = 0
    while xor_value:
        flips += xor_value & 1
        xor_value >>= 1
    return flips




### Unit tests below ###
def check(candidate):
	assert candidate(1073741824, 5) == 3
	assert candidate(4, 7) == 2
	assert candidate(0, 2147483648) == 1
	assert candidate(4, 1073741824) == 2
	assert candidate(15, 14) == 1
	assert candidate(6, 1073741824) == 3
	assert candidate(1, 4) == 2
	assert candidate(128, 255) == 7
	assert candidate(0, 2147483647) == 31
	assert candidate(7, 10) == 3
	assert candidate(5, 1073741824) == 3
	assert candidate(15, 12) == 2
	assert candidate(1073741824, 4) == 2
	assert candidate(1000, 1000) == 0
	assert candidate(1, 0) == 1
	assert candidate(1073741824, 6) == 3
	assert candidate(1, 2147483647) == 30
	assert candidate(3, 2) == 1
	assert candidate(255, 128) == 7
	assert candidate(5, 3) == 2
	assert candidate(127, 255) == 1
	assert candidate(5, 4) == 1
	assert candidate(3, 6) == 2
	assert candidate(512, 1023) == 9
	assert candidate(255, 127) == 1
	assert candidate(0, 1) == 1
	assert candidate(4294967295, 1) == 31
	assert candidate(2, 3) == 1
	assert candidate(3, 1) == 1
	assert candidate(4, 1) == 2
	assert candidate(2, 4) == 2
	assert candidate(10, 9) == 2
	assert candidate(1, 1) == 0
	assert candidate(4, 4) == 0
	assert candidate(0, 0) == 0
	assert candidate(2147483648, 0) == 1
	assert candidate(255, 0) == 8
	assert candidate(0, 255) == 8
	assert candidate(2147483647, 0) == 31
	assert candidate(2, 7) == 2
	assert candidate(3, 0) == 2
	assert candidate(0, 1023) == 10
	assert candidate(1, 4294967295) == 31
	assert candidate(1023, 0) == 10
	assert candidate(10, 7) == 3
	assert candidate(1023, 512) == 9
	assert candidate(2147483647, 1) == 30
	assert candidate(3, 4) == 3
def test_check():
	check(min_bit_flips)
# Metadata Difficulty: Easy
# Metadata Topics: bit-manipulation
# Metadata Coverage: 100
