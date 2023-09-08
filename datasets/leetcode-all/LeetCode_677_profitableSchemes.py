from typing import List


def profitableSchemes(n: int, minProfit: int, group: List[int], profit: List[int]) -> int:
    """
    There is a group of n members, and a list of various crimes they could commit. The ith crime generates a profit[i] and requires group[i] members to participate in it. If a member participates in one crime, that member can't participate in another crime.
    Let's call a profitable scheme any subset of these crimes that generates at least minProfit profit, and the total number of members participating in that subset of crimes is at most n.
    Return the number of schemes that can be chosen. Since the answer may be very large, return it modulo 109 + 7.
 
    Example 1:

    Input: n = 5, minProfit = 3, group = [2,2], profit = [2,3]
    Output: 2
    Explanation: To make a profit of at least 3, the group could either commit crimes 0 and 1, or just crime 1.
    In total, there are 2 schemes.
    Example 2:

    Input: n = 10, minProfit = 5, group = [2,3,5], profit = [6,7,8]
    Output: 7
    Explanation: To make a profit of at least 5, the group could commit any crimes, as long as they commit one.
    There are 7 possible schemes: (0), (1), (2), (0,1), (0,2), (1,2), and (0,1,2).
 
    Constraints:

    1 <= n <= 100
    0 <= minProfit <= 100
    1 <= group.length <= 100
    1 <= group[i] <= 100
    profit.length == group.length
    0 <= profit[i] <= 100

    """
    ### Canonical solution below ###
    dp = [[0] * (minProfit + 1) for _ in range(n + 1)]
    mod = 10**9 + 7
    dp[0][0] = 1
    for i in range(len(group)):
        for j in range(n, group[i] - 1, -1):
            for k in range(minProfit, -1, -1):
                dp[j][k] = (dp[j][k] + dp[j - group[i]][max(0, k - profit[i])]) % mod
    return sum(dp[i][minProfit] for i in range(1, n + 1)) % mod




### Unit tests below ###
def check(candidate):
	assert candidate(10, 5, [100, 100, 100], [1, 1, 1]) == 0
	assert candidate(3, 0, [1, 1], [1, 1]) == 3
	assert candidate(10, 5, [2, 3, 5], [6, 7, 8]) == 7
	assert candidate(5, 3, [2, 2], [2, 3]) == 2
	assert candidate(1, 1, [1, 1], [1, 1]) == 2
	assert candidate(5, 10, [3, 5], [6, 7]) == 0
	assert candidate(10, 50, [11, 11, 11, 11, 11, 11, 11, 11, 11, 11], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 0
	assert candidate(10, 50, [11, 11, 11, 11, 11, 11, 11, 11, 11, 11], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 0
	assert candidate(10, 50, [35, 10, 15, 30, 25, 20, 20, 5, 10, 25], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 0
	assert candidate(10, 50, [11, 20, 100, 40, 222, 222, 444, 333, 55, 111], [23, 21, 150, 40, 222, 222, 444, 333, 55, 111]) == 0
def test_check():
	check(profitableSchemes)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
