def count_prime_set_bits(left: int, right: int) -> int:
    """
    Given two integers left and right, return the count of numbers in the inclusive range [left, right] having a prime number of set bits in their binary representation.
    Recall that the number of set bits an integer has is the number of 1's present when written in binary.

    For example, 21 written in binary is 10101, which has 3 set bits.

 
    Example 1:

    Input: left = 6, right = 10
    Output: 4
    Explanation:
    6  -> 110 (2 set bits, 2 is prime)
    7  -> 111 (3 set bits, 3 is prime)
    8  -> 1000 (1 set bit, 1 is not prime)
    9  -> 1001 (2 set bits, 2 is prime)
    10 -> 1010 (2 set bits, 2 is prime)
    4 numbers have a prime number of set bits.

    Example 2:

    Input: left = 10, right = 15
    Output: 5
    Explanation:
    10 -> 1010 (2 set bits, 2 is prime)
    11 -> 1011 (3 set bits, 3 is prime)
    12 -> 1100 (2 set bits, 2 is prime)
    13 -> 1101 (3 set bits, 3 is prime)
    14 -> 1110 (3 set bits, 3 is prime)
    15 -> 1111 (4 set bits, 4 is not prime)
    5 numbers have a prime number of set bits.

 
    Constraints:

    1 <= left <= right <= 106
    0 <= right - left <= 104

    """
    ### Canonical solution below ###
    def is_prime(n: int) -> bool:
        if n <= 1:
            return False
        for i in range(2, int(n**0.5) + 1):
            if n % i == 0:
                return False
        return True
    count = 0
    for i in range(left, right + 1):
        bits = bin(i).count('1')
        if is_prime(bits):
            count += 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate(30000, 20000) == 0
	assert candidate(10**4, 10**4 + 1) == 1
	assert candidate(100000000, 100000000) == 0
	assert candidate(25, 25) == 1
	assert candidate(2, 3) == 1
	assert candidate(50000000, 50000001) == 1
	assert candidate(0, 1) == 0
	assert candidate(1, 1) == 0
	assert candidate(10, 15) == 5
	assert candidate(100000, 100000) == 0
	assert candidate(842, 888) == 23
	assert candidate(567, 607) == 21
	assert candidate(6, 10) == 4
	assert candidate(1, 5) == 2
	assert candidate(0, 0) == 0
	assert candidate(10**4, 10**4 + 10) == 6
	assert candidate(8, 9) == 1
def test_check():
	check(count_prime_set_bits)
# Metadata Difficulty: Easy
# Metadata Topics: math,bit-manipulation
# Metadata Coverage: 100
