from typing import List


def checkIfPrerequisite(numCourses: int, prerequisites: List[List[int]], queries: List[List[int]]) -> List[bool]:
    """
    There are a total of numCourses courses you have to take, labeled from 0 to numCourses - 1. You are given an array prerequisites where prerequisites[i] = [ai, bi] indicates that you must take course ai first if you want to take course bi.

    For example, the pair [0, 1] indicates that you have to take course 0 before you can take course 1.

    Prerequisites can also be indirect. If course a is a prerequisite of course b, and course b is a prerequisite of course c, then course a is a prerequisite of course c.
    You are also given an array queries where queries[j] = [uj, vj]. For the jth query, you should answer whether course uj is a prerequisite of course vj or not.
    Return a boolean array answer, where answer[j] is the answer to the jth query.
 
    Example 1:


    Input: numCourses = 2, prerequisites = [[1,0]], queries = [[0,1],[1,0]]
    Output: [false,true]
    Explanation: The pair [1, 0] indicates that you have to take course 1 before you can take course 0.
    Course 0 is not a prerequisite of course 1, but the opposite is true.

    Example 2:

    Input: numCourses = 2, prerequisites = [], queries = [[1,0],[0,1]]
    Output: [false,false]
    Explanation: There are no prerequisites, and each course is independent.

    Example 3:


    Input: numCourses = 3, prerequisites = [[1,2],[1,0],[2,0]], queries = [[1,0],[1,2]]
    Output: [true,true]

 
    Constraints:

    2 <= numCourses <= 100
    0 <= prerequisites.length <= (numCourses * (numCourses - 1) / 2)
    prerequisites[i].length == 2
    0 <= ai, bi <= n - 1
    ai != bi
    All the pairs [ai, bi] are unique.
    The prerequisites graph has no cycles.
    1 <= queries.length <= 104
    0 <= ui, vi <= n - 1
    ui != vi

    """
    ### Canonical solution below ###
    from collections import defaultdict

    def DFS(src, graph, visited, transitive_closure, dest):
        if src == dest:
            transitive_closure[dest] = True
            return
        if visited[src]:
            return
        visited[src] = True
        for neighbor in graph[src]:
            DFS(neighbor, graph, visited, transitive_closure, dest)
            if transitive_closure[dest]:
                return
    graph = defaultdict(list)

    for pre in prerequisites:
        graph[pre[0]].append(pre[1])

    result = []

    for i in range(len(queries)):
        visited = [False] * numCourses
        transitive_closure = [False] * numCourses
        DFS(queries[i][0], graph, visited, transitive_closure, queries[i][1])
        result.append(transitive_closure[queries[i][1]])

    return result




### Unit tests below ###
def check(candidate):
	assert candidate(1, [], []) == []
	assert candidate(5, [[0, 1], [1, 2], [2, 3], [3, 4]], [[0, 4], [4, 0], [1, 3], [3, 1]]) == [True, False, True, False]
	assert candidate(3, [[1,0],[1,2],[0,1]], [[1, 0], [1, 2]]) == [True, True]
	assert candidate(2, [[1, 0]], [[0, 1], [1, 0]]) == [False, True]
	assert candidate(3, [[0,1],[1,2],[2,0]], [[0, 1], [1, 2], [2, 0]]) == [True, True, True]
	assert candidate(3, [[1, 0]], [[0, 1], [1, 0]]) == [False, True]
	assert candidate(5, [[0,1],[1,2],[2,3],[3,4]], [[0, 4], [4, 0]]) == [True, False]
	assert candidate(3, [[0,1],[1,2],[2,0]], [[2,0]]) == [True]
	assert candidate(3, [[0, 1], [1, 2]], [[0, 2], [2, 0]]) == [True, False]
	assert candidate(4, [[0,1],[2,1],[3,2]], [[3, 0], [0, 3]]) == [False, False]
	assert candidate(3, [[0,1],[1,2]], [[0, 2], [2, 0]]) == [True, False]
	assert candidate(2, [[0, 1]], []) == []
	assert candidate(3, [[0,1],[1,2],[2,0]], [[0, 2], [2, 0]]) == [True, True]
	assert candidate(2, [[0, 1]], [[0, 1], [1, 0]]) == [True, False]
	assert candidate(3, [[1,2],[2,0]], [[0, 1], [1, 0]]) == [False, True]
	assert candidate(3, [[0, 1]], [[1, 0]]) == [False]
	assert candidate(2, [], [[1, 0], [0, 1]]) == [False, False]
	assert candidate(4, [[1,0],[2,0],[3,1],[3,2]], [[1, 0], [2, 3], [3, 0]]) == [True, False, True]
	assert candidate(2, [[0,1],[1,0]], [[0, 1], [1, 0]]) == [True, True]
	assert candidate(2, [], [[0, 1], [1, 0]]) == [False, False]
	assert candidate(3, [[0,1],[1,2],[2,0]], [[0, 1]]) == [True]
	assert candidate(3, [[0,1],[1,2],[2,0]], [[0, 2]]) == [True]
	assert candidate(2, [[1, 0]], [[1, 0], [1, 0]]) == [True, True]
	assert candidate(4, [[1,0],[2,0],[3,1],[3,2]], [[1,0]]) == [True]
	assert candidate(4, [[0,1],[1,2],[2,3]], [[0, 3], [3, 0]]) == [True, False]
def test_check():
	check(checkIfPrerequisite)
# Metadata Difficulty: Medium
# Metadata Topics: depth-first-search,breadth-first-search,graph,topological-sort
# Metadata Coverage: 100
