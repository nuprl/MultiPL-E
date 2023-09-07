from typing import List


def maxScore(cardPoints: List[int], k: int) -> int:
    """
    There are several cards arranged in a row, and each card has an associated number of points. The points are given in the integer array cardPoints.
    In one step, you can take one card from the beginning or from the end of the row. You have to take exactly k cards.
    Your score is the sum of the points of the cards you have taken.
    Given the integer array cardPoints and the integer k, return the maximum score you can obtain.
 
    Example 1:

    Input: cardPoints = [1,2,3,4,5,6,1], k = 3
    Output: 12
    Explanation: After the first step, your score will always be 1. However, choosing the rightmost card first will maximize your total score. The optimal strategy is to take the three cards on the right, giving a final score of 1 + 6 + 5 = 12.

    Example 2:

    Input: cardPoints = [2,2,2], k = 2
    Output: 4
    Explanation: Regardless of which two cards you take, your score will always be 4.

    Example 3:

    Input: cardPoints = [9,7,7,9,7,7,9], k = 7
    Output: 55
    Explanation: You have to take all the cards. Your score is the sum of points of all cards.

 
    Constraints:

    1 <= cardPoints.length <= 105
    1 <= cardPoints[i] <= 104
    1 <= k <= cardPoints.length

    """
    ### Canonical solution below ###
    n = len(cardPoints)
    total = sum(cardPoints[:k])

    max_score = total
    for i in range(k - 1, -1, -1):
        j = n - k + i
        total += cardPoints[j] - cardPoints[i]
        max_score = max(max_score, total)

    return max_score




### Unit tests below ###
def check(candidate):
	assert candidate([1, 79, 80, 1, 1, 1, 200, 1], 3) == 202
	assert candidate(
    [9, 7, 7, 9, 7, 7, 9], 7) == 55
	assert candidate(
    [5, 2, 1, 2, 5, 2, 1, 2, 5], 3) == 12
	assert candidate(
    [1, 79, 80, 1, 1, 1, 200, 1], 3) == 202
	assert candidate(
    [1, 2, 3, 4, 5, 6, 1], 7) == 22
	assert candidate([1, 2, 3, 4, 5, 6, 1], 6) == 21
	assert candidate([1, 2, 3, 4, 5, 6, 1], 3) == 12
	assert candidate([1, 2, 3, 4, 5, 6, 1], 7) == 22
	assert candidate([96, 90, 41, 82, 39, 74, 64, 50, 30], 8) == 536
	assert candidate(
    [2, 2, 2], 2) == 4
	assert candidate([2, 2, 2], 2) == 4
	assert candidate(
    [1, 2, 3, 4, 5, 6, 1], 6) == 21
	assert candidate([5, 2, 1, 2, 5, 2, 1, 2, 5], 3) == 12
	assert candidate([1], 1) == 1
	assert candidate(
    [1, 2, 3, 4, 5, 6, 1], 0) == 0
	assert candidate([1, 2, 3, 4, 5, 6, 1], 0) == 0
def test_check():
	check(maxScore)
# Metadata Difficulty: Medium
# Metadata Topics: array,sliding-window,prefix-sum
# Metadata Coverage: 100
