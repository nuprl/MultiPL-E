def countPrimes(n: int) -> int:
    """
    Given an integer n, return the number of prime numbers that are strictly less than n.
 
    Example 1:

    Input: n = 10
    Output: 4
    Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.

    Example 2:

    Input: n = 0
    Output: 0

    Example 3:

    Input: n = 1
    Output: 0

 
    Constraints:

    0 <= n <= 5 * 106

    """
    ### Canonical solution below ###
    if n <= 2:
        return 0
    is_prime = [True] * n
    is_prime[0] = is_prime[1] = False
    for i in range(2, int(n**0.5) + 1):
        if is_prime[i]:
            for j in range(i * i, n, i):
                is_prime[j] = False
    return sum(is_prime)




### Unit tests below ###
def check(candidate):
	assert candidate(10000) == 1229
	assert candidate(70) == 19
	assert candidate(30) == 10
	assert candidate(999999) == 78498
	assert candidate(0) == 0
	assert candidate(700) == 125
	assert candidate(400) == 78
	assert candidate(7) == 3
	assert candidate(1) == 0
	assert candidate(6) == 3
	assert candidate(500000) == 41538
	assert candidate(5000) == 669
	assert candidate(90) == 24
	assert candidate(8) == 4
	assert candidate(4) == 2
	assert candidate(10) == 4
	assert candidate(5) == 2
	assert candidate(9) == 4
	assert candidate(80) == 22
	assert candidate(300) == 62
	assert candidate(50) == 15
	assert candidate(5000000) == 348513
	assert candidate(1000000) == 78498
	assert candidate(2) == 0
	assert candidate(40) == 12
	assert candidate(10000000) == 664579
	assert candidate(500) == 95
	assert candidate(100000) == 9592
	assert candidate(100) == 25
	assert candidate(20) == 8
	assert candidate(600) == 109
	assert candidate(60) == 17
	assert candidate(1000) == 168
	assert candidate(200) == 46
	assert candidate(50000) == 5133
	assert candidate(3) == 1
def test_check():
	check(countPrimes)
# Metadata Difficulty: Medium
# Metadata Topics: array,math,enumeration,number-theory
# Metadata Coverage: 100
