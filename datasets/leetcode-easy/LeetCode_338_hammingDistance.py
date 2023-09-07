def hammingDistance(x: int, y: int) -> int:
    """
    The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
    Given two integers x and y, return the Hamming distance between them.
 
    Example 1:

    Input: x = 1, y = 4
    Output: 2
    Explanation:
    1   (0 0 0 1)
    4   (0 1 0 0)
           ↑   ↑
    The above arrows point to positions where the corresponding bits are different.

    Example 2:

    Input: x = 3, y = 1
    Output: 1

 
    Constraints:

    0 <= x, y <= 231 - 1

    """
    ### Canonical solution below ###
    xorResult = x ^ y
    dist = 0
    while xorResult:
        dist += xorResult & 1
        xorResult >>= 1
    return dist




### Unit tests below ###
def check(candidate):
	assert candidate(37, 38) == 2
	assert candidate(25, 26) == 2
	assert candidate(23, 25) == 3
	assert candidate(29, 30) == 2
	assert candidate(0, 0) == 0
	assert candidate(1, 4) == 2
	assert candidate(9, 10) == 2
	assert candidate(7, 8) == 4
	assert candidate(45, 46) == 2
	assert candidate(15, 16) == 5
	assert candidate(43, 44) == 3
	assert candidate(41, 42) == 2
	assert candidate(23, 24) == 4
	assert candidate(47, 48) == 5
	assert candidate(19, 20) == 3
	assert candidate(3, 5) == 2
	assert candidate(21, 22) == 2
	assert candidate(39, 40) == 4
	assert candidate(27, 28) == 3
	assert candidate(31, 32) == 6
	assert candidate(29, 28) == 1
	assert candidate(1, 1) == 0
	assert candidate(2, 2) == 0
	assert candidate(3, 1) == 1
	assert candidate(2, 3) == 1
	assert candidate(13, 14) == 2
	assert candidate(12, 10) == 2
	assert candidate(5, 6) == 2
	assert candidate(33, 34) == 2
	assert candidate(17, 16) == 1
	assert candidate(17, 18) == 2
	assert candidate(11, 12) == 3
	assert candidate(63, 64) == 7
	assert candidate(4, 4) == 0
	assert candidate(35, 36) == 3
def test_check():
	check(hammingDistance)
# Metadata Difficulty: Easy
# Metadata Topics: bit-manipulation
# Metadata Coverage: 100
