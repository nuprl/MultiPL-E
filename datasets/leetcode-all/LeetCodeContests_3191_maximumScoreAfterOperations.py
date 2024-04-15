from typing import List

def maximumScoreAfterOperations(edges: List[List[int]], values: List[int]) -> int:
    """
    There is an undirected tree with n nodes labeled from 0 to n - 1, and rooted at node 0. You are given a 2D integer array edges of length n - 1, where edges[i] = [ai, bi] indicates that there is an edge between nodes ai and bi in the tree.
    
    You are also given a 0-indexed integer array values of length n, where values[i] is the value associated with the ith node.
    
    You start with a score of 0. In one operation, you can:
    
     * Pick any node i.
     * Add values[i] to your score.
     * Set values[i] to 0.
    
    A tree is healthy if the sum of values on the path from the root to any leaf node is different than zero.
    
    Return the maximum score you can obtain after performing these operations on the tree any number of times so that it remains healthy.
    
    Example 1:
    
    [https://assets.leetcode.com/uploads/2023/10/11/graph-13-1.png]
    
    Input: edges = [[0,1],[0,2],[0,3],[2,4],[4,5]], values = [5,2,5,2,1,1]
    Output: 11
    Explanation: We can choose nodes 1, 2, 3, 4, and 5. The value of the root is non-zero. Hence, the sum of values on the path from the root to any leaf is different than zero. Therefore, the tree is healthy and the score is values[1] + values[2] + values[3] + values[4] + values[5] = 11.
    It can be shown that 11 is the maximum score obtainable after any number of operations on the tree.
    
    Example 2:
    
    [https://assets.leetcode.com/uploads/2023/10/11/graph-14-2.png]
    
    Input: edges = [[0,1],[0,2],[1,3],[1,4],[2,5],[2,6]], values = [20,10,9,7,4,3,5]
    Output: 40
    Explanation: We can choose nodes 0, 2, 3, and 4.
    - The sum of values on the path from 0 to 4 is equal to 10.
    - The sum of values on the path from 0 to 3 is equal to 10.
    - The sum of values on the path from 0 to 5 is equal to 3.
    - The sum of values on the path from 0 to 6 is equal to 5.
    Therefore, the tree is healthy and the score is values[0] + values[2] + values[3] + values[4] = 40.
    It can be shown that 40 is the maximum score obtainable after any number of operations on the tree.
    
    
    Constraints:
    
     * 2 <= n <= 2 * 104
     * edges.length == n - 1
     * edges[i].length == 2
     * 0 <= ai, bi < n
     * values.length == n
     * 1 <= values[i] <= 109
     * The input is generated such that edges represents a valid tree.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[0, 1], [0, 2], [0, 3], [2, 4], [4, 5]], [5, 2, 5, 2, 1, 1]) == 11
    assert candidate([[0, 1], [0, 2], [1, 3], [1, 4], [2, 5], [2, 6]], [20, 10, 9, 7, 4, 3, 5]) == 40
    assert candidate([[0, 1]], [1, 2]) == 2
    assert candidate([[0, 1]], [2, 1]) == 2
    assert candidate([[0, 1], [0, 2]], [1000000000, 1000000000, 1000000000]) == 2000000000
    assert candidate([[0, 1], [0, 2], [0, 3]], [1000000000, 1000000000, 1000000000, 1000000000]) == 3000000000
    assert candidate([[7, 0], [3, 1], [6, 2], [4, 3], [4, 5], [4, 6], [4, 7]], [2, 16, 23, 17, 22, 21, 8, 6]) == 113
    assert candidate([[3, 1], [0, 2], [0, 3]], [21, 12, 19, 5]) == 36
    assert candidate([[2, 0], [4, 1], [5, 3], [4, 6], [2, 4], [5, 2], [5, 7]], [12, 12, 7, 9, 2, 11, 12, 25]) == 83
    assert candidate([[1, 0], [9, 1], [6, 2], [7, 4], [3, 5], [7, 3], [9, 6], [7, 8], [7, 9]], [14, 17, 13, 18, 17, 10, 23, 19, 22, 2]) == 153
    assert candidate([[5, 0], [4, 3], [2, 5], [6, 2], [4, 6], [1, 4], [1, 7]], [15, 12, 13, 23, 8, 1, 2, 23]) == 96
    assert candidate([[0, 2], [1, 3], [0, 5], [1, 0], [4, 1], [4, 6]], [22, 25, 4, 21, 8, 20, 4]) == 82
    assert candidate([[4, 1], [6, 3], [2, 4], [0, 2], [9, 5], [0, 6], [9, 7], [0, 8], [0, 9]], [3, 18, 10, 16, 9, 3, 25, 17, 8, 9]) == 115
    assert candidate([[6, 1], [3, 4], [0, 3], [2, 0], [5, 2], [5, 6]], [25, 20, 16, 2, 13, 8, 19]) == 93
    assert candidate([[9, 2], [5, 4], [5, 6], [1, 5], [8, 1], [0, 7], [3, 0], [9, 3], [8, 9]], [21, 13, 10, 14, 20, 11, 19, 22, 3, 16]) == 128
    assert candidate([[2, 4], [1, 5], [0, 1], [2, 0], [3, 2], [3, 6]], [17, 5, 24, 18, 6, 16, 1]) == 75
    assert candidate([[1, 2], [4, 1], [3, 6], [4, 3], [5, 4], [0, 5], [0, 7]], [8, 13, 19, 13, 4, 3, 24, 25]) == 101
    assert candidate([[9, 0], [7, 1], [6, 3], [8, 4], [2, 5], [9, 6], [2, 8], [7, 2], [7, 9]], [4, 13, 21, 1, 25, 8, 21, 22, 9, 18]) == 138
    assert candidate([[1, 0], [4, 3], [1, 5], [6, 1], [4, 6], [2, 7], [4, 2], [4, 8]], [10, 5, 25, 19, 2, 20, 15, 3, 3]) == 97
    assert candidate([[6, 1], [3, 4], [2, 5], [0, 6], [3, 0], [2, 3], [2, 7]], [2, 23, 10, 20, 22, 10, 6, 24]) == 115
    assert candidate([[2, 1], [0, 2], [5, 0], [4, 3], [5, 4], [5, 6]], [9, 21, 12, 20, 5, 2, 13]) == 73
    assert candidate([[8, 1], [7, 4], [0, 5], [2, 0], [3, 2], [8, 3], [7, 6], [7, 8]], [23, 24, 25, 12, 12, 7, 1, 17, 17]) == 119
    assert candidate([[3, 0], [3, 1], [2, 3]], [19, 8, 8, 5]) == 35
    assert candidate([[5, 0], [7, 1], [3, 2], [6, 4], [6, 5], [3, 6], [3, 7]], [19, 7, 17, 9, 13, 7, 25, 3]) == 93
    assert candidate([[3, 1], [2, 3], [0, 2], [0, 4]], [14, 15, 18, 15, 20]) == 68
    assert candidate([[6, 0], [2, 1], [6, 2], [6, 4], [5, 7], [6, 5], [3, 6], [9, 3], [8, 9]], [17, 20, 17, 13, 5, 12, 8, 12, 14, 25]) == 135
    assert candidate([[4, 1], [6, 2], [9, 3], [0, 6], [0, 7], [9, 0], [4, 8], [5, 4], [5, 9]], [11, 16, 10, 25, 21, 25, 15, 10, 5, 7]) == 134
    assert candidate([[1, 0], [3, 1], [2, 3]], [25, 19, 12, 2]) == 56
    assert candidate([[4, 1], [0, 2], [4, 0], [3, 4]], [12, 24, 1, 11, 3]) == 47
    assert candidate([[1, 0], [5, 1], [2, 4], [3, 2], [3, 5]], [21, 2, 17, 18, 22, 16]) == 94
    assert candidate([[5, 1], [4, 3], [2, 4], [6, 2], [0, 5], [0, 6]], [18, 24, 5, 20, 23, 6, 7]) == 92
    assert candidate([[4, 1], [6, 3], [2, 4], [5, 2], [0, 5], [0, 6]], [19, 2, 23, 18, 3, 12, 9]) == 75
    assert candidate([[5, 0], [2, 1], [6, 3], [5, 4], [2, 5], [2, 6]], [22, 11, 2, 11, 3, 11, 17]) == 72
    assert candidate([[6, 0], [4, 1], [3, 2], [6, 5], [4, 6], [3, 4], [3, 7], [3, 8]], [18, 20, 14, 23, 20, 8, 24, 12, 1]) == 122
    assert candidate([[1, 2], [0, 1], [0, 3], [0, 4]], [6, 8, 2, 16, 6]) == 32
    assert candidate([[6, 1], [3, 4], [3, 5], [0, 3], [2, 0], [2, 6]], [5, 25, 2, 12, 15, 3, 3]) == 60
    assert candidate([[4, 0], [2, 1], [2, 3], [2, 4]], [9, 5, 14, 24, 19]) == 62
    assert candidate([[4, 0], [2, 1], [6, 3], [2, 5], [4, 6], [2, 4], [7, 2], [7, 8]], [19, 10, 14, 18, 17, 8, 2, 8, 24]) == 104
    assert candidate([[6, 0], [7, 1], [5, 3], [2, 4], [8, 5], [6, 7], [2, 6], [2, 8]], [8, 8, 19, 17, 24, 1, 7, 18, 12]) == 107
    assert candidate([[6, 0], [3, 1], [3, 2], [3, 6], [4, 3], [5, 4], [5, 7]], [15, 3, 25, 2, 10, 11, 10, 13]) == 87
    assert candidate([[7, 3], [2, 5], [4, 2], [0, 4], [7, 0], [1, 6], [1, 7]], [1, 19, 5, 1, 18, 24, 4, 20]) == 91
    assert candidate([[7, 3], [2, 4], [9, 2], [1, 5], [1, 7], [0, 1], [9, 0], [6, 8], [6, 9]], [21, 10, 9, 25, 7, 20, 5, 8, 20, 5]) == 115
    assert candidate([[3, 1], [4, 5], [0, 4], [2, 0], [3, 2], [3, 6]], [13, 11, 16, 12, 20, 1, 7]) == 67
    assert candidate([[2, 0], [3, 1], [6, 2], [6, 3], [5, 4], [7, 5], [6, 7]], [21, 20, 8, 21, 11, 12, 23, 4]) == 112
    assert candidate([[0, 2], [7, 4], [1, 6], [5, 1], [3, 5], [0, 3], [0, 7]], [8, 6, 9, 5, 4, 1, 8, 6]) == 39
    assert candidate([[5, 1], [8, 3], [0, 4], [8, 0], [2, 5], [2, 7], [9, 2], [6, 8], [6, 9]], [2, 22, 2, 19, 25, 14, 11, 24, 7, 6]) == 130
    assert candidate([[3, 0], [3, 1], [2, 3]], [24, 24, 4, 12]) == 52
    assert candidate([[2, 0], [3, 1], [2, 3]], [7, 10, 13, 8]) == 31
    assert candidate([[1, 0], [3, 1], [6, 4], [3, 5], [2, 3], [2, 6]], [6, 14, 4, 17, 16, 19, 24]) == 94
    assert candidate([[0, 1], [3, 0], [8, 3], [2, 4], [8, 5], [2, 6], [8, 2], [7, 8]], [22, 19, 10, 16, 14, 11, 2, 17, 9]) == 98
    assert candidate([[5, 1], [5, 2], [0, 3], [0, 4], [0, 5]], [21, 18, 2, 20, 1, 1]) == 42
    assert candidate([[6, 0], [3, 2], [1, 3], [6, 4], [1, 5], [1, 6]], [14, 19, 22, 6, 19, 12, 20]) == 98
    assert candidate([[6, 0], [4, 1], [2, 3], [5, 2], [6, 4], [5, 6]], [16, 16, 9, 12, 5, 14, 17]) == 75
    assert candidate([[2, 1], [4, 2], [0, 3], [0, 4]], [9, 6, 7, 17, 19]) == 49
    assert candidate([[1, 3], [2, 1], [4, 5], [2, 4], [0, 2], [0, 6]], [4, 19, 10, 25, 16, 13, 6]) == 89
    assert candidate([[1, 0], [5, 1], [2, 5], [3, 2], [4, 6], [3, 4], [3, 7]], [12, 9, 19, 10, 24, 22, 18, 16]) == 121
    assert candidate([[0, 1], [0, 2], [0, 3]], [25, 23, 7, 9]) == 39
    assert candidate([[3, 0], [3, 2], [4, 5], [9, 6], [4, 7], [9, 4], [3, 8], [1, 3], [1, 9]], [23, 22, 7, 22, 19, 12, 10, 11, 24, 3]) == 131
    assert candidate([[0, 1], [0, 2], [0, 3]], [9, 8, 24, 21]) == 53
    assert candidate([[3, 1], [0, 2], [0, 3]], [17, 2, 2, 4]) == 21
    assert candidate([[5, 2], [3, 4], [0, 3], [1, 0], [1, 5]], [16, 6, 15, 15, 10, 1]) == 52
    assert candidate([[8, 0], [8, 1], [7, 2], [3, 7], [6, 3], [4, 6], [5, 4], [5, 8]], [10, 25, 10, 6, 21, 17, 11, 15, 15]) == 120
    assert candidate([[0, 4], [1, 5], [2, 6], [0, 2], [1, 0], [3, 1], [3, 7]], [20, 1, 16, 12, 5, 23, 21, 4]) == 82
    assert candidate([[7, 1], [5, 2], [0, 3], [7, 0], [7, 4], [6, 5], [6, 7]], [6, 20, 14, 17, 18, 16, 11, 1]) == 97
    assert candidate([[3, 2], [8, 4], [1, 6], [0, 1], [5, 0], [3, 5], [8, 3], [7, 8]], [3, 18, 16, 22, 10, 2, 7, 3, 10]) == 88
    assert candidate([[4, 0], [3, 4], [3, 5], [3, 6], [2, 3], [1, 2], [1, 7]], [12, 14, 7, 25, 13, 16, 12, 15]) == 102
    assert candidate([[3, 0], [5, 2], [1, 3], [4, 1], [4, 5]], [11, 18, 19, 14, 8, 11]) == 73
    assert candidate([[1, 2], [4, 1], [0, 4], [8, 5], [0, 6], [7, 0], [3, 7], [3, 8]], [17, 22, 14, 15, 2, 21, 7, 9, 1]) == 98
    assert candidate([[2, 1], [0, 2], [4, 3], [0, 4], [0, 5]], [1, 2, 24, 25, 9, 24]) == 84
    assert candidate([[3, 1], [3, 2], [0, 4], [3, 5], [0, 3], [0, 6]], [21, 19, 5, 20, 2, 25, 20]) == 91
    assert candidate([[1, 0], [4, 1], [4, 2], [3, 4]], [3, 6, 17, 4, 20]) == 47
    assert candidate([[6, 1], [2, 3], [6, 7], [4, 6], [2, 4], [5, 2], [5, 8], [0, 5], [0, 9]], [23, 19, 15, 4, 3, 18, 25, 22, 6, 11]) == 123
    assert candidate([[2, 0], [1, 2], [5, 1], [3, 4], [3, 5]], [23, 24, 10, 15, 10, 22]) == 94
    assert candidate([[1, 0], [6, 1], [6, 2], [4, 3], [5, 4], [5, 6]], [18, 21, 3, 13, 25, 15, 20]) == 99
    assert candidate([[1, 0], [3, 1], [2, 3]], [23, 10, 24, 15]) == 62
    assert candidate([[1, 0], [1, 2], [1, 3]], [10, 4, 12, 14]) == 36
    assert candidate([[2, 0], [3, 2], [1, 3], [4, 5], [1, 4], [1, 6]], [3, 8, 13, 11, 6, 18, 8]) == 64
    assert candidate([[3, 0], [3, 2], [1, 3], [1, 4]], [18, 19, 7, 7, 2]) == 46
    assert candidate([[7, 0], [5, 2], [1, 3], [7, 4], [1, 5], [7, 1], [6, 7]], [24, 24, 16, 17, 25, 9, 3, 23]) == 118
    assert candidate([[2, 0], [2, 1], [2, 3]], [25, 12, 5, 7]) == 44
    assert candidate([[0, 1], [2, 0], [2, 3], [2, 4]], [24, 14, 9, 5, 24]) == 53
    assert candidate([[6, 2], [7, 3], [0, 5], [4, 0], [1, 6], [4, 1], [4, 7]], [20, 15, 15, 2, 22, 7, 19, 24]) == 104
    assert candidate([[1, 0], [4, 2], [7, 5], [3, 6], [1, 3], [4, 1], [4, 7]], [11, 21, 15, 23, 2, 7, 21, 3]) == 92
    assert candidate([[4, 0], [2, 1], [2, 3], [2, 4]], [22, 20, 20, 8, 14]) == 70
    assert candidate([[0, 2], [4, 3], [0, 4], [1, 0], [1, 6], [5, 1], [5, 7]], [18, 10, 19, 9, 11, 14, 11, 18]) == 92
    assert candidate([[6, 1], [4, 2], [4, 3], [0, 5], [4, 0], [4, 6]], [18, 10, 5, 23, 16, 13, 1]) == 68
    assert candidate([[4, 0], [6, 2], [6, 3], [6, 4], [1, 5], [7, 1], [6, 7]], [14, 15, 22, 9, 13, 2, 25, 3]) == 90
    assert candidate([[6, 2], [0, 3], [5, 0], [1, 5], [4, 1], [4, 6]], [22, 10, 19, 14, 18, 24, 8]) == 93
    assert candidate([[0, 1], [0, 2], [0, 3]], [6, 22, 9, 5]) == 36
    assert candidate([[2, 1], [0, 2], [6, 0], [6, 4], [3, 5], [3, 6], [3, 7]], [9, 16, 13, 9, 19, 1, 16, 19]) == 93
    assert candidate([[3, 5], [7, 3], [0, 6], [4, 0], [1, 4], [2, 1], [2, 7]], [16, 9, 8, 14, 6, 18, 23, 25]) == 103
    assert candidate([[7, 1], [4, 5], [3, 6], [4, 3], [2, 4], [0, 2], [0, 7]], [7, 22, 12, 22, 5, 3, 6, 7]) == 77
    assert candidate([[5, 0], [4, 1], [5, 2], [3, 5], [4, 3], [7, 4], [6, 7]], [19, 16, 8, 13, 15, 13, 3, 5]) == 79
    assert candidate([[7, 1], [6, 2], [3, 5], [8, 3], [0, 6], [4, 0], [7, 4], [7, 8]], [23, 11, 22, 6, 19, 6, 19, 8, 25]) == 116
    assert candidate([[4, 0], [4, 2], [1, 3], [4, 1], [4, 5]], [23, 22, 13, 1, 11, 25]) == 84
    assert candidate([[4, 0], [4, 1], [2, 3], [2, 4]], [3, 17, 5, 24, 14]) == 60
    assert candidate([[4, 0], [2, 4], [1, 2], [3, 1], [3, 5]], [6, 12, 21, 6, 8, 8]) == 55
    assert candidate([[4, 2], [5, 4], [0, 5], [0, 6], [3, 0], [1, 3], [7, 8], [1, 7], [1, 9]], [25, 16, 16, 14, 22, 19, 2, 22, 13, 11]) == 135
    assert candidate([[4, 0], [1, 3], [4, 1], [7, 5], [2, 6], [4, 2], [4, 7]], [23, 16, 24, 25, 3, 21, 3, 25]) == 137
    assert candidate([[0, 1], [2, 0], [2, 3]], [22, 17, 9, 9]) == 35


def test_check():
    check(maximumScoreAfterOperations)


### Metadata below ###
# question_id = 3191
# question_title = Maximum Score After Applying Operations on a Tree
# question_title_slug = maximum-score-after-applying-operations-on-a-tree
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 243
# question_dislikes = 45