from typing import List


def circular_permutation(n: int, start: int) -> List[int]:
    """
    Given 2 integers n and start. Your task is return any permutation p of (0,1,2.....,2^n -1) such that :

    p[0] = start
    p[i] and p[i+1] differ by only one bit in their binary representation.
    p[0] and p[2^n -1] must also differ by only one bit in their binary representation.

 
    Example 1:

    Input: n = 2, start = 3
    Output: [3,2,0,1]
    Explanation: The binary representation of the permutation is (11,10,00,01). 
    All the adjacent element differ by one bit. Another valid permutation is [3,1,0,2]

    Example 2:

    Input: n = 3, start = 2
    Output: [2,6,7,5,4,0,1,3]
    Explanation: The binary representation of the permutation is (010,110,111,101,100,000,001,011).

 
    Constraints:

    1 <= n <= 16
    0 <= start < 2 ^ n
    """
    ### Canonical solution below ###
    result = [start ^ (i ^ (i >> 1)) for i in range(1 << n)]
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(2, 1) == [1, 0, 2, 3]
	assert candidate(3, 1) == [1, 0, 2, 3, 7, 6, 4, 5]
	assert candidate(2, 2) == [2, 3, 1, 0]
	assert candidate(3, 3) == [3, 2, 0, 1, 5, 4, 6, 7]
	assert candidate(3, 2) == [2, 3, 1, 0, 4, 5, 7, 6]
	assert candidate(4, 1) == [1, 0, 2, 3, 7, 6, 4, 5, 13, 12, 14, 15, 11, 10, 8, 9]
	assert candidate(4, 0) == [0, 1, 3, 2, 6, 7, 5, 4, 12, 13, 15, 14, 10, 11, 9, 8]
	assert candidate(4, 3) == [3, 2, 0, 1, 5, 4, 6, 7, 15, 14, 12, 13, 9, 8, 10, 11]
	assert candidate(4, 2) == [2, 3, 1, 0, 4, 5, 7, 6, 14, 15, 13, 12, 8, 9, 11, 10]
	assert candidate(1, 1) == [1, 0]
	assert candidate(2, 0) == [0, 1, 3, 2]
	assert candidate(3, 7) == [7, 6, 4, 5, 1, 0, 2, 3]
	assert candidate(3, 0) == [0, 1, 3, 2, 6, 7, 5, 4]
	assert candidate(1, 0) == [0, 1]
	assert candidate(2, 3) == [3, 2, 0, 1]
def test_check():
	check(circular_permutation)
# Metadata Difficulty: Medium
# Metadata Topics: math,backtracking,bit-manipulation
# Metadata Coverage: 100
