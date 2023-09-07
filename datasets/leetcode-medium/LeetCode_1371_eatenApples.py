from typing import List


def eatenApples(apples: List[int], days: List[int]) -> int:
    """
    There is a special kind of apple tree that grows apples every day for n days. On the ith day, the tree grows apples[i] apples that will rot after days[i] days, that is on day i + days[i] the apples will be rotten and cannot be eaten. On some days, the apple tree does not grow any apples, which are denoted by apples[i] == 0 and days[i] == 0.
    You decided to eat at most one apple a day (to keep the doctors away). Note that you can keep eating after the first n days.
    Given two integer arrays days and apples of length n, return the maximum number of apples you can eat.
 
    Example 1:

    Input: apples = [1,2,3,5,2], days = [3,2,1,4,2]
    Output: 7
    Explanation: You can eat 7 apples:
    - On the first day, you eat an apple that grew on the first day.
    - On the second day, you eat an apple that grew on the second day.
    - On the third day, you eat an apple that grew on the second day. After this day, the apples that grew on the third day rot.
    - On the fourth to the seventh days, you eat apples that grew on the fourth day.

    Example 2:

    Input: apples = [3,0,0,0,0,2], days = [3,0,0,0,0,2]
    Output: 5
    Explanation: You can eat 5 apples:
    - On the first to the third day you eat apples that grew on the first day.
    - Do nothing on the fouth and fifth days.
    - On the sixth and seventh days you eat apples that grew on the sixth day.

 
    Constraints:

    n == apples.length == days.length
    1 <= n <= 2 * 104
    0 <= apples[i], days[i] <= 2 * 104
    days[i] = 0 if and only if apples[i] = 0.

    """
    ### Canonical solution below ###
    import heapq
    n = len(apples)
    pq = []
    ans = 0

    for i in range(n + 1):
        if i < n and apples[i] > 0:
            heapq.heappush(pq, (i + days[i], apples[i]))

        while pq and pq[0][0] <= i:
            heapq.heappop(pq)

        if pq:
            ans += 1
            curr_apple = heapq.heappop(pq)
            if curr_apple[1] > 1:
                heapq.heappush(pq, (curr_apple[0], curr_apple[1] - 1))

    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([3, 0, 0, 0, 0, 2], [3, 0, 0, 0, 0, 2]) == 5
	assert candidate(
    [1, 0, 2, 1, 1, 1, 2],
    [1, 1, 0, 1, 1, 2, 3]) == 6
	assert candidate([0, 1, 0, 1, 0], [1, 2, 3, 4, 5]) == 2
	assert candidate([5, 5, 5, 5, 5], [1, 1, 1, 1, 1]) == 5
	assert candidate([1, 1, 1, 1, 1], [1, 1, 1, 1, 1]) == 5
	assert candidate(
    [1000000000, 1000000000, 1000000000, 1000000000, 1000000000],
    [1, 1, 1, 1, 1],
) == 5
	assert candidate([1, 0, 1, 0, 1], [1, 2, 3, 4, 5]) == 3
	assert candidate([1, 1, 0, 0, 1], [1, 2, 3, 4, 5]) == 3
	assert candidate(
    [1, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1],
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 7
	assert candidate([0, 0, 0, 0, 0], [1, 1, 1, 1, 1]) == 0
	assert candidate(
    [3, 0, 0, 0, 0, 2],
    [3, 0, 0, 0, 0, 2]) == 5
def test_check():
	check(eatenApples)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,heap-priority-queue
# Metadata Coverage: 100
