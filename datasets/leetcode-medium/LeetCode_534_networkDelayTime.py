from typing import List


def networkDelayTime(times: List[List[int]], n: int, k: int) -> int:
    """
    You are given a network of n nodes, labeled from 1 to n. You are also given times, a list of travel times as directed edges times[i] = (ui, vi, wi), where ui is the source node, vi is the target node, and wi is the time it takes for a signal to travel from source to target.
    We will send a signal from a given node k. Return the minimum time it takes for all the n nodes to receive the signal. If it is impossible for all the n nodes to receive the signal, return -1.
 
    Example 1:


    Input: times = [[2,1,1],[2,3,1],[3,4,1]], n = 4, k = 2
    Output: 2

    Example 2:

    Input: times = [[1,2,1]], n = 2, k = 1
    Output: 1

    Example 3:

    Input: times = [[1,2,1]], n = 2, k = 2
    Output: -1

 
    Constraints:

    1 <= k <= n <= 100
    1 <= times.length <= 6000
    times[i].length == 3
    1 <= ui, vi <= n
    ui != vi
    0 <= wi <= 100
    All the pairs (ui, vi) are unique. (i.e., no multiple edges.)

    """
    ### Canonical solution below ###
    import heapq
    graph = {i: [] for i in range(1, n+1)}
    for u, v, w in times:
        graph[u].append((v, w))

    dist = {u: float('inf') for u in range(1, n+1)}
    dist[k] = 0

    pq = [(0, k)]

    while pq:
        curr_dist, u = heapq.heappop(pq)

        for v, weight in graph[u]:
            new_dist = curr_dist + weight
            if new_dist < dist[v]:
                dist[v] = new_dist
                heapq.heappush(pq, (new_dist, v))

    max_time = max(dist.values())
    return max_time if max_time < float('inf') else -1




### Unit tests below ###
def check(candidate):
	assert candidate([[1,2,1]], 2, 1) == 1
	assert candidate([[1,2,1],[1,3,3],[1,4,6],[1,5,10]], 5, 1) == 10
	assert candidate([[1,2,10],[2,3,20],[3,4,30],[4,5,40]], 5, 1) == 100
	assert candidate([[1,2,1],[2,3,2],[3,4,3],[4,5,4]], 5, 1) == 10
	assert candidate([[2,1,1],[2,3,1],[3,4,1]], 4, 2) == 2
	assert candidate([[1,2,10],[3,2,20],[4,3,30],[5,4,40]], 5, 5) == -1
	assert candidate([[1,2,1],[2,3,2],[3,4,3]], 4, 1) == 6
	assert candidate([[1,2,1]], 2, 2) == -1
	assert candidate([[2,1,5],[2,3,10],[2,4,15],[2,5,20]], 5, 2) == 20
	assert candidate([[2,1,1],[2,3,1],[3,4,1]], 4, 1) == -1
	assert candidate([[1,2,1],[2,3,1],[3,4,1],[4,5,1]], 5, 1) == 4
def test_check():
	check(networkDelayTime)
# Metadata Difficulty: Medium
# Metadata Topics: depth-first-search,breadth-first-search,graph,heap-priority-queue,shortest-path
# Metadata Coverage: 100
