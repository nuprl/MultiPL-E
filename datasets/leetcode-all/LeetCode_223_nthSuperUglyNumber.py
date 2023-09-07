from typing import List


def nthSuperUglyNumber(n: int, primes: List[int]) -> int:
    """
    A super ugly number is a positive integer whose prime factors are in the array primes.
    Given an integer n and an array of integers primes, return the nth super ugly number.
    The nth super ugly number is guaranteed to fit in a 32-bit signed integer.
 
    Example 1:

    Input: n = 12, primes = [2,7,13,19]
    Output: 32
    Explanation: [1,2,4,7,8,13,14,16,19,26,28,32] is the sequence of the first 12 super ugly numbers given primes = [2,7,13,19].

    Example 2:

    Input: n = 1, primes = [2,3,5]
    Output: 1
    Explanation: 1 has no prime factors, therefore all of its prime factors are in the array primes = [2,3,5].

 
    Constraints:

    1 <= n <= 105
    1 <= primes.length <= 100
    2 <= primes[i] <= 1000
    primes[i] is guaranteed to be a prime number.
    All the values of primes are unique and sorted in ascending order.

    """
    ### Canonical solution below ###
    ugly = [0] * n
    ugly[0] = 1
    indices = [0] * len(primes)

    for i in range(1, n):
        min_val = float("inf")

        for j in range(len(primes)):
            min_val = min(min_val, ugly[indices[j]] * primes[j])

        ugly[i] = min_val

        for j in range(len(primes)):
            if ugly[i] == ugly[indices[j]] * primes[j]:
                indices[j] += 1

    return ugly[-1]




### Unit tests below ###
def check(candidate):
	assert candidate(37, [2,3,5]) == 125
	assert candidate(1, [2,3,5]) == 1
	assert candidate(12, [2,7,13,19]) == 32
	assert candidate(10, [2,3,5]) == 12
	assert candidate(17, [2,3,5]) == 27
	assert candidate(7, [2,3,5]) == 8
	assert candidate(1, [2]) == 1
	assert candidate(50, [2,3,5]) == 243
	assert candidate(5, [2,3,5]) == 5
	assert candidate(15, [2,3,5]) == 24
	assert candidate(1000, [2,3,5]) == 51200000
	assert candidate(100, [2,3,5]) == 1536
	assert candidate(30, [2,3,5]) == 80
	assert candidate(23, [2,3,5]) == 48
	assert candidate(1, [2,3]) == 1
def test_check():
	check(nthSuperUglyNumber)
# Metadata Difficulty: Medium
# Metadata Topics: array,math,dynamic-programming
# Metadata Coverage: 100
