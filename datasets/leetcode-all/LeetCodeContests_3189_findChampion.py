from typing import List

def findChampion(n: int, edges: List[List[int]]) -> int:
    """
    There are n teams numbered from 0 to n - 1 in a tournament; each team is also a node in a DAG.
    
    You are given the integer n and a 0-indexed 2D integer array edges of length m representing the DAG, where edges[i] = [ui, vi] indicates that there is a directed edge from team ui to team vi in the graph.
    
    A directed edge from a to b in the graph means that team a is stronger than team b and team b is weaker than team a.
    
    Team a will be the champion of the tournament if there is no team b that is stronger than team a.
    
    Return the team that will be the champion of the tournament if there is a unique champion, otherwise, return -1.
    
    Notes
    
     * A cycle is a series of nodes a1, a2, ..., an, an+1 such that node a1 is the same node as node an+1, the nodes a1, a2, ..., an are distinct, and there is a directed edge from the node ai to node ai+1 for every i in the range [1, n].
     * A DAG is a directed graph that does not have any cycle.
    
    Example 1:
    
    [https://assets.leetcode.com/uploads/2023/10/19/graph-3.png]
    
    Input: n = 3, edges = [[0,1],[1,2]]
    Output: 0
    Explanation: Team 1 is weaker than team 0. Team 2 is weaker than team 1. So the champion is team 0.
    
    Example 2:
    
    [https://assets.leetcode.com/uploads/2023/10/19/graph-4.png]
    
    Input: n = 4, edges = [[0,2],[1,3],[1,2]]
    Output: -1
    Explanation: Team 2 is weaker than team 0 and team 1. Team 3 is weaker than team 1. But team 1 and team 0 are not weaker than any other teams. So the answer is -1.
    
    
    Constraints:
    
     * 1 <= n <= 100
     * m == edges.length
     * 0 <= m <= n * (n - 1) / 2
     * edges[i].length == 2
     * 0 <= edge[i][j] <= n - 1
     * edges[i][0] != edges[i][1]
     * The input is generated such that if team a is stronger than team b, team b is not stronger than team a.
     * The input is generated such that if team a is stronger than team b and team b is stronger than team c, then team a is stronger than team c.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(3, [[0, 1], [1, 2]]) == 0
    assert candidate(4, [[0, 2], [1, 3], [1, 2]]) == -1
    assert candidate(1, []) == 0
    assert candidate(2, []) == -1
    assert candidate(2, [[0, 1]]) == 0
    assert candidate(2, [[1, 0]]) == 1
    assert candidate(3, []) == -1
    assert candidate(3, [[0, 1]]) == -1
    assert candidate(3, [[0, 2]]) == -1
    assert candidate(3, [[1, 2]]) == -1
    assert candidate(3, [[2, 0]]) == -1
    assert candidate(3, [[0, 1], [2, 1]]) == -1
    assert candidate(3, [[0, 2], [0, 1]]) == 0
    assert candidate(3, [[0, 2], [1, 0]]) == 1
    assert candidate(3, [[2, 0], [1, 0]]) == -1
    assert candidate(3, [[2, 0], [2, 1]]) == 2
    assert candidate(3, [[2, 1], [2, 0]]) == 2
    assert candidate(3, [[0, 1], [1, 2], [0, 2]]) == 0
    assert candidate(3, [[0, 1], [2, 1], [0, 2]]) == 0
    assert candidate(3, [[0, 2], [0, 1], [1, 2]]) == 0
    assert candidate(3, [[0, 2], [0, 1], [2, 1]]) == 0
    assert candidate(3, [[0, 2], [1, 2], [1, 0]]) == 1
    assert candidate(3, [[1, 0], [0, 2], [1, 2]]) == 1
    assert candidate(3, [[2, 1], [1, 0], [2, 0]]) == 2
    assert candidate(4, []) == -1
    assert candidate(4, [[0, 2]]) == -1
    assert candidate(4, [[1, 0]]) == -1
    assert candidate(4, [[1, 3]]) == -1
    assert candidate(4, [[3, 2]]) == -1
    assert candidate(4, [[0, 1], [2, 3]]) == -1
    assert candidate(4, [[0, 3], [2, 3]]) == -1
    assert candidate(4, [[1, 3], [2, 1]]) == -1
    assert candidate(4, [[2, 1], [1, 3]]) == -1
    assert candidate(4, [[3, 0], [3, 1]]) == -1
    assert candidate(4, [[0, 1], [2, 0], [2, 1]]) == -1
    assert candidate(4, [[0, 2], [3, 2], [1, 2]]) == -1
    assert candidate(4, [[1, 0], [2, 3], [1, 2]]) == 1
    assert candidate(4, [[1, 2], [0, 3], [1, 3]]) == -1
    assert candidate(4, [[1, 2], [1, 0], [1, 3]]) == 1
    assert candidate(4, [[1, 3], [1, 2], [0, 3]]) == -1
    assert candidate(4, [[1, 3], [3, 0], [2, 0]]) == -1
    assert candidate(4, [[3, 1], [2, 0], [1, 2]]) == 3
    assert candidate(4, [[3, 1], [2, 1], [0, 2]]) == -1
    assert candidate(4, [[0, 2], [0, 3], [1, 2], [1, 0]]) == 1
    assert candidate(4, [[2, 0], [2, 3], [3, 1], [2, 1]]) == 2
    assert candidate(4, [[2, 1], [1, 0], [3, 0], [2, 0]]) == -1
    assert candidate(4, [[3, 0], [3, 1], [2, 1], [0, 1]]) == -1
    assert candidate(4, [[3, 0], [1, 0], [1, 2], [3, 2], [2, 0]]) == -1
    assert candidate(4, [[3, 0], [2, 0], [1, 0], [2, 3], [1, 2]]) == 1
    assert candidate(4, [[3, 2], [0, 1], [3, 0], [3, 1], [2, 0]]) == 3
    assert candidate(4, [[0, 3], [2, 3], [2, 1], [1, 0], [2, 0], [1, 3]]) == 2
    assert candidate(4, [[1, 2], [2, 3], [0, 2], [0, 1], [0, 3], [1, 3]]) == 0
    assert candidate(4, [[2, 1], [3, 1], [3, 0], [3, 2], [2, 0], [0, 1]]) == 3
    assert candidate(4, [[2, 3], [2, 1], [0, 1], [0, 3], [3, 1], [0, 2]]) == 0
    assert candidate(5, []) == -1
    assert candidate(5, [[0, 2]]) == -1
    assert candidate(5, [[2, 0]]) == -1
    assert candidate(5, [[4, 0]]) == -1
    assert candidate(5, [[1, 4], [2, 0]]) == -1
    assert candidate(5, [[2, 0], [4, 3]]) == -1
    assert candidate(5, [[3, 2], [0, 2]]) == -1
    assert candidate(5, [[3, 4], [2, 1]]) == -1
    assert candidate(5, [[0, 4], [1, 4], [0, 1]]) == -1
    assert candidate(5, [[1, 3], [4, 2], [1, 0]]) == -1
    assert candidate(5, [[2, 3], [4, 1], [3, 0]]) == -1
    assert candidate(5, [[0, 4], [2, 0], [1, 3], [2, 4]]) == -1
    assert candidate(5, [[0, 1], [2, 1], [4, 1], [4, 2], [4, 0]]) == -1
    assert candidate(5, [[0, 2], [2, 1], [3, 2], [4, 1], [0, 4]]) == -1
    assert candidate(5, [[2, 3], [0, 4], [1, 4], [1, 0], [4, 3]]) == -1
    assert candidate(5, [[3, 1], [0, 2], [4, 2], [0, 1], [1, 2]]) == -1
    assert candidate(5, [[3, 2], [3, 4], [3, 0], [3, 1], [0, 2]]) == 3
    assert candidate(5, [[4, 0], [3, 0], [2, 4], [3, 4], [4, 1]]) == -1
    assert candidate(5, [[4, 3], [1, 0], [1, 2], [3, 2], [4, 1]]) == 4
    assert candidate(5, [[2, 1], [0, 3], [0, 1], [0, 4], [0, 2], [4, 1]]) == 0
    assert candidate(5, [[2, 1], [4, 1], [3, 0], [2, 0], [3, 4], [3, 2]]) == 3
    assert candidate(5, [[0, 1], [0, 4], [2, 0], [3, 4], [3, 1], [2, 1], [3, 0]]) == -1
    assert candidate(5, [[1, 4], [3, 1], [0, 1], [3, 0], [0, 2], [2, 4], [3, 4]]) == 3
    assert candidate(5, [[3, 2], [1, 2], [2, 0], [2, 4], [1, 4], [3, 1], [3, 4]]) == 3
    assert candidate(5, [[0, 4], [0, 3], [4, 3], [4, 2], [1, 2], [4, 1], [0, 1], [3, 2]]) == 0
    assert candidate(5, [[4, 3], [4, 2], [4, 1], [2, 3], [4, 0], [3, 1], [2, 0], [0, 3]]) == 4
    assert candidate(5, [[1, 2], [1, 4], [2, 3], [0, 2], [1, 0], [1, 3], [0, 3], [4, 3], [0, 4]]) == 1
    assert candidate(5, [[1, 3], [3, 0], [3, 4], [2, 0], [3, 2], [0, 4], [2, 4], [1, 0], [1, 2]]) == 1
    assert candidate(5, [[3, 0], [4, 0], [3, 2], [0, 1], [0, 2], [4, 3], [1, 2], [4, 2], [3, 1]]) == 4
    assert candidate(5, [[4, 0], [2, 3], [4, 3], [4, 2], [2, 0], [4, 1], [1, 3], [1, 0], [3, 0]]) == 4
    assert candidate(5, [[0, 2], [1, 3], [4, 1], [4, 2], [2, 1], [0, 3], [0, 1], [2, 3], [0, 4], [4, 3]]) == 0
    assert candidate(5, [[2, 0], [4, 0], [3, 4], [4, 2], [1, 2], [1, 0], [3, 1], [3, 0], [1, 4], [3, 2]]) == 3
    assert candidate(6, []) == -1
    assert candidate(6, [[2, 1]]) == -1
    assert candidate(6, [[2, 3]]) == -1
    assert candidate(6, [[3, 5]]) == -1
    assert candidate(6, [[5, 4]]) == -1
    assert candidate(6, [[1, 2], [4, 3]]) == -1
    assert candidate(6, [[0, 4], [4, 5], [3, 1]]) == -1
    assert candidate(6, [[0, 4], [5, 2], [5, 4], [3, 0], [1, 0]]) == -1
    assert candidate(6, [[1, 0], [1, 4], [0, 2], [3, 5], [3, 4]]) == -1
    assert candidate(6, [[5, 0], [2, 4], [0, 4], [3, 2], [2, 0]]) == -1
    assert candidate(6, [[1, 2], [3, 2], [3, 5], [4, 0], [1, 5], [0, 5]]) == -1
    assert candidate(6, [[3, 2], [1, 2], [3, 0], [5, 0], [5, 1], [5, 3]]) == -1
    assert candidate(6, [[4, 2], [0, 4], [1, 3], [3, 4], [1, 2], [1, 0]]) == -1
    assert candidate(6, [[0, 5], [2, 0], [1, 5], [3, 2], [2, 1], [2, 4], [4, 5]]) == 3


def test_check():
    check(findChampion)


### Metadata below ###
# question_id = 3189
# question_title = Find Champion II
# question_title_slug = find-champion-ii
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 92
# question_dislikes = 7