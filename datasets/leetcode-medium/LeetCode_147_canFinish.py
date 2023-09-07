from typing import List


def canFinish(numCourses: int, prerequisites: List[List[int]]) -> bool:
    """
    There are a total of numCourses courses you have to take, labeled from 0 to numCourses - 1. You are given an array prerequisites where prerequisites[i] = [ai, bi] indicates that you must take course bi first if you want to take course ai.

    For example, the pair [0, 1], indicates that to take course 0 you have to first take course 1.

    Return true if you can finish all courses. Otherwise, return false.
 
    Example 1:

    Input: numCourses = 2, prerequisites = [[1,0]]
    Output: true
    Explanation: There are a total of 2 courses to take. 
    To take course 1 you should have finished course 0. So it is possible.

    Example 2:

    Input: numCourses = 2, prerequisites = [[1,0],[0,1]]
    Output: false
    Explanation: There are a total of 2 courses to take. 
    To take course 1 you should have finished course 0, and to take course 0 you should also have finished course 1. So it is impossible.

 
    Constraints:

    1 <= numCourses <= 2000
    0 <= prerequisites.length <= 5000
    prerequisites[i].length == 2
    0 <= ai, bi < numCourses
    All the pairs prerequisites[i] are unique.

    """
    ### Canonical solution below ###
    from collections import defaultdict, deque
    adj = defaultdict(list)
    inDegree = [0] * numCourses

    for a, b in prerequisites:
        adj[b].append(a)
        inDegree[a] += 1

    q = deque([i for i in range(numCourses) if inDegree[i] == 0])

    while q:
        currCourse = q.popleft()
        numCourses -= 1

        for nextCourse in adj[currCourse]:
            inDegree[nextCourse] -= 1
            if inDegree[nextCourse] == 0:
                q.append(nextCourse)

    return numCourses == 0




### Unit tests below ###
def check(candidate):
	assert candidate(4, [[0,1],[2,1],[3,0],[1,3]]) == False
	assert candidate(10, [[1,0],[2,1],[3,2],[4,3],[5,4],[6,5],[7,6],[8,7],[9,8]]) == True
	assert candidate(10, [[1,0],[2,1],[3,2],[4,3],[5,4],[6,5],[7,6],[8,7],[9,8],[9,5]]) == True
	assert candidate(3, [[0,1],[2,1]]) == True
	assert candidate(2000, [[i+1, i] for i in range(1999)]) == True
	assert candidate(4, [[0,1],[1,0],[2,3],[3,2]]) == False
	assert candidate(3, [[1,0],[2,1],[0,2]]) == False
	assert candidate(4, [[1,0],[2,1],[3,1]]) == True
	assert candidate(3, [[0,1],[1,0],[2,1]]) == False
	assert candidate(4, [[0,1],[1,2],[3,1],[3,0]]) == True
	assert candidate(2, [[0,1],[1,0]]) == False
	assert candidate(4, [[0,1],[2,3]]) == True
	assert candidate(5, [[0,1],[1,2],[2,3],[3,4],[0,4]]) == True
	assert candidate(1, [[0,0]]) == False
	assert candidate(2, [[1,0]]) == True
	assert candidate(3, [[0,1],[1,2],[2,0],[1,2]]) == False
	assert candidate(3, [[0,1],[1,0],[2,0]]) == False
	assert candidate(10, [[1,0],[2,1],[3,2],[4,3],[5,4],[6,5],[7,6],[8,7],[9,8],[0,9]]) == False
	assert candidate(4, [[2,0],[3,2],[1,3],[0,1],[3,1]]) == False
	assert candidate(2, [[0,1]]) == True
	assert candidate(5, [[3,1],[2,1],[1,0],[4,3],[4,2]]) == True
	assert candidate(5, [[0,1],[1,2],[2,3],[3,4],[4,0],[0,2]]) == False
	assert candidate(3, [[0,1],[1,2],[0,2]]) == True
	assert candidate(5, [[1,0],[2,1],[3,2],[4,3]]) == True
	assert candidate(6, [[1,0],[2,1],[3,2],[4,3],[5,4]]) == True
	assert candidate(4, [[1,0],[2,1],[3,0]]) == True
	assert candidate(4, [[0,1],[2,1],[3,0]]) == True
	assert candidate(3, [[2,0],[2,1]]) == True
	assert candidate(5, [[1,0],[2,1],[3,2],[4,3],[0,4]]) == False
	assert candidate(4, [[0,1],[1,2],[2,3]]) == True
	assert candidate(4, [[1,0],[2,1],[3,2],[1,3]]) == False
	assert candidate(3, [[0,1],[1,2],[1,0]]) == False
	assert candidate(3, [[1,0],[2,1]]) == True
	assert candidate(3, [[0,1],[1,2]]) == True
	assert candidate(3, [[0,1],[1,2],[2,1]]) == False
	assert candidate(4, [[2,0],[3,2],[1,3],[0,1]]) == False
	assert candidate(5, [[1,0],[2,1],[3,2],[4,3],[4,1]]) == True
	assert candidate(4, [[0,1],[1,2],[2,3],[1,3]]) == True
	assert candidate(6, [[1,0],[2,1],[3,2],[4,3],[5,4],[0,5]]) == False
	assert candidate(2, [[1,0],[0,1]]) == False
	assert candidate(5, [[0,1],[0,2],[2,3],[1,3],[1,4],[4,5],[4,0],[4,1]]) == False
	assert candidate(100, []) == True
	assert candidate(3, [[0,1],[0,2],[1,2]]) == True
	assert candidate(4, [[0,1],[1,2],[2,3],[3,0]]) == False
	assert candidate(1, []) == True
	assert candidate(3, [[0,1],[1,2],[2,0]]) == False
	assert candidate(5, [[0,1],[1,2],[2,3],[3,4],[4,0]]) == False
	assert candidate(6, [[0,1],[1,2],[2,3],[3,4],[4,5],[5,0]]) == False
def test_check():
	check(canFinish)
# Metadata Difficulty: Medium
# Metadata Topics: depth-first-search,breadth-first-search,graph,topological-sort
# Metadata Coverage: 100
