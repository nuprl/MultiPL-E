from typing import Union


def new21Game(n: int, k: int, maxPts: int) -> float:
    """
    Alice plays the following game, loosely based on the card game "21".
    Alice starts with 0 points and draws numbers while she has less than k points. During each draw, she gains an integer number of points randomly from the range [1, maxPts], where maxPts is an integer. Each draw is independent and the outcomes have equal probabilities.
    Alice stops drawing numbers when she gets k or more points.
    Return the probability that Alice has n or fewer points.
    Answers within 10-5 of the actual answer are considered accepted.
 
    Example 1:

    Input: n = 10, k = 1, maxPts = 10
    Output: 1.00000
    Explanation: Alice gets a single card, then stops.

    Example 2:

    Input: n = 6, k = 1, maxPts = 10
    Output: 0.60000
    Explanation: Alice gets a single card, then stops.
    In 6 out of 10 possibilities, she is at or below 6 points.

    Example 3:

    Input: n = 21, k = 17, maxPts = 10
    Output: 0.73278

 
    Constraints:

    0 <= k <= n <= 104
    1 <= maxPts <= 104

    """
    ### Canonical solution below ###
    if k == 0 or n >= k + maxPts:
        return 1

    dp = [0] * (n + 1)
    dp[0] = 1
    s, ans = 1, 0

    for i in range(1, n + 1):
        dp[i] = s / maxPts
        if i < k:
            s += dp[i]
        else:
            ans += dp[i]
        if i >= maxPts:
            s -= dp[i - maxPts]

    return ans




### Unit tests below ###
def check(candidate):
	assert candidate(100, 10, 1) == 1
	assert candidate(1, 1, 1) == 1
	assert candidate(6, 1, 10) == 0.60
	assert candidate(0, 0, 1) == 1
	assert candidate(2, 1, 2) == 1
	assert candidate(1, 1, 2) == 0.5
	assert candidate(100, 10, 2) == 1.0
	assert candidate(21, 17, 10) == 0.7327777870686082
def test_check():
	check(new21Game)
# Metadata Difficulty: Medium
# Metadata Topics: math,dynamic-programming,sliding-window,probability-and-statistics
# Metadata Coverage: 100
