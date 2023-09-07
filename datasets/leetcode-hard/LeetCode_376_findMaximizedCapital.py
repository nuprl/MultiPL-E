from typing import List


def findMaximizedCapital(k: int, w: int, profits: int, capital: int) -> int:
    """
    Suppose LeetCode will start its IPO soon. In order to sell a good price of its shares to Venture Capital, LeetCode would like to work on some projects to increase its capital before the IPO. Since it has limited resources, it can only finish at most k distinct projects before the IPO. Help LeetCode design the best way to maximize its total capital after finishing at most k distinct projects.
    You are given n projects where the ith project has a pure profit profits[i] and a minimum capital of capital[i] is needed to start it.
    Initially, you have w capital. When you finish a project, you will obtain its pure profit and the profit will be added to your total capital.
    Pick a list of at most k distinct projects from given projects to maximize your final capital, and return the final maximized capital.
    The answer is guaranteed to fit in a 32-bit signed integer.
 
    Example 1:

    Input: k = 2, w = 0, profits = [1,2,3], capital = [0,1,1]
    Output: 4
    Explanation: Since your initial capital is 0, you can only start the project indexed 0.
    After finishing it you will obtain profit 1 and your capital becomes 1.
    With capital 1, you can either start the project indexed 1 or the project indexed 2.
    Since you can choose at most 2 projects, you need to finish the project indexed 2 to get the maximum capital.
    Therefore, output the final maximized capital, which is 0 + 1 + 3 = 4.

    Example 2:

    Input: k = 3, w = 0, profits = [1,2,3], capital = [0,1,2]
    Output: 6

 
    Constraints:

    1 <= k <= 105
    0 <= w <= 109
    n == profits.length
    n == capital.length
    1 <= n <= 105
    0 <= profits[i] <= 104
    0 <= capital[i] <= 109

    """
    ### Canonical solution below ###
    import heapq
    project_pool = list(zip(capital, profits))
    project_pool.sort(reverse=True)

    profit_pool = []

    while k:
        while project_pool and project_pool[-1][0] <= w:
            heapq.heappush(profit_pool, -project_pool.pop()[1])

        if not profit_pool:
            break

        w -= heapq.heappop(profit_pool)
        k -= 1

    return w




### Unit tests below ###
def check(candidate):
	assert candidate(3, 0, [3,2,1], [0,1,2]) == 6
	assert candidate(1, 1, [1,2,3], [0,1,2]) == 3
	assert candidate(3, 0, [1,2,3], [0,1,2]) == 6
	assert candidate(3, 1, [1,1,1], [0,0,0]) == 4
	assert candidate(3, 1, [3,2,1], [0,1,2]) == 7
	assert candidate(3, 0, [1,2,3], [0,0,0]) == 6
	assert candidate(1, 2, [1,2,3], [0,1,2]) == 5
	assert candidate(4, 2, [1,2,1], [0,0,1]) == 6
	assert candidate(3, 2, [3,2,1], [0,1,2]) == 8
	assert candidate(3, 2, [1,1,1], [0,0,0]) == 5
	assert candidate(4, 0, [1,2,3], [0,1,1]) == 6
	assert candidate(0, 0, [1,2,3], [0,0,0]) == 0
	assert candidate(3, 0, [2,2,3], [0,1,1]) == 7
	assert candidate(2, 0, [2,1,1], [0,1,0]) == 3
	assert candidate(1, 0, [3], [0]) == 3
	assert candidate(2, 0, [1,2,3], [0,1,1]) == 4
	assert candidate(3, 0, [1,1,1], [0,0,0]) == 3
	assert candidate(1, 2, [1,2,3], [0,1,1]) == 5
	assert candidate(1, 0, [5], [0]) == 5
	assert candidate(4, 0, [1,1,1,1], [0,0,1,1]) == 4
	assert candidate(4, 2, [1,3,1,1], [0,0,1,2]) == 8
	assert candidate(4, 0, [2,2,3], [0,1,1]) == 7
def test_check():
	check(findMaximizedCapital)
# Metadata Difficulty: Hard
# Metadata Topics: array,greedy,sorting,heap-priority-queue
# Metadata Coverage: 100
