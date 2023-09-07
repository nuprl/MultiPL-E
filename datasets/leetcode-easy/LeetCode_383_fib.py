def fib(n: int) -> int:
    """
    The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,

    F(0) = 0, F(1) = 1
    F(n) = F(n - 1) + F(n - 2), for n > 1.

    Given n, calculate F(n).
 
    Example 1:

    Input: n = 2
    Output: 1
    Explanation: F(2) = F(1) + F(0) = 1 + 0 = 1.

    Example 2:

    Input: n = 3
    Output: 2
    Explanation: F(3) = F(2) + F(1) = 1 + 1 = 2.

    Example 3:

    Input: n = 4
    Output: 3
    Explanation: F(4) = F(3) + F(2) = 2 + 1 = 3.

 
    Constraints:

    0 <= n <= 30

    """
    ### Canonical solution below ###
    if n < 2:
        return n
    a, b = 0, 1
    for _ in range(2, n + 1):
        a, b = b, a + b
    return b




### Unit tests below ###
def check(candidate):
	assert candidate(6) == 8
	assert candidate(7) == 13
	assert candidate(52) == 32951280099
	assert candidate(10) == 55
	assert candidate(28) == 317811
	assert candidate(9) == 34
	assert candidate(39) == 63245986
	assert candidate(36) == 14930352
	assert candidate(41) == 165580141
	assert candidate(0) == 0
	assert candidate(20) == 6765
	assert candidate(3) == 2
	assert candidate(47) == 2971215073
	assert candidate(11) == 89
	assert candidate(31) == 1346269
	assert candidate(34) == 5702887
	assert candidate(49) == 7778742049
	assert candidate(27) == 196418
	assert candidate(21) == 10946
	assert candidate(15) == 610
	assert candidate(17) == 1597
	assert candidate(32) == 2178309
	assert candidate(25) == 75025
	assert candidate(37) == 24157817
	assert candidate(26) == 121393
	assert candidate(35) == 9227465
	assert candidate(40) == 102334155
	assert candidate(13) == 233
	assert candidate(30) == 832040
	assert candidate(12) == 144
	assert candidate(24) == 46368
	assert candidate(44) == 701408733
	assert candidate(45) == 1134903170
	assert candidate(18) == 2584
	assert candidate(5) == 5
	assert candidate(19) == 4181
	assert candidate(23) == 28657
	assert candidate(16) == 987
	assert candidate(50) == 12586269025
	assert candidate(42) == 267914296
	assert candidate(4) == 3
	assert candidate(29) == 514229
	assert candidate(48) == 4807526976
	assert candidate(2) == 1
	assert candidate(46) == 1836311903
	assert candidate(38) == 39088169
	assert candidate(51) == 20365011074
	assert candidate(8) == 21
	assert candidate(1) == 1
	assert candidate(22) == 17711
	assert candidate(14) == 377
	assert candidate(43) == 433494437
	assert candidate(33) == 3524578
def test_check():
	check(fib)
# Metadata Difficulty: Easy
# Metadata Topics: math,dynamic-programming,recursion,memoization
# Metadata Coverage: 100
