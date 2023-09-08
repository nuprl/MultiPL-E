def nthUglyNumber(n: int) -> int:
    """
    An ugly number is a positive integer whose prime factors are limited to 2, 3, and 5.
    Given an integer n, return the nth ugly number.
 
    Example 1:

    Input: n = 10
    Output: 12
    Explanation: [1, 2, 3, 4, 5, 6, 8, 9, 10, 12] is the sequence of the first 10 ugly numbers.

    Example 2:

    Input: n = 1
    Output: 1
    Explanation: 1 has no prime factors, therefore all of its prime factors are limited to 2, 3, and 5.

 
    Constraints:

    1 <= n <= 1690

    """
    ### Canonical solution below ###
    ugly_numbers = [0] * n
    ugly_numbers[0] = 1
    i2, i3, i5 = 0, 0, 0

    for i in range(1, n):
        ugly_numbers[i] = min(ugly_numbers[i2] * 2, ugly_numbers[i3] * 3, ugly_numbers[i5] * 5)
        if ugly_numbers[i] == ugly_numbers[i2] * 2:
            i2 += 1
        if ugly_numbers[i] == ugly_numbers[i3] * 3:
            i3 += 1
        if ugly_numbers[i] == ugly_numbers[i5] * 5:
            i5 += 1

    return ugly_numbers[n - 1]




### Unit tests below ###
def check(candidate):
	assert candidate(13) == 18
	assert candidate(4) == 4
	assert candidate(8) == 9
	assert candidate(6) == 6
	assert candidate(1) == 1
	assert candidate(7) == 8
	assert candidate(12) == 16
	assert candidate(1690) == 2123366400
	assert candidate(20) == 36
	assert candidate(11) == 15
	assert candidate(9) == 10
	assert candidate(17) == 27
	assert candidate(5) == 5
	assert candidate(10) == 12
	assert candidate(500) == 937500
	assert candidate(2) == 2
	assert candidate(19) == 32
	assert candidate(16) == 25
	assert candidate(14) == 20
	assert candidate(15) == 24
	assert candidate(3) == 3
	assert candidate(18) == 30
	assert candidate(1500) == 859963392
	assert candidate(100) == 1536
	assert candidate(1000) == 51200000
def test_check():
	check(nthUglyNumber)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,math,dynamic-programming,heap-priority-queue
# Metadata Coverage: 100
