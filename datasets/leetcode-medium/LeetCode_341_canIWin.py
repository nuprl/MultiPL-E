def canIWin(maxChoosableInteger: int, desiredTotal: int) -> bool:
    """
    In the "100 game" two players take turns adding, to a running total, any integer from 1 to 10. The player who first causes the running total to reach or exceed 100 wins.
    What if we change the game so that players cannot re-use integers?
    For example, two players might take turns drawing from a common pool of numbers from 1 to 15 without replacement until they reach a total >= 100.
    Given two integers maxChoosableInteger and desiredTotal, return true if the first player to move can force a win, otherwise, return false. Assume both players play optimally.
 
    Example 1:

    Input: maxChoosableInteger = 10, desiredTotal = 11
    Output: false
    Explanation:
    No matter which integer the first player choose, the first player will lose.
    The first player can choose an integer from 1 up to 10.
    If the first player choose 1, the second player can only choose integers from 2 up to 10.
    The second player will win by choosing 10 and get a total = 11, which is >= desiredTotal.
    Same with other integers chosen by the first player, the second player will always win.

    Example 2:

    Input: maxChoosableInteger = 10, desiredTotal = 0
    Output: true

    Example 3:

    Input: maxChoosableInteger = 10, desiredTotal = 1
    Output: true

 
    Constraints:

    1 <= maxChoosableInteger <= 20
    0 <= desiredTotal <= 300

    """
    ### Canonical solution below ###
    if maxChoosableInteger >= desiredTotal:
        return True
    if (maxChoosableInteger * (maxChoosableInteger + 1)) // 2 < desiredTotal:
        return False

    memo = {}

    def canWin(state):
        if state in memo:
            return memo[state]
        for i in range(1, maxChoosableInteger + 1):
            bitCheck = 1 << i
            if (state & bitCheck) == 0:
                if not canWin(state | bitCheck):
                    memo[state] = True
                    return True

        memo[state] = False
        return False

    return canWin(0)




### Unit tests below ###
def check(candidate):
	assert candidate(10, 14) == False
	assert candidate(10, 1) == True
	assert candidate(20, 211) == False
	assert candidate(1, 3) == False
	assert candidate(10, 20) == False
	assert candidate(20, 195) == False
	assert candidate(20, 132) == False
	assert candidate(10, 11) == False
	assert candidate(20, 201) == False
	assert candidate(20, 133) == False
	assert candidate(10, 35) == False
	assert candidate(15, 50) == True
	assert candidate(20, 209) == False
	assert candidate(1, 1) == True
	assert candidate(1, 2) == False
	assert candidate(10, 22) == False
	assert candidate(5, 5) == True
	assert candidate(20, 200) == False
	assert candidate(10, 98) == False
	assert candidate(10, 55) == False
	assert candidate(1, 4) == False
	assert candidate(20, 214) == False
	assert candidate(10, 40) == False
	assert candidate(15, 13) == True
	assert candidate(20, 100) == False
	assert candidate(20, 134) == False
	assert candidate(10, 92) == False
	assert candidate(10, 43) == False
	assert candidate(20, 202) == False
	assert candidate(10, 196) == False
	assert candidate(20, 103) == False
	assert candidate(10, 41) == False
	assert candidate(20, 216) == False
	assert candidate(10, 15) == False
	assert candidate(10, 47) == False
	assert candidate(10, 56) == False
	assert candidate(10, 54) == False
	assert candidate(20, 206) == False
	assert candidate(1, 10) == False
	assert candidate(20, 207) == False
	assert candidate(4, 30) == False
	assert candidate(10, 46) == False
	assert candidate(10, 81) == False
	assert candidate(10, 42) == False
	assert candidate(20, 130) == False
	assert candidate(10, 45) == False
	assert candidate(20, 10) == True
	assert candidate(10, 10) == True
	assert candidate(2, 21) == False
	assert candidate(10, 23) == False
	assert candidate(10, 53) == False
	assert candidate(10, 30) == False
	assert candidate(10, 50) == False
	assert candidate(1, 100) == False
	assert candidate(2, 7) == False
	assert candidate(10, 0) == True
	assert candidate(2, 2) == True
	assert candidate(10, 25) == False
	assert candidate(20, 210) == False
	assert candidate(20, 205) == False
	assert candidate(20, 204) == False
	assert candidate(20, 122) == False
	assert candidate(10, 33) == False
	assert candidate(20, 213) == False
	assert candidate(20, 131) == False
	assert candidate(5, 21) == False
	assert candidate(2, 16) == False
	assert candidate(20, 300) == False
	assert candidate(10, 18) == False
	assert candidate(20, 203) == False
	assert candidate(5, 10) == True
	assert candidate(10, 32) == False
	assert candidate(10, 34) == False
	assert candidate(20, 215) == False
	assert candidate(20, 212) == False
	assert candidate(20, 208) == False
def test_check():
	check(canIWin)
# Metadata Difficulty: Medium
# Metadata Topics: math,dynamic-programming,bit-manipulation,memoization,game-theory,bitmask
# Metadata Coverage: 100
