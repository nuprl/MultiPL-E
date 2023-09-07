def findNthDigit(n: int) -> int:
    """
    Given an integer n, return the nth digit of the infinite integer sequence [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, ...].
 
    Example 1:

    Input: n = 3
    Output: 3

    Example 2:

    Input: n = 11
    Output: 0
    Explanation: The 11th digit of the sequence 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, ... is a 0, which is part of the number 10.

 
    Constraints:

    1 <= n <= 231 - 1

    """
    ### Canonical solution below ###
    size = 1
    length = 9
    start = 1

    while n > length * size:
        n -= length * size
        size += 1
        length *= 10
        start *= 10

    start += (n - 1) // size
    s = str(start)
    return int(s[(n - 1) % size])




### Unit tests below ###
def check(candidate):
	assert candidate(4) == 4
	assert candidate(190) == 1
	assert candidate(7) == 7
	assert candidate(32) == 2
	assert candidate(31) == 0
	assert candidate(11) == 0
	assert candidate(9) == 9
	assert candidate(23) == 6
	assert candidate(2) == 2
	assert candidate(2001) == 3
	assert candidate(35) == 2
	assert candidate(3000) == 2
	assert candidate(99) == 4
	assert candidate(100) == 5
	assert candidate(20000) == 7
	assert candidate(15) == 2
	assert candidate(3) == 3
	assert candidate(999) == 9
	assert candidate(200) == 0
	assert candidate(30) == 2
	assert candidate(28) == 1
	assert candidate(1) == 1
	assert candidate(12) == 1
	assert candidate(500) == 0
	assert candidate(14) == 1
	assert candidate(1000000) == 1
	assert candidate(8) == 8
	assert candidate(10000) == 7
	assert candidate(10) == 1
	assert candidate(1000) == 3
	assert candidate(5) == 5
	assert candidate(19) == 4
	assert candidate(100000) == 2
	assert candidate(13) == 1
def test_check():
	check(findNthDigit)
# Metadata Difficulty: Medium
# Metadata Topics: math,binary-search
# Metadata Coverage: 100
