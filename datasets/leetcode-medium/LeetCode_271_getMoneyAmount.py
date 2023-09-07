def getMoneyAmount(n: int) -> int:
    """
    We are playing the Guessing Game. The game will work as follows:

    I pick a number between 1 and n.
    You guess a number.
    If you guess the right number, you win the game.
    If you guess the wrong number, then I will tell you whether the number I picked is higher or lower, and you will continue guessing.
    Every time you guess a wrong number x, you will pay x dollars. If you run out of money, you lose the game.

    Given a particular n, return the minimum amount of money you need to guarantee a win regardless of what number I pick.
 
    Example 1:


    Input: n = 10
    Output: 16
    Explanation: The winning strategy is as follows:
    - The range is [1,10]. Guess 7.
            - If this is my number, your total is $0. Otherwise, you pay $7.
            - If my number is higher, the range is [8,10]. Guess 9.
                    - If this is my number, your total is $7. Otherwise, you pay $9.
                    - If my number is higher, it must be 10. Guess 10. Your total is $7 + $9 = $16.
                    - If my number is lower, it must be 8. Guess 8. Your total is $7 + $9 = $16.
            - If my number is lower, the range is [1,6]. Guess 3.
                    - If this is my number, your total is $7. Otherwise, you pay $3.
                    - If my number is higher, the range is [4,6]. Guess 5.
                            - If this is my number, your total is $7 + $3 = $10. Otherwise, you pay $5.
                            - If my number is higher, it must be 6. Guess 6. Your total is $7 + $3 + $5 = $15.
                            - If my number is lower, it must be 4. Guess 4. Your total is $7 + $3 + $5 = $15.
                    - If my number is lower, the range is [1,2]. Guess 1.
                            - If this is my number, your total is $7 + $3 = $10. Otherwise, you pay $1.
                            - If my number is higher, it must be 2. Guess 2. Your total is $7 + $3 + $1 = $11.
    The worst case in all these scenarios is that you pay $16. Hence, you only need $16 to guarantee a win.

    Example 2:

    Input: n = 1
    Output: 0
    Explanation: There is only one possible number, so you can guess 1 and not have to pay anything.

    Example 3:

    Input: n = 2
    Output: 1
    Explanation: There are two possible numbers, 1 and 2.
    - Guess 1.
            - If this is my number, your total is $0. Otherwise, you pay $1.
            - If my number is higher, it must be 2. Guess 2. Your total is $1.
    The worst case is that you pay $1.

 
    Constraints:

    1 <= n <= 200

    """
    ### Canonical solution below ###
    dp = [[0] * (n + 1) for _ in range(n + 1)]
    for i in range(n - 1, 0, -1):
        for j in range(i + 1, n + 1):
            min_cost = float("inf")
            for k in range(i, j):
                cost = k + max(dp[i][k - 1], dp[k + 1][j])
                min_cost = min(min_cost, cost)
            dp[i][j] = min_cost
    return dp[1][n]




### Unit tests below ###
def check(candidate):
	assert candidate(1) == 0
	assert candidate(10) == 16
	assert candidate(9) == 14
	assert candidate(13) == 24
	assert candidate(5) == 6
	assert candidate(19) == 46
	assert candidate(15) == 30
	assert candidate(11) == 18
	assert candidate(100) == 400
	assert candidate(4) == 4
	assert candidate(14) == 27
	assert candidate(16) == 34
	assert candidate(2) == 1
	assert candidate(12) == 21
	assert candidate(18) == 42
	assert candidate(7) == 10
	assert candidate(3) == 2
	assert candidate(8) == 12
	assert candidate(6) == 8
	assert candidate(17) == 38
	assert candidate(20) == 49
def test_check():
	check(getMoneyAmount)
# Metadata Difficulty: Medium
# Metadata Topics: math,dynamic-programming,game-theory
# Metadata Coverage: 100
