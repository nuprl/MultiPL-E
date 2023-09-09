from typing import Union, List


def mincost_to_hire_workers(quality: List[int], wage: List[int], k: int) -> Union[int, float]:
    """
    There are n workers. You are given two integer arrays quality and wage where quality[i] is the quality of the ith worker and wage[i] is the minimum wage expectation for the ith worker.
    We want to hire exactly k workers to form a paid group. To hire a group of k workers, we must pay them according to the following rules:

    Every worker in the paid group should be paid in the ratio of their quality compared to other workers in the paid group.
    Every worker in the paid group must be paid at least their minimum wage expectation.

    Given the integer k, return the least amount of money needed to form a paid group satisfying the above conditions. Answers within 10-5 of the actual answer will be accepted.
 
    Example 1:

    Input: quality = [10,20,5], wage = [70,50,30], k = 2
    Output: 105.00000
    Explanation: We pay 70 to 0th worker and 35 to 2nd worker.

    Example 2:

    Input: quality = [3,1,10,10,1], wage = [4,8,2,2,7], k = 3
    Output: 30.66667
    Explanation: We pay 4 to 0th worker, 13.33333 to 2nd and 3rd workers separately.

 
    Constraints:

    n == quality.length == wage.length
    1 <= k <= n <= 104
    1 <= quality[i], wage[i] <= 104

    """
    ### Canonical solution below ###
    import heapq
    workers = sorted((w / q, q) for w, q in zip(wage, quality))
    total_quality = 0
    max_heap = []
    result = float("inf")

    for ratio, q in workers:
        heapq.heappush(max_heap, -q)
        total_quality += q

        if len(max_heap) > k:
            total_quality += heapq.heappop(max_heap)

        if len(max_heap) == k:
            result = min(result, total_quality * ratio)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([4], [8], 1) == 8.0
	assert candidate([3, 1, 10, 10, 1], [4, 8, 2, 2, 7], 3) == 30.666666666666664
	assert candidate(
    [100000000000000000000, 100000000000000000000, 100000000000000000000],
    [100000000000000000000, 100000000000000000000, 100000000000000000000],
    1,
) == 100000000000000000000
	assert candidate([10, 20, 5], [70, 50, 30], 2) == 105.0
def test_check():
	check(mincost_to_hire_workers)
# Metadata Difficulty: Hard
# Metadata Topics: array,greedy,sorting,heap-priority-queue
# Metadata Coverage: 100
