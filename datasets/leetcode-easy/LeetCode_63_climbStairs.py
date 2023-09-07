def climbStairs(n: int) -> int:
    """
    You are climbing a staircase. It takes n steps to reach the top.
    Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
 
    Example 1:

    Input: n = 2
    Output: 2
    Explanation: There are two ways to climb to the top.
    1. 1 step + 1 step
    2. 2 steps

    Example 2:

    Input: n = 3
    Output: 3
    Explanation: There are three ways to climb to the top.
    1. 1 step + 1 step + 1 step
    2. 1 step + 2 steps
    3. 2 steps + 1 step

 
    Constraints:

    1 <= n <= 45

    """
    ### Canonical solution below ###
    if n <= 2:
        return n
    a, b = 1, 2
    for _ in range(3, n+1):
        a, b = b, a + b
    return b




### Unit tests below ###
def check(candidate):
	assert candidate(8) == 34
	assert candidate(6) == 13
	assert candidate(32) == 3524578
	assert candidate(43) == 701408733
	assert candidate(4) == 5
	assert candidate(27) == 317811
	assert candidate(45) == 1836311903
	assert candidate(3) == 3
	assert candidate(40) == 165580141
	assert candidate(34) == 9227465
	assert candidate(17) == 2584
	assert candidate(9) == 55
	assert candidate(19) == 6765
	assert candidate(37) == 39088169
	assert candidate(5) == 8
	assert candidate(42) == 433494437
	assert candidate(28) == 514229
	assert candidate(18) == 4181
	assert candidate(31) == 2178309
	assert candidate(2) == 2
	assert candidate(14) == 610
	assert candidate(11) == 144
	assert candidate(39) == 102334155
	assert candidate(13) == 377
	assert candidate(22) == 28657
	assert candidate(7) == 21
	assert candidate(30) == 1346269
	assert candidate(0) == 0
	assert candidate(41) == 267914296
	assert candidate(15) == 987
	assert candidate(38) == 63245986
	assert candidate(21) == 17711
	assert candidate(12) == 233
	assert candidate(1) == 1
	assert candidate(26) == 196418
	assert candidate(20) == 10946
	assert candidate(16) == 1597
	assert candidate(29) == 832040
	assert candidate(36) == 24157817
	assert candidate(25) == 121393
	assert candidate(35) == 14930352
	assert candidate(24) == 75025
	assert candidate(23) == 46368
	assert candidate(33) == 5702887
	assert candidate(10) == 89
def test_check():
	check(climbStairs)
# Metadata Difficulty: Easy
# Metadata Topics: math,dynamic-programming,memoization
# Metadata Coverage: 100
