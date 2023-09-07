from typing import List


def grayCode(n: int) -> List[int]:
    """
    An n-bit gray code sequence is a sequence of 2n integers where:

    Every integer is in the inclusive range [0, 2n - 1],
    The first integer is 0,
    An integer appears no more than once in the sequence,
    The binary representation of every pair of adjacent integers differs by exactly one bit, and
    The binary representation of the first and last integers differs by exactly one bit.

    Given an integer n, return any valid n-bit gray code sequence.
 
    Example 1:

    Input: n = 2
    Output: [0,1,3,2]
    Explanation:
    The binary representation of [0,1,3,2] is [00,01,11,10].
    - 00 and 01 differ by one bit
    - 01 and 11 differ by one bit
    - 11 and 10 differ by one bit
    - 10 and 00 differ by one bit
    [0,2,3,1] is also a valid gray code sequence, whose binary representation is [00,10,11,01].
    - 00 and 10 differ by one bit
    - 10 and 11 differ by one bit
    - 11 and 01 differ by one bit
    - 01 and 00 differ by one bit

    Example 2:

    Input: n = 1
    Output: [0,1]

 
    Constraints:

    1 <= n <= 16

    """
    ### Canonical solution below ###
    result = []
    for i in range(1 << n):
        result.append(i ^ (i >> 1))
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(3) == [0, 1, 3, 2, 6, 7, 5, 4]
	assert candidate(6) == [0, 1, 3, 2, 6, 7, 5, 4, 12, 13, 15, 14, 10, 11, 9, 8, 24, 25, 27, 26, 30, 31, 29, 28, 20, 21, 23, 22, 18, 19, 17, 16, 48, 49, 51, 50, 54, 55, 53, 52, 60, 61, 63, 62, 58, 59, 57, 56, 40, 41, 43, 42, 46, 47, 45, 44, 36, 37, 39, 38, 34, 35, 33, 32]
	assert candidate(0) == [0]
	assert candidate(4) == [0, 1, 3, 2, 6, 7, 5, 4, 12, 13, 15, 14, 10, 11, 9, 8]
	assert candidate(2) == [0, 1, 3, 2]
	assert candidate(5) == [0, 1, 3, 2, 6, 7, 5, 4, 12, 13, 15, 14, 10, 11, 9, 8, 24, 25, 27, 26, 30, 31, 29, 28, 20, 21, 23, 22, 18, 19, 17, 16]
	assert candidate(1) == [0, 1]
def test_check():
	check(grayCode)
# Metadata Difficulty: Medium
# Metadata Topics: math,backtracking,bit-manipulation
# Metadata Coverage: 100
