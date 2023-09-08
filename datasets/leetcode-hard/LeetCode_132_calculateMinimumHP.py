from typing import List


def calculateMinimumHP(dungeon: List[List[int]]) -> int:
    """
    The demons had captured the princess and imprisoned her in the bottom-right corner of a dungeon. The dungeon consists of m x n rooms laid out in a 2D grid. Our valiant knight was initially positioned in the top-left room and must fight his way through dungeon to rescue the princess.
    The knight has an initial health point represented by a positive integer. If at any point his health point drops to 0 or below, he dies immediately.
    Some of the rooms are guarded by demons (represented by negative integers), so the knight loses health upon entering these rooms; other rooms are either empty (represented as 0) or contain magic orbs that increase the knight's health (represented by positive integers).
    To reach the princess as quickly as possible, the knight decides to move only rightward or downward in each step.
    Return the knight's minimum initial health so that he can rescue the princess.
    Note that any room can contain threats or power-ups, even the first room the knight enters and the bottom-right room where the princess is imprisoned.
 
    Example 1:


    Input: dungeon = [[-2,-3,3],[-5,-10,1],[10,30,-5]]
    Output: 7
    Explanation: The initial health of the knight must be at least 7 if he follows the optimal path: RIGHT-> RIGHT -> DOWN -> DOWN.

    Example 2:

    Input: dungeon = [[0]]
    Output: 1

 
    Constraints:

    m == dungeon.length
    n == dungeon[i].length
    1 <= m, n <= 200
    -1000 <= dungeon[i][j] <= 1000

    """
    ### Canonical solution below ###
    m, n = len(dungeon), len(dungeon[0])
    dp = [[0] * n for _ in range(m)]

    for i in range(m - 1, -1, -1):
        for j in range(n - 1, -1, -1):
            if i == m - 1 and j == n - 1:
                dp[i][j] = min(0, dungeon[i][j])
            elif i == m - 1:
                dp[i][j] = min(0, dp[i][j + 1] + dungeon[i][j])
            elif j == n - 1:
                dp[i][j] = min(0, dp[i + 1][j] + dungeon[i][j])
            else:
                dp[i][j] = min(0, max(dp[i + 1][j], dp[i][j + 1]) + dungeon[i][j])

    return abs(dp[0][0]) + 1




### Unit tests below ###
def check(candidate):
	assert candidate(
    [[-2, -3, 3], [-5, -10, 1], [10, 30, -5]]
) == 7
	assert candidate([[0, -3]]) == 4
	assert candidate([[0]]) == 1
	assert candidate([[0,0,0],[0,10,0],[0,0,-10]]) == 1
	assert candidate([[-2,-3,3],[-5,-10,1],[10,30,-5]]) == 7
	assert candidate([[2,1],[1,-2]]) == 1
	assert candidate([[1,-2,3],[-2,2,-2]]) == 2
	assert candidate([[1,2,1],[1,2,1],[1,2,1]]) == 1
	assert candidate([[-100]]) == 101
	assert candidate([[-1, -3], [-2, -3], [-3, -3]]) == 10
	assert candidate([[1,-2,2,-1],[6,-2,-7,5]]) == 2
	assert candidate([[100]]) == 1
def test_check():
	check(calculateMinimumHP)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming,matrix
# Metadata Coverage: 100
