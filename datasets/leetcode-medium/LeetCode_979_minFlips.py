def minFlips(a: int, b: int, c: int) -> int:
    """
    Given 3 positives numbers a, b and c. Return the minimum flips required in some bits of a and b to make ( a OR b == c ). (bitwise OR operation).
    Flip operation consists of change any single bit 1 to 0 or change the bit 0 to 1 in their binary representation.
 
    Example 1:


    Input: a = 2, b = 6, c = 5
    Output: 3
    Explanation: After flips a = 1 , b = 4 , c = 5 such that (a OR b == c)
    Example 2:

    Input: a = 4, b = 2, c = 7
    Output: 1

    Example 3:

    Input: a = 1, b = 2, c = 3
    Output: 0

 
    Constraints:

    1 <= a <= 10^9
    1 <= b <= 10^9
    1 <= c <= 10^9
    """
    ### Canonical solution below ###
    count = 0
    for i in range(32):
        bitA = (a >> i) & 1
        bitB = (b >> i) & 1
        bitC = (c >> i) & 1
        if bitC == 0:
            count += bitA + bitB
        else:
            count += 1 - (bitA | bitB)
    return count




### Unit tests below ###
def check(candidate):
	assert candidate(1, 0, 1) == 0
	assert candidate(123456789, 123456789, 123456789) == 0
	assert candidate(20, 20, 21) == 1
	assert candidate(4567890123, 4567890123, 4567890123) == 0
	assert candidate(0, 1, 0) == 1
	assert candidate(13, 52, 16) == 5
	assert candidate(20, 21, 22) == 2
	assert candidate(1, 2, 3) == 0
	assert candidate(0, 0, 1) == 1
	assert candidate(7, 8, 15) == 0
	assert candidate(0, 1, 1) == 0
	assert candidate(1, 0, 0) == 1
	assert candidate(4, 2, 7) == 1
	assert candidate(1000000000, 1000000000, 1000000000) == 0
	assert candidate(2, 6, 5) == 3
	assert candidate(2, 6, 7) == 1
	assert candidate(1, 3, 3) == 0
	assert candidate(1, 1, 1) == 0
	assert candidate(4, 2, 5) == 2
	assert candidate(999999999, 999999999, 999999999) == 0
	assert candidate(3, 0, 1) == 1
	assert candidate(0, 0, 0) == 0
	assert candidate(1234567890, 987654321, 555555555) == 16
	assert candidate(2, 1, 1) == 1
	assert candidate(100000000, 100000000, 100000000) == 0
def test_check():
	check(minFlips)
# Metadata Difficulty: Medium
# Metadata Topics: bit-manipulation
# Metadata Coverage: 100
