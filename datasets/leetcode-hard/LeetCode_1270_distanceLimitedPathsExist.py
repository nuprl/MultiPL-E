from typing import List


def distanceLimitedPathsExist(n: int, edgeList: List[List[int]], queries: List[List[int]]) -> List[bool]:
    """
    An undirected graph of n nodes is defined by edgeList, where edgeList[i] = [ui, vi, disi] denotes an edge between nodes ui and vi with distance disi. Note that there may be multiple edges between two nodes.
    Given an array queries, where queries[j] = [pj, qj, limitj], your task is to determine for each queries[j] whether there is a path between pj and qj such that each edge on the path has a distance strictly less than limitj .
    Return a boolean array answer, where answer.length == queries.length and the jth value of answer is true if there is a path for queries[j] is true, and false otherwise.
 
    Example 1:


    Input: n = 3, edgeList = [[0,1,2],[1,2,4],[2,0,8],[1,0,16]], queries = [[0,1,2],[0,2,5]]
    Output: [false,true]
    Explanation: The above figure shows the given graph. Note that there are two overlapping edges between 0 and 1 with distances 2 and 16.
    For the first query, between 0 and 1 there is no path where each distance is less than 2, thus we return false for this query.
    For the second query, there is a path (0 -> 1 -> 2) of two edges with distances less than 5, thus we return true for this query.

    Example 2:


    Input: n = 5, edgeList = [[0,1,10],[1,2,5],[2,3,9],[3,4,13]], queries = [[0,4,14],[1,4,13]]
    Output: [true,false]
    Explanation: The above figure shows the given graph.

 
    Constraints:

    2 <= n <= 105
    1 <= edgeList.length, queries.length <= 105
    edgeList[i].length == 3
    queries[j].length == 3
    0 <= ui, vi, pj, qj <= n - 1
    ui != vi
    pj != qj
    1 <= disi, limitj <= 109
    There may be multiple edges between two nodes.

    """
    ### Canonical solution below ###
    from collections import defaultdict, deque
    graph = defaultdict(list)

    for u, v, dis in edgeList:
        graph[u].append((v, dis))
        graph[v].append((u, dis))

    answer = [False] * len(queries)
    for i, (pj, qj, limitj) in enumerate(queries):
        q = deque([(pj, 0)])
        visited = [False] * n
        visited[pj] = True

        while q:
            curr_node, curr_dist = q.popleft()

            for next_node, next_dist in graph[curr_node]:
                if curr_dist + next_dist < limitj:
                    if next_node == qj:
                        answer[i] = True
                        break
                    if not visited[next_node]:
                        visited[next_node] = True
                        q.append((next_node, curr_dist + next_dist))
            if answer[i]:
                break

    return answer




### Unit tests below ###
def check(candidate):
	assert candidate(2, [[0,1,3]], [[0,1,2]]) == [False]
	assert candidate(3, [[0,1,1],[1,2,1],[2,0,1]], [[0,2,1]]) == [False]
	assert candidate(4, [[0,1,3],[1,2,1],[2,3,1]], [[0,3,2]]) == [False]
	assert candidate(2, [[0,1,3]], [[0,1,4]]) == [True]
	assert candidate(3, [[0,1,1],[1,2,1],[2,0,1]], [[0,2,2],[2,0,2],[0,1,2]]) == [True,True,True]
	assert candidate(4, [[0,1,3],[1,2,1],[2,3,1],[3,0,1]], [[0,3,2]]) == [True]
	assert candidate(2, [[0,1,1]], [[0,1,2]]) == [True]
	assert candidate(5, [[0,1,1],[1,2,1],[2,3,1],[3,4,1],[1,4,1],[0,4,2],[3,4,3],[1,2,4],[2,3,2],[1,3,2],[0,4,5],[2,4,1],[1,4,4]], [[0,4,5],[1,4,5],[2,4,5],[3,4,5]]) == [True,True,True,True]
	assert candidate(4, [[0,1,3],[1,2,1],[2,3,1]], [[0,3,1]]) == [False]
	assert candidate(5, [[0,1,1],[1,2,1],[2,3,1],[3,4,1],[0,4,2],[3,4,3],[1,2,4],[2,3,2],[1,3,2],[0,4,5],[2,4,1],[1,4,4]], [[0,4,5],[1,4,5],[2,4,5],[3,4,5]]) == [True,True,True,True]
def test_check():
	check(distanceLimitedPathsExist)
# Metadata Difficulty: Hard
# Metadata Topics: array,union-find,graph,sorting
# Metadata Coverage: 100
