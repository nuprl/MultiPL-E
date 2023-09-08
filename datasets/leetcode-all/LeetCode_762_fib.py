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
    if n <= 1:
        return n
    a, b = 0, 1
    for _ in range(2, n + 1):
        a, b = b, a + b
    return b




### Unit tests below ###
def check(candidate):
	assert candidate(6) == 8
	assert candidate(7) == 13
	assert candidate(10) == 55
	assert candidate(28) == 317811
	assert candidate(9) == 34
	assert candidate(0) == 0
	assert candidate(20) == 6765
	assert candidate(3) == 2
	assert candidate(80) == 23416728348467685
	assert candidate(150) == 9969216677189303386214405760200
	assert candidate(180) == 18547707689471986212190138521399707760
	assert candidate(21) == 10946
	assert candidate(15) == 610
	assert candidate(90) == 2880067194370816120
	assert candidate(25) == 75025
	assert candidate(60) == 1548008755920
	assert candidate(190) == 2281217241465037496128651402858212007295
	assert candidate(40) == 102334155
	assert candidate(35) == 9227465
	assert candidate(13) == 233
	assert candidate(30) == 832040
	assert candidate(12) == 144
	assert candidate(100) == 354224848179261915075
	assert candidate(45) == 1134903170
	assert candidate(160) == 1226132595394188293000174702095995
	assert candidate(140) == 81055900096023504197206408605
	assert candidate(5) == 5
	assert candidate(19) == 4181
	assert candidate(16) == 987
	assert candidate(50) == 12586269025
	assert candidate(120) == 5358359254990966640871840
	assert candidate(4) == 3
	assert candidate(29) == 514229
	assert candidate(2) == 1
	assert candidate(70) == 190392490709135
	assert candidate(130) == 659034621587630041982498215
	assert candidate(8) == 21
	assert candidate(1) == 1
	assert candidate(200) == 280571172992510140037611932413038677189525
	assert candidate(110) == 43566776258854844738105
	assert candidate(11) == 89
	assert candidate(170) == 150804340016807970735635273952047185
def test_check():
	check(fib)
# Metadata Difficulty: Easy
# Metadata Topics: math,dynamic-programming,recursion,memoization
# Metadata Coverage: 100
