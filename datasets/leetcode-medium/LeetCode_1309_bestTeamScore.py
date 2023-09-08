from typing import List


def bestTeamScore(scores: List[int], ages: List[int]) -> int:
    """
    You are the manager of a basketball team. For the upcoming tournament, you want to choose the team with the highest overall score. The score of the team is the sum of scores of all the players in the team.
    However, the basketball team is not allowed to have conflicts. A conflict exists if a younger player has a strictly higher score than an older player. A conflict does not occur between players of the same age.
    Given two lists, scores and ages, where each scores[i] and ages[i] represents the score and age of the ith player, respectively, return the highest overall score of all possible basketball teams.
 
    Example 1:

    Input: scores = [1,3,5,10,15], ages = [1,2,3,4,5]
    Output: 34
    Explanation: You can choose all the players.

    Example 2:

    Input: scores = [4,5,6,5], ages = [2,1,2,1]
    Output: 16
    Explanation: It is best to choose the last 3 players. Notice that you are allowed to choose multiple people of the same age.

    Example 3:

    Input: scores = [1,2,3,5], ages = [8,9,10,1]
    Output: 6
    Explanation: It is best to choose the first 3 players. 

 
    Constraints:

    1 <= scores.length, ages.length <= 1000
    scores.length == ages.length
    1 <= scores[i] <= 106
    1 <= ages[i] <= 1000

    """
    ### Canonical solution below ###
    players = sorted(zip(ages, scores))
    n = len(players)
    dp = [0] * n
    best_score = 0

    for i in range(n):
        dp[i] = players[i][1]
        for j in range(i):
            if players[i][1] >= players[j][1]:
                dp[i] = max(dp[i], dp[j] + players[i][1])
        best_score = max(best_score, dp[i])

    return best_score




### Unit tests below ###
def check(candidate):
	assert candidate([100,200,300,200,100], [1,2,3,4,5]) == 600
	assert candidate(
    [1, 2, 3, 5], [8, 9, 10, 1]) == 6, "This is the second failed test"
	assert candidate(
    [1, 3, 5, 10, 15], [1, 2, 3, 4, 5]) == 34, "This is the third failed test"
	assert candidate([10,20,30,20,10], [1,2,3,4,5]) == 60
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [5, 4, 3, 2, 1, 1, 2, 3, 4, 5]) == 0
	assert candidate([1, 2, 3], [1, 1, 1]) == 6
	assert candidate([1,2,3,4,5,6], [1,2,3,4,5,6]) == 21
	assert candidate([1,2,3,4,5], [1,2,3,4,5]) == 15
	assert candidate(
    [4,5,6,5],
    [2,1,2,1]) == 16
	assert candidate(
    [4, 5, 6, 5], [2, 1, 2, 1]) == 16, "This is the first failed test"
	assert candidate([1,2,3,4,5], [5,5,5,5,5]) == 15
	assert candidate([3, 2, 3, 1, 1], [4, 4, 3, 3, 2]) == 8
	assert candidate([1,2,3,5], [8,9,10,1]) == 6
def test_check():
	check(bestTeamScore)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,sorting
# Metadata Coverage: 100
