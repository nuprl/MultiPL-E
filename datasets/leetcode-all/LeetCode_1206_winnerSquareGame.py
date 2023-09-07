def winnerSquareGame(n: int) -> bool:
    """
    Alice and Bob take turns playing a game, with Alice starting first.
    Initially, there are n stones in a pile. On each player's turn, that player makes a move consisting of removing any non-zero square number of stones in the pile.
    Also, if a player cannot make a move, he/she loses the game.
    Given a positive integer n, return true if and only if Alice wins the game otherwise return false, assuming both players play optimally.
 
    Example 1:

    Input: n = 1
    Output: true
    Explanation: Alice can remove 1 stone winning the game because Bob doesn't have any moves.
    Example 2:

    Input: n = 2
    Output: false
    Explanation: Alice can only remove 1 stone, after that Bob removes the last one winning the game (2 -> 1 -> 0).

    Example 3:

    Input: n = 4
    Output: true
    Explanation: n is already a perfect square, Alice can win with one move, removing 4 stones (4 -> 0).

 
    Constraints:

    1 <= n <= 105

    """
    ### Canonical solution below ###
    dp = [False] * (n + 1)
    for i in range(1, n + 1):
        j = 1
        while j * j <= i:
            if not dp[i - j * j]:
                dp[i] = True
                break
            j += 1
    return dp[n]




### Unit tests below ###
def check(candidate):
	assert candidate(14) == True
	assert candidate(19) == True
	assert candidate(9999) == True
	assert candidate(7684) == True
	assert candidate(28) == True
	assert candidate(31) == True
	assert candidate(7) == False
	assert candidate(29) == True
	assert candidate(16) == True
	assert candidate(9) == True
	assert candidate(27) == True
	assert candidate(160) == True
	assert candidate(4) == True
	assert candidate(63) == True
	assert candidate(22) == False
	assert candidate(13) == True
	assert candidate(9997) == True
	assert candidate(1000) == True
	assert candidate(1) == True
	assert candidate(8) == True
	assert candidate(81) == True
	assert candidate(21) == True
	assert candidate(11) == True
	assert candidate(18) == True
	assert candidate(2685) == False
	assert candidate(2469) == True
	assert candidate(15) == False
	assert candidate(30) == True
	assert candidate(32) == True
	assert candidate(23) == True
	assert candidate(33) == True
	assert candidate(0) == False
	assert candidate(5) == False
	assert candidate(6) == True
	assert candidate(85868) == True
	assert candidate(24) == True
	assert candidate(17) == False
	assert candidate(3) == True
	assert candidate(2) == False
	assert candidate(26) == True
	assert candidate(25) == True
	assert candidate(3456) == True
	assert candidate(8876) == True
def test_check():
	check(winnerSquareGame)
# Metadata Difficulty: Hard
# Metadata Topics: math,dynamic-programming,game-theory
# Metadata Coverage: 100
