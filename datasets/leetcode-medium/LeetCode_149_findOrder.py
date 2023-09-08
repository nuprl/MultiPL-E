from typing import List


def findOrder(numCourses: int, prerequisites: List[List[int]]) -> List[int]:
    """
    There are a total of numCourses courses you have to take, labeled from 0 to numCourses - 1. You are given an array prerequisites where prerequisites[i] = [ai, bi] indicates that you must take course bi first if you want to take course ai.

    For example, the pair [0, 1], indicates that to take course 0 you have to first take course 1.

    Return the ordering of courses you should take to finish all courses. If there are many valid answers, return any of them. If it is impossible to finish all courses, return an empty array.
 
    Example 1:

    Input: numCourses = 2, prerequisites = [[1,0]]
    Output: [0,1]
    Explanation: There are a total of 2 courses to take. To take course 1 you should have finished course 0. So the correct course order is [0,1].

    Example 2:

    Input: numCourses = 4, prerequisites = [[1,0],[2,0],[3,1],[3,2]]
    Output: [0,2,1,3]
    Explanation: There are a total of 4 courses to take. To take course 3 you should have finished both courses 1 and 2. Both courses 1 and 2 should be taken after you finished course 0.
    So one correct course order is [0,1,2,3]. Another correct ordering is [0,2,1,3].

    Example 3:

    Input: numCourses = 1, prerequisites = []
    Output: [0]

 
    Constraints:

    1 <= numCourses <= 2000
    0 <= prerequisites.length <= numCourses * (numCourses - 1)
    prerequisites[i].length == 2
    0 <= ai, bi < numCourses
    ai != bi
    All the pairs [ai, bi] are distinct.

    """
    ### Canonical solution below ###
    from collections import deque
    in_degree = [0] * numCourses
    adj_list = [[] for _ in range(numCourses)]

    for p in prerequisites:
        adj_list[p[1]].append(p[0])
        in_degree[p[0]] += 1

    q = deque([i for i in range(numCourses) if in_degree[i] == 0])
    order = []

    while q:
        curr = q.popleft()
        order.append(curr)
        for next in adj_list[curr]:
            in_degree[next] -= 1
            if in_degree[next] == 0:
                q.append(next)

    return order if len(order) == numCourses else []




### Unit tests below ###
def check(candidate):
	assert candidate(0, []) == []
	assert candidate(3, [[0,1],[1,2],[2,0]]) == []
	assert candidate(5, [[0,1],[1,2],[2,3],[3,4]]) == [4,3,2,1,0]
	assert candidate(3, [[0, 1], [1, 2], [2, 0]]) == []
	assert candidate(4, [[2,0],[3,1],[1,0],[1,2]]) == [0,2,1,3]
	assert candidate(5, [[0, 1], [1, 2], [2, 3], [3, 4]]) == [4, 3, 2, 1, 0]
	assert candidate(2, [[1,0]]) == [0,1]
	assert candidate(3, [[2, 0], [2, 1]]) == [0, 1, 2]
	assert candidate(2, [[0,1], [1,0]]) == []
	assert candidate(1, []) == [0]
	assert candidate(2, [[0, 1], [1, 0]]) == []
	assert candidate(5, [[2,0],[3,1],[4,2],[0,3],[1,4]]) == []
	assert candidate(2, []) == [0,1]
	assert candidate(2, [[0,1],[1,0]]) == []
	assert candidate(5, [[4, 2], [4, 3], [2, 0], [2, 1], [3, 1]]) == [0, 1, 2, 3, 4]
	assert candidate(2, [[1,0],[0,1]]) == []
	assert candidate(5, [[1,0],[2,1],[3,2],[4,3]]) == [0,1,2,3,4]
	assert candidate(4, [[3, 2], [3, 0], [2, 0], [2, 1]]) == [0, 1, 2, 3]
def test_check():
	check(findOrder)
# Metadata Difficulty: Medium
# Metadata Topics: depth-first-search,breadth-first-search,graph,topological-sort
# Metadata Coverage: 100
