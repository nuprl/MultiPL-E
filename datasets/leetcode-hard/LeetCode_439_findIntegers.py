def findIntegers(n: int) -> int:
    """
    Given a positive integer n, return the number of the integers in the range [0, n] whose binary representations do not contain consecutive ones.
 
    Example 1:

    Input: n = 5
    Output: 5
    Explanation:
    Here are the non-negative integers <= 5 with their corresponding binary representations:
    0 : 0
    1 : 1
    2 : 10
    3 : 11
    4 : 100
    5 : 101
    Among them, only integer 3 disobeys the rule (two consecutive ones) and the other 5 satisfy the rule. 

    Example 2:

    Input: n = 1
    Output: 2

    Example 3:

    Input: n = 2
    Output: 3

 
    Constraints:

    1 <= n <= 109

    """
    ### Canonical solution below ###
    dp = [[0, 0] for _ in range(32)]
    dp[0][0], dp[0][1] = 1, 1

    for i in range(1, 32):
        dp[i][0] = dp[i - 1][0] + dp[i - 1][1]
        dp[i][1] = dp[i - 1][0]

    ans = 0
    prev_bit = 0
    for i in range(30, -1, -1):
        if n & (1 << i):
            ans += dp[i][0]
            if prev_bit:
                break
            prev_bit = 1
        else:
            prev_bit = 0

    return ans + 1




### Unit tests below ###
def check(candidate):
	assert candidate(7) == 6
	assert candidate(1) == 2
	assert candidate(3) == 4
	assert candidate(9) == 7
	assert candidate(5) == 5
	assert candidate(8) == 6
	assert candidate(0) == 1
	assert candidate(2) == 3
	assert candidate(20) == 12
	assert candidate(4) == 4
	assert candidate(10) == 8
def test_check():
	check(findIntegers)
# Metadata Difficulty: Hard
# Metadata Topics: dynamic-programming
# Metadata Coverage: 100
