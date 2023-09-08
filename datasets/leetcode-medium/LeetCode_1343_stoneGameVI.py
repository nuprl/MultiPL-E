from typing import List


def stoneGameVI(aliceValues: List[int], bobValues: List[int]) -> int:
    """
    Alice and Bob take turns playing a game, with Alice starting first.
    There are n stones in a pile. On each player's turn, they can remove a stone from the pile and receive points based on the stone's value. Alice and Bob may value the stones differently.
    You are given two integer arrays of length n, aliceValues and bobValues. Each aliceValues[i] and bobValues[i] represents how Alice and Bob, respectively, value the ith stone.
    The winner is the person with the most points after all the stones are chosen. If both players have the same amount of points, the game results in a draw. Both players will play optimally. Both players know the other's values.
    Determine the result of the game, and:

    If Alice wins, return 1.
    If Bob wins, return -1.
    If the game results in a draw, return 0.

 
    Example 1:

    Input: aliceValues = [1,3], bobValues = [2,1]
    Output: 1
    Explanation:
    If Alice takes stone 1 (0-indexed) first, Alice will receive 3 points.
    Bob can only choose stone 0, and will only receive 2 points.
    Alice wins.

    Example 2:

    Input: aliceValues = [1,2], bobValues = [3,1]
    Output: 0
    Explanation:
    If Alice takes stone 0, and Bob takes stone 1, they will both have 1 point.
    Draw.

    Example 3:

    Input: aliceValues = [2,4,3], bobValues = [1,6,7]
    Output: -1
    Explanation:
    Regardless of how Alice plays, Bob will be able to have more points than Alice.
    For example, if Alice takes stone 1, Bob can take stone 2, and Alice takes stone 0, Alice will have 6 points to Bob's 7.
    Bob wins.

 
    Constraints:

    n == aliceValues.length == bobValues.length
    1 <= n <= 105
    1 <= aliceValues[i], bobValues[i] <= 100

    """
    ### Canonical solution below ###
    n = len(aliceValues)
    sums = sorted([(aliceValues[i] + bobValues[i], i) for i in range(n)], reverse=True)

    aliceScore = sum(aliceValues[i] for _, i in sums[::2])
    bobScore = sum(bobValues[i] for _, i in sums[1::2])

    return 0 if aliceScore == bobScore else 1 if aliceScore > bobScore else -1




### Unit tests below ###
def check(candidate):
	assert candidate([2,2,2,2,2], [1,1,1,1,1]) == 1
	assert candidate([1,3,2,4,5], [2,4,3,1,5]) == 1
	assert candidate([1,3,2,4,5,10], [2,4,3,1,5,20]) == 1
	assert candidate([2,4,6,8,10], [1,3,5,7,9]) == 1
	assert candidate([2,2,2,2,2,2,2,2,2,2], [1,1,1,1,1,1,1,1,1,1]) == 1
	assert candidate([1,1,1,1,1], [2,2,2,2,2]) == -1
	assert candidate([2,4,6,8,10,2,4,6,8,10], [1,3,5,7,9,1,3,5,7,9]) == 1
	assert candidate([1,2,3], [1,2,5]) == 1
	assert candidate([1,1,1,1,1,1,1,1,1,1], [2,2,2,2,2,2,2,2,2,2]) == -1
	assert candidate([1,2,3], [1,2,4]) == 1
	assert candidate(
    [10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    [9,8,7,6,5,4,3,2,1,10,11,12,13,14,15,16,17,18,19,20,21]) == 1
def test_check():
	check(stoneGameVI)
# Metadata Difficulty: Medium
# Metadata Topics: array,math,greedy,sorting,heap-priority-queue,game-theory
# Metadata Coverage: 100
