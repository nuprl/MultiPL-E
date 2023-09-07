from typing import List


def minNumberOfSemesters(n: int, relations: List[List[int]], k: int) -> int:
    """
    You are given an integer n, which indicates that there are n courses labeled from 1 to n. You are also given an array relations where relations[i] = [prevCoursei, nextCoursei], representing a prerequisite relationship between course prevCoursei and course nextCoursei: course prevCoursei has to be taken before course nextCoursei. Also, you are given the integer k.
    In one semester, you can take at most k courses as long as you have taken all the prerequisites in the previous semesters for the courses you are taking.
    Return the minimum number of semesters needed to take all courses. The testcases will be generated such that it is possible to take every course.
 
    Example 1:


    Input: n = 4, relations = [[2,1],[3,1],[1,4]], k = 2
    Output: 3
    Explanation: The figure above represents the given graph.
    In the first semester, you can take courses 2 and 3.
    In the second semester, you can take course 1.
    In the third semester, you can take course 4.

    Example 2:


    Input: n = 5, relations = [[2,1],[3,1],[4,1],[1,5]], k = 2
    Output: 4
    Explanation: The figure above represents the given graph.
    In the first semester, you can only take courses 2 and 3 since you cannot take more than two per semester.
    In the second semester, you can take course 4.
    In the third semester, you can take course 1.
    In the fourth semester, you can take course 5.

 
    Constraints:

    1 <= n <= 15
    1 <= k <= n
    0 <= relations.length <= n * (n-1) / 2
    relations[i].length == 2
    1 <= prevCoursei, nextCoursei <= n
    prevCoursei != nextCoursei
    All the pairs [prevCoursei, nextCoursei] are unique.
    The given graph is a directed acyclic graph.

    """
    ### Canonical solution below ###
    from collections import deque
    indegree = [0] * (n + 1)
    graph = [[] for _ in range(n + 1)]

    for prev_course, next_course in relations:
        graph[prev_course].append(next_course)
        indegree[next_course] += 1

    semesters = 0
    while n > 0:
        zero_indegree = deque()
        for i in range(1, len(indegree)):
            if indegree[i] == 0:
                zero_indegree.append(i)
                indegree[i] = -1

        courses = 0
        while zero_indegree and courses < k:
            curr_course = zero_indegree.popleft()
            n -= 1

            for next_course in graph[curr_course]:
                indegree[next_course] -= 1
            courses += 1
        semesters += 1
    return semesters




### Unit tests below ###
def check(candidate):
	assert candidate(6, [[6,5],[5,4],[4,3],[3,2],[2,1]], 1) == 6
	assert candidate(2, [[1,2]], 1) == 2
	assert candidate(1, [], 2) == 1
	assert candidate(10, [[2,1],[3,2],[4,3],[5,4],[6,5],[7,6],[8,7],[9,8],[10,9]], 1) == 10
	assert candidate(1, [], 1) == 1
	assert candidate(3, [[3,2],[2,1]], 1) == 3
	assert candidate(4, [[2,1],[3,1],[1,4]], 2) == 3
	assert candidate(5, [[1,2],[3,4],[2,5],[4,5]], 2) == 3
def test_check():
	check(minNumberOfSemesters)
# Metadata Difficulty: Hard
# Metadata Topics: dynamic-programming,bit-manipulation,graph,bitmask
# Metadata Coverage: 100
