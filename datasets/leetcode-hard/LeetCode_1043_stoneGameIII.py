from typing import List


def stoneGameIII(stoneValue: List[int]) -> str:
    """
    Alice and Bob continue their games with piles of stones. There are several stones arranged in a row, and each stone has an associated value which is an integer given in the array stoneValue.
    Alice and Bob take turns, with Alice starting first. On each player's turn, that player can take 1, 2, or 3 stones from the first remaining stones in the row.
    The score of each player is the sum of the values of the stones taken. The score of each player is 0 initially.
    The objective of the game is to end with the highest score, and the winner is the player with the highest score and there could be a tie. The game continues until all the stones have been taken.
    Assume Alice and Bob play optimally.
    Return "Alice" if Alice will win, "Bob" if Bob will win, or "Tie" if they will end the game with the same score.
 
    Example 1:

    Input: stoneValue = [1,2,3,7]
    Output: "Bob"
    Explanation: Alice will always lose. Her best move will be to take three piles and the score become 6. Now the score of Bob is 7 and Bob wins.

    Example 2:

    Input: stoneValue = [1,2,3,-9]
    Output: "Alice"
    Explanation: Alice must choose all the three piles at the first move to win and leave Bob with negative score.
    If Alice chooses one pile her score will be 1 and the next move Bob's score becomes 5. In the next move, Alice will take the pile with value = -9 and lose.
    If Alice chooses two piles her score will be 3 and the next move Bob's score becomes 3. In the next move, Alice will take the pile with value = -9 and also lose.
    Remember that both play optimally so here Alice will choose the scenario that makes her win.

    Example 3:

    Input: stoneValue = [1,2,3,6]
    Output: "Tie"
    Explanation: Alice cannot win this game. She can end the game in a draw if she decided to choose all the first three piles, otherwise she will lose.

 
    Constraints:

    1 <= stoneValue.length <= 5 * 104
    -1000 <= stoneValue[i] <= 1000

    """
    ### Canonical solution below ###
    n = len(stoneValue)
    dp = [float("-inf")] * (n + 1)
    dp[n] = 0

    for i in range(n - 1, -1, -1):
        curr = 0
        for j in range(3):
            if i + j < n:
                curr += stoneValue[i + j]
                dp[i] = max(dp[i], curr - dp[i + j + 1])

    return "Tie " if dp[0] == 0 else "Alice " if dp[0] > 0 else "Bob "




### Unit tests below ###
def check(candidate):
	assert candidate([-1, 2, -3, 4, -5]) == "Bob "
	assert candidate([1, 2, 3, 7]) == "Bob "
	assert candidate([1, 2, 3, 6]) == "Tie "
	assert candidate([-1, -2, -3, 7]) == "Bob "
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, -9]) == "Alice "
	assert candidate([1, 2, 3, -7]) == "Alice "
	assert candidate([1, 1, 1, 1, 1, 2]) == "Alice "
	assert candidate([-1000, -1000, -1000, -1000]) == "Tie "
	assert candidate([-9, -2, -3, 1, 2, 3, -1, 3]) == "Bob "
	assert candidate([3, 2, 1, 100, 4]) == "Bob "
	assert candidate([-5, 7, -10, 10, 3, 11]) == "Alice "
	assert candidate([8, 7, -5, -10, 6, 1, 2, 3]) == "Alice "
	assert candidate([1, 100, -99, 100, -99]) == "Alice "
	assert candidate([1, 2, 3, 4, 5, 6, 7]) == "Alice "
	assert candidate([1, 2, 3, -1]) == "Alice "
	assert candidate([2, 1, 2, 1, 3]) == "Alice "
	assert candidate([1, -2, 3, -7]) == "Alice "
	assert candidate([1, -2, -3, -4, -5]) == "Alice "
	assert candidate([1, 1, -100, 3, 3, 3, 3, 3, 3, 3]) == "Alice "
	assert candidate([1, -2, -3, -7]) == "Alice "
	assert candidate([-100, -200, -300, -1000]) == "Alice "
	assert candidate([1, 2, 100, 3, 4]) == "Alice "
	assert candidate([-1, -1, -1, -1]) == "Tie "
	assert candidate([-3, 3, 1, 2, -5, 1, -2, 3]) == "Bob "
	assert candidate([1, -1, 1, -1, 1, -1, 1]) == "Alice "
	assert candidate([1, 1, 3, -2, -3]) == "Alice "
	assert candidate([1, 2, 3, -9, -8, 7, -3, 6, 5]) == "Alice "
	assert candidate([1, 3, 3, 3, 3, 1, 1, 1]) == "Alice "
	assert candidate([1, 2, 3, -9]) == "Alice "
	assert candidate([1000, -1000, -1000, -1000]) == "Alice "
	assert candidate([-1000000000, 1, 2, 3, -7]) == "Bob "
def test_check():
	check(stoneGameIII)
# Metadata Difficulty: Hard
# Metadata Topics: array,math,dynamic-programming,game-theory
# Metadata Coverage: 100
