from typing import List


def calcEquation(equations: List[List[str]], values: List[float], queries: List[List[str]]) -> List[float]:
    """
    You are given an array of variable pairs equations and an array of real numbers values, where equations[i] = [Ai, Bi] and values[i] represent the equation Ai / Bi = values[i]. Each Ai or Bi is a string that represents a single variable.
    You are also given some queries, where queries[j] = [Cj, Dj] represents the jth query where you must find the answer for Cj / Dj = ?.
    Return the answers to all queries. If a single answer cannot be determined, return -1.0.
    Note: The input is always valid. You may assume that evaluating the queries will not result in division by zero and that there is no contradiction.
    Note: The variables that do not occur in the list of equations are undefined, so the answer cannot be determined for them.
 
    Example 1:

    Input: equations = [["a","b"],["b","c"]], values = [2.0,3.0], queries = [["a","c"],["b","a"],["a","e"],["a","a"],["x","x"]]
    Output: [6.00000,0.50000,-1.00000,1.00000,-1.00000]
    Explanation: 
    Given: a / b = 2.0, b / c = 3.0
    queries are: a / c = ?, b / a = ?, a / e = ?, a / a = ?, x / x = ? 
    return: [6.0, 0.5, -1.0, 1.0, -1.0 ]
    note: x is undefined => -1.0
    Example 2:

    Input: equations = [["a","b"],["b","c"],["bc","cd"]], values = [1.5,2.5,5.0], queries = [["a","c"],["c","b"],["bc","cd"],["cd","bc"]]
    Output: [3.75000,0.40000,5.00000,0.20000]

    Example 3:

    Input: equations = [["a","b"]], values = [0.5], queries = [["a","b"],["b","a"],["a","c"],["x","y"]]
    Output: [0.50000,2.00000,-1.00000,-1.00000]

 
    Constraints:

    1 <= equations.length <= 20
    equations[i].length == 2
    1 <= Ai.length, Bi.length <= 5
    values.length == equations.length
    0.0 < values[i] <= 20.0
    1 <= queries.length <= 20
    queries[i].length == 2
    1 <= Cj.length, Dj.length <= 5
    Ai, Bi, Cj, Dj consist of lower case English letters and digits.

    """
    ### Canonical solution below ###
    from collections import defaultdict

    def dfs(s1, s2, graph):
        if s1 not in graph or s2 not in graph:
            return -1.0
        if s1 == s2:
            return 1.0

        for neighbor, weight in graph[s1]:
            if neighbor not in visited:
                visited.add(neighbor)
                temp = dfs(neighbor, s2, graph)
                if temp > 0:
                    return weight * temp
        return -1.0
    graph = defaultdict(list)
    for (s1, s2), value in zip(equations, values):
        graph[s1].append((s2, value))
        graph[s2].append((s1, 1 / value))

    ans = []
    for s1, s2 in queries:
        visited = set()
        ans.append(dfs(s1, s2, graph))
    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([["a", "b"]], [0.5], [["a", "b"], ["b", "a"], ["a", "c"], ["x", "y"]]) == [0.50000, 2.00000, -1.00000, -1.00000]
	assert candidate([["a", "b"], ["b", "c"]], [2.0, 3.0], [["a", "c"], ["b", "a"], ["a", "e"], ["a", "a"], ["x", "x"]]) == [6.0, 0.5, -1.0, 1.0, -1.0]
	assert candidate([["a", "b"], ["b", "c"]], [2.0, 3.0], [["a", "c"], ["b", "a"], ["a", "e"], ["a", "a"], ["x", "x"]]) == [6.00000, 0.50000, -1.00000, 1.00000, -1.00000]
	assert candidate([["a", "b"]], [0.5], [["a", "b"], ["b", "a"], ["a", "c"], ["x", "y"]]) == [0.5, 2.0, -1.0, -1.0]
	assert candidate([["a", "b"], ["b", "c"], ["bc", "cd"]], [1.5, 2.5, 5.0], [["a", "c"], ["c", "b"], ["bc", "cd"], ["cd", "bc"]]) == [3.75, 0.4, 5.0, 0.2]
	assert candidate([["a", "b"], ["c", "d"]], [1.0, 2.0], [["a", "b"], ["c", "d"], ["a", "c"]]) == [1.0, 2.0, -1.0]
	assert candidate([["a", "b"], ["b", "c"], ["bc", "cd"]], [1.5, 2.5, 5.0], [["a", "c"], ["c", "b"], ["bc", "cd"], ["cd", "bc"]]) == [3.75000, 0.40000, 5.00000, 0.20000]
	assert candidate([["a", "b"]], [2.0], [["b", "a"], ["a", "b"], ["a", "a"], ["b", "b"]]) == [0.5, 2.0, 1.0, 1.0]
	assert candidate([["a","b"]], [0.5], [["a","b"],["b","a"],["a","c"],["x","y"]]) == [0.50000, 2.00000, -1.00000, -1.00000]
	assert candidate([["a", "b"]], [2.0], [["a", "b"], ["b", "a"], ["a", "c"], ["b", "c"]]) == [2.0, 0.5, -1.0, -1.0]
	assert candidate([["a","b"],["b","c"],["bc","cd"]], [1.5,2.5,5.0], [["a","c"],["c","b"],["bc","cd"],["cd","bc"]]) == [3.75000, 0.40000, 5.00000, 0.20000]
def test_check():
	check(calcEquation)
# Metadata Difficulty: Medium
# Metadata Topics: array,depth-first-search,breadth-first-search,union-find,graph,shortest-path
# Metadata Coverage: 100
