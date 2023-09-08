from typing import List


def mincostTickets(days: List[int], costs: List[int]) -> int:
    """
    You have planned some train traveling one year in advance. The days of the year in which you will travel are given as an integer array days. Each day is an integer from 1 to 365.
    Train tickets are sold in three different ways:

    a 1-day pass is sold for costs[0] dollars,
    a 7-day pass is sold for costs[1] dollars, and
    a 30-day pass is sold for costs[2] dollars.

    The passes allow that many days of consecutive travel.

    For example, if we get a 7-day pass on day 2, then we can travel for 7 days: 2, 3, 4, 5, 6, 7, and 8.

    Return the minimum number of dollars you need to travel every day in the given list of days.
 
    Example 1:

    Input: days = [1,4,6,7,8,20], costs = [2,7,15]
    Output: 11
    Explanation: For example, here is one way to buy passes that lets you travel your travel plan:
    On day 1, you bought a 1-day pass for costs[0] = $2, which covered day 1.
    On day 3, you bought a 7-day pass for costs[1] = $7, which covered days 3, 4, ..., 9.
    On day 20, you bought a 1-day pass for costs[0] = $2, which covered day 20.
    In total, you spent $11 and covered all the days of your travel.

    Example 2:

    Input: days = [1,2,3,4,5,6,7,8,9,10,30,31], costs = [2,7,15]
    Output: 17
    Explanation: For example, here is one way to buy passes that lets you travel your travel plan:
    On day 1, you bought a 30-day pass for costs[2] = $15 which covered days 1, 2, ..., 30.
    On day 31, you bought a 1-day pass for costs[0] = $2 which covered day 31.
    In total, you spent $17 and covered all the days of your travel.

 
    Constraints:

    1 <= days.length <= 365
    1 <= days[i] <= 365
    days is in strictly increasing order.
    costs.length == 3
    1 <= costs[i] <= 1000

    """
    ### Canonical solution below ###
    travel_days = set(days)
    dp = [0] * 366

    for i in range(1, 366):
        if i not in travel_days:
            dp[i] = dp[i - 1]
        else:
            dp[i] = min(dp[i - 1] + costs[0],
                        dp[max(0, i - 7)] + costs[1],
                        dp[max(0, i - 30)] + costs[2])

    return dp[365]




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 30, 31], [3, 6, 9]) == 12
	assert candidate([1, 4, 6, 7, 8, 20], [2, 4, 8]) == 8
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 30, 31], [5, 10, 20]) == 25
	assert candidate([1, 50, 100, 200, 365], [1, 2, 5]) == 5
	assert candidate([1, 4, 6, 7, 8, 20], [7, 2, 15]) == 6
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 30, 31], [2, 7, 15]) == 17
	assert candidate([1, 4, 6, 7, 8, 20], [2, 7, 15]) == 11
def test_check():
	check(mincostTickets)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
