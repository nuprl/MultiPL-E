from typing import List

def maxKDivisibleComponents(n: int, edges: List[List[int]], values: List[int], k: int) -> int:
    """
    There is an undirected tree with n nodes labeled from 0 to n - 1. You are given the integer n and a 2D integer array edges of length n - 1, where edges[i] = [ai, bi] indicates that there is an edge between nodes ai and bi in the tree.
    
    You are also given a 0-indexed integer array values of length n, where values[i] is the value associated with the ith node, and an integer k.
    
    A valid split of the tree is obtained by removing any set of edges, possibly empty, from the tree such that the resulting components all have values that are divisible by k, where the value of a connected component is the sum of the values of its nodes.
    
    Return the maximum number of components in any valid split.
    
    Example 1:
    
    [https://assets.leetcode.com/uploads/2023/08/07/example12-cropped2svg.jpg]
    
    Input: n = 5, edges = [[0,2],[1,2],[1,3],[2,4]], values = [1,8,1,4,4], k = 6
    Output: 2
    Explanation: We remove the edge connecting node 1 with 2. The resulting split is valid because:
    - The value of the component containing nodes 1 and 3 is values[1] + values[3] = 12.
    - The value of the component containing nodes 0, 2, and 4 is values[0] + values[2] + values[4] = 6.
    It can be shown that no other valid split has more than 2 connected components.
    
    Example 2:
    
    [https://assets.leetcode.com/uploads/2023/08/07/example21svg-1.jpg]
    
    Input: n = 7, edges = [[0,1],[0,2],[1,3],[1,4],[2,5],[2,6]], values = [3,0,6,1,5,2,1], k = 3
    Output: 3
    Explanation: We remove the edge connecting node 0 with 2, and the edge connecting node 0 with 1. The resulting split is valid because:
    - The value of the component containing node 0 is values[0] = 3.
    - The value of the component containing nodes 2, 5, and 6 is values[2] + values[5] + values[6] = 9.
    - The value of the component containing nodes 1, 3, and 4 is values[1] + values[3] + values[4] = 6.
    It can be shown that no other valid split has more than 3 connected components.
    
    
    Constraints:
    
     * 1 <= n <= 3 * 104
     * edges.length == n - 1
     * edges[i].length == 2
     * 0 <= ai, bi < n
     * values.length == n
     * 0 <= values[i] <= 109
     * 1 <= k <= 109
     * Sum of values is divisible by k.
     * The input is generated such that edges represents a valid tree.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5, [[0, 2], [1, 2], [1, 3], [2, 4]], [1, 8, 1, 4, 4], 6) == 2
    assert candidate(7, [[0, 1], [0, 2], [1, 3], [1, 4], [2, 5], [2, 6]], [3, 0, 6, 1, 5, 2, 1], 3) == 3
    assert candidate(1, [], [0], 1) == 1
    assert candidate(1, [], [10000], 100) == 1
    assert candidate(2, [[1, 0]], [0, 0], 100000000) == 2
    assert candidate(2, [[0, 1]], [1, 2], 1) == 2
    assert candidate(2, [[1, 0]], [10000, 10000], 4) == 2
    assert candidate(3, [[0, 2], [2, 1]], [0, 0, 0], 1) == 3
    assert candidate(3, [[1, 0], [2, 0]], [1, 1, 2], 2) == 2
    assert candidate(3, [[1, 2], [2, 0]], [0, 2, 2], 4) == 2
    assert candidate(3, [[1, 0], [0, 2]], [0, 1, 2], 3) == 1
    assert candidate(4, [[0, 1], [1, 2], [2, 3]], [0, 0, 0, 0], 9999999) == 4
    assert candidate(9, [[1, 2], [1, 7], [0, 6], [0, 8], [0, 3], [3, 4], [0, 5], [2, 5]], [1, 4, 4, 0, 2, 1, 1, 6, 2], 7) == 2
    assert candidate(9, [[5, 0], [5, 1], [1, 6], [1, 7], [5, 8], [0, 3], [2, 4], [5, 2]], [3, 0, 10, 0, 6, 1, 1, 3, 0], 8) == 4
    assert candidate(6, [[5, 0], [1, 4], [4, 3], [4, 2], [5, 4]], [1, 2, 2, 2, 0, 2], 3) == 2
    assert candidate(4, [[0, 3], [1, 2], [0, 2]], [12, 6, 0, 18], 6) == 4
    assert candidate(10, [[8, 7], [8, 3], [7, 6], [6, 2], [6, 4], [3, 9], [4, 1], [6, 0], [2, 5]], [2, 2, 2, 0, 1, 3, 1, 0, 3, 1], 1) == 10
    assert candidate(8, [[0, 4], [4, 1], [0, 3], [1, 2], [0, 5], [5, 7], [1, 6]], [2, 6, 2, 2, 2, 0, 0, 0], 7) == 4
    assert candidate(9, [[1, 5], [5, 2], [1, 8], [2, 0], [2, 6], [1, 7], [6, 4], [7, 3]], [8, 8, 12, 12, 8, 8, 8, 8, 4], 4) == 9
    assert candidate(7, [[0, 3], [3, 2], [3, 5], [0, 6], [0, 1], [6, 4]], [12, 6, 6, 12, 18, 18, 12], 6) == 7
    assert candidate(4, [[1, 3], [0, 2], [1, 0]], [2, 6, 1, 9], 3) == 3
    assert candidate(5, [[2, 0], [0, 1], [2, 3], [2, 4]], [0, 2, 10, 0, 18], 6) == 3
    assert candidate(6, [[3, 5], [3, 0], [5, 2], [5, 4], [3, 1]], [3, 3, 0, 18, 0, 0], 8) == 4
    assert candidate(10, [[9, 5], [4, 9], [5, 8], [3, 6], [8, 6], [0, 1], [9, 0], [6, 2], [3, 7]], [10, 14, 12, 4, 12, 1, 8, 36, 12, 11], 12) == 7
    assert candidate(7, [[3, 0], [0, 4], [2, 6], [3, 6], [2, 1], [1, 5]], [5, 36, 21, 7, 36, 36, 15], 12) == 5
    assert candidate(5, [[2, 3], [2, 0], [2, 4], [3, 1]], [3, 0, 3, 15, 3], 8) == 2
    assert candidate(10, [[9, 1], [1, 7], [7, 3], [3, 6], [1, 8], [9, 4], [3, 0], [3, 5], [9, 2]], [9, 9, 18, 9, 9, 18, 9, 9, 18, 27], 9) == 10
    assert candidate(4, [[2, 1], [2, 0], [2, 3]], [2, 0, 8, 10], 5) == 3
    assert candidate(5, [[2, 4], [4, 0], [0, 1], [0, 3]], [10, 20, 10, 30, 30], 10) == 5
    assert candidate(10, [[5, 6], [5, 4], [5, 1], [5, 0], [1, 7], [0, 8], [0, 2], [8, 9], [3, 8]], [4, 0, 2, 9, 2, 8, 0, 2, 0, 0], 9) == 5
    assert candidate(9, [[5, 6], [5, 1], [6, 0], [6, 8], [8, 2], [7, 3], [8, 3], [8, 4]], [33, 11, 33, 6, 11, 11, 33, 16, 33], 11) == 8
    assert candidate(4, [[3, 0], [0, 2], [3, 1]], [8, 8, 12, 4], 4) == 4
    assert candidate(8, [[1, 6], [5, 7], [6, 7], [3, 2], [3, 4], [4, 0], [1, 2]], [6, 6, 6, 6, 3, 8, 15, 6], 7) == 3
    assert candidate(9, [[7, 8], [4, 6], [8, 6], [3, 0], [3, 5], [5, 1], [1, 2], [7, 0]], [5, 0, 1, 1, 1, 3, 9, 30, 10], 10) == 4
    assert candidate(4, [[2, 1], [1, 0], [2, 3]], [1, 0, 1, 2], 2) == 2
    assert candidate(4, [[1, 2], [1, 0], [2, 3]], [2, 1, 0, 1], 1) == 4
    assert candidate(4, [[2, 1], [2, 3], [2, 0]], [3, 6, 9, 6], 3) == 4
    assert candidate(7, [[0, 4], [0, 1], [4, 6], [4, 3], [6, 5], [2, 4]], [2, 0, 2, 0, 0, 0, 0], 2) == 7
    assert candidate(9, [[6, 0], [1, 2], [6, 2], [2, 3], [3, 7], [3, 8], [0, 5], [3, 4]], [1, 1, 0, 3, 3, 3, 1, 1, 3], 1) == 9
    assert candidate(5, [[0, 4], [0, 1], [1, 3], [0, 2]], [2, 12, 14, 0, 0], 7) == 4
    assert candidate(6, [[1, 2], [0, 5], [5, 4], [0, 3], [2, 0]], [2, 2, 2, 0, 0, 2], 2) == 6
    assert candidate(10, [[3, 1], [1, 4], [4, 5], [3, 0], [4, 7], [7, 2], [0, 9], [0, 8], [1, 6]], [0, 0, 0, 1, 0, 0, 0, 0, 0, 0], 1) == 10
    assert candidate(5, [[3, 1], [0, 3], [4, 2], [1, 2]], [3, 1, 3, 2, 6], 3) == 4
    assert candidate(10, [[6, 3], [3, 9], [3, 7], [3, 4], [7, 8], [8, 0], [8, 5], [3, 2], [0, 1]], [0, 0, 0, 0, 0, 0, 2, 0, 0, 0], 1) == 10
    assert candidate(5, [[4, 3], [3, 1], [1, 2], [1, 0]], [8, 6, 0, 8, 2], 8) == 3
    assert candidate(8, [[1, 3], [0, 3], [7, 4], [4, 6], [0, 7], [0, 2], [4, 5]], [12, 10, 6, 2, 6, 12, 3, 9], 6) == 5
    assert candidate(9, [[5, 4], [2, 1], [2, 0], [0, 7], [7, 8], [5, 2], [6, 3], [2, 3]], [1, 2, 3, 2, 2, 4, 4, 0, 0], 6) == 5
    assert candidate(7, [[4, 6], [4, 2], [2, 1], [2, 5], [4, 3], [0, 5]], [27, 0, 1, 1, 4, 2, 1], 9) == 3
    assert candidate(7, [[4, 6], [0, 2], [0, 5], [2, 3], [3, 1], [4, 2]], [1, 0, 0, 1, 2, 0, 0], 2) == 5
    assert candidate(9, [[3, 2], [2, 1], [1, 4], [4, 6], [4, 8], [6, 0], [0, 5], [5, 7]], [10, 10, 15, 5, 5, 15, 15, 10, 15], 5) == 9
    assert candidate(10, [[9, 6], [9, 0], [9, 3], [3, 8], [6, 5], [0, 7], [8, 2], [6, 4], [4, 1]], [0, 0, 3, 0, 0, 0, 3, 0, 3, 3], 4) == 6
    assert candidate(8, [[4, 3], [3, 6], [6, 1], [6, 7], [1, 2], [7, 0], [4, 5]], [30, 10, 10, 20, 10, 10, 30, 10], 10) == 8
    assert candidate(4, [[2, 1], [1, 0], [0, 3]], [9, 6, 6, 9], 3) == 4
    assert candidate(5, [[3, 4], [3, 2], [4, 0], [2, 1]], [3, 2, 2, 3, 1], 1) == 5
    assert candidate(5, [[1, 3], [3, 4], [4, 2], [2, 0]], [27, 14, 0, 0, 4], 9) == 3
    assert candidate(4, [[1, 2], [2, 0], [0, 3]], [3, 1, 2, 3], 1) == 4
    assert candidate(7, [[6, 1], [6, 4], [1, 3], [3, 0], [2, 5], [4, 2]], [33, 18, 7, 22, 11, 4, 4], 11) == 5
    assert candidate(10, [[6, 2], [5, 2], [0, 3], [0, 7], [0, 1], [6, 7], [2, 4], [8, 9], [5, 9]], [3, 0, 1, 0, 3, 3, 2, 0, 6, 3], 3) == 9
    assert candidate(8, [[6, 1], [0, 5], [5, 7], [5, 2], [5, 4], [1, 4], [0, 3]], [15, 24, 9, 12, 0, 3, 24, 9], 12) == 5
    assert candidate(6, [[3, 1], [3, 5], [1, 4], [1, 0], [3, 2]], [12, 12, 36, 12, 24, 36], 12) == 6
    assert candidate(7, [[6, 4], [6, 5], [3, 1], [1, 0], [0, 2], [4, 2]], [0, 0, 0, 1, 0, 0, 1], 1) == 7
    assert candidate(8, [[6, 1], [2, 0], [0, 7], [1, 2], [4, 5], [7, 5], [1, 3]], [1, 14, 5, 21, 18, 3, 7, 1], 7) == 5
    assert candidate(4, [[1, 3], [1, 0], [1, 2]], [18, 18, 9, 27], 9) == 4
    assert candidate(5, [[1, 2], [1, 3], [3, 4], [1, 0]], [2, 3, 0, 0, 0], 1) == 5
    assert candidate(5, [[2, 3], [2, 4], [4, 1], [2, 0]], [0, 0, 1, 0, 0], 1) == 5
    assert candidate(6, [[1, 4], [1, 3], [1, 2], [4, 0], [2, 5]], [0, 3, 0, 0, 0, 0], 1) == 6
    assert candidate(6, [[4, 1], [0, 2], [4, 2], [3, 5], [1, 5]], [3, 9, 6, 3, 9, 6], 3) == 6
    assert candidate(4, [[1, 3], [0, 2], [1, 2]], [4, 1, 0, 3], 4) == 3
    assert candidate(7, [[4, 5], [5, 2], [2, 0], [0, 6], [5, 3], [2, 1]], [15, 15, 10, 5, 2, 8, 5], 5) == 6
    assert candidate(5, [[2, 4], [2, 0], [0, 3], [2, 1]], [36, 24, 10, 24, 2], 12) == 4
    assert candidate(7, [[2, 4], [2, 1], [2, 5], [1, 3], [4, 0], [1, 6]], [2, 0, 2, 2, 0, 2, 0], 4) == 2
    assert candidate(4, [[3, 2], [2, 1], [2, 0]], [6, 2, 2, 6], 8) == 1
    assert candidate(10, [[7, 4], [7, 2], [4, 1], [6, 5], [6, 0], [7, 6], [1, 8], [9, 3], [7, 9]], [12, 4, 3, 2, 1, 18, 3, 3, 22, 20], 11) == 4
    assert candidate(5, [[0, 3], [3, 2], [3, 1], [0, 4]], [12, 36, 36, 36, 12], 12) == 5
    assert candidate(5, [[0, 1], [1, 2], [2, 3], [3, 4]], [3, 0, 0, 18, 3], 8) == 1
    assert candidate(4, [[3, 2], [3, 0], [3, 1]], [9, 0, 15, 3], 9) == 3
    assert candidate(5, [[0, 2], [0, 3], [3, 4], [1, 3]], [3, 3, 0, 0, 0], 1) == 5
    assert candidate(5, [[1, 4], [1, 3], [0, 3], [1, 2]], [10, 2, 15, 2, 1], 5) == 3
    assert candidate(6, [[1, 4], [4, 5], [0, 3], [1, 0], [0, 2]], [6, 9, 6, 3, 6, 3], 3) == 6
    assert candidate(6, [[5, 1], [0, 1], [2, 4], [2, 3], [1, 4]], [21, 4, 3, 1, 3, 3], 7) == 3
    assert candidate(6, [[5, 1], [1, 2], [5, 3], [1, 4], [2, 0]], [0, 4, 0, 2, 0, 2], 4) == 5
    assert candidate(10, [[3, 6], [3, 4], [6, 0], [3, 9], [5, 7], [6, 5], [0, 2], [6, 1], [9, 8]], [0, 12, 12, 3, 9, 8, 3, 4, 12, 3], 6) == 6
    assert candidate(7, [[0, 2], [2, 5], [2, 3], [5, 4], [2, 1], [3, 6]], [9, 9, 3, 6, 3, 0, 0], 10) == 2
    assert candidate(6, [[4, 1], [4, 5], [4, 2], [4, 0], [3, 1]], [0, 6, 6, 22, 2, 8], 11) == 3
    assert candidate(8, [[2, 7], [1, 4], [2, 4], [4, 3], [2, 5], [7, 0], [7, 6]], [12, 3, 12, 4, 1, 8, 12, 12], 4) == 7
    assert candidate(5, [[0, 3], [0, 1], [0, 2], [0, 4]], [3, 3, 0, 18, 0], 8) == 3
    assert candidate(4, [[2, 0], [2, 1], [0, 3]], [10, 15, 5, 15], 5) == 4
    assert candidate(7, [[2, 5], [5, 1], [5, 4], [1, 6], [4, 3], [3, 0]], [0, 0, 6, 2, 0, 2, 2], 6) == 3
    assert candidate(8, [[5, 2], [2, 4], [5, 1], [5, 3], [1, 0], [2, 6], [2, 7]], [18, 9, 9, 9, 27, 9, 9, 18], 9) == 8
    assert candidate(7, [[5, 6], [6, 4], [5, 2], [6, 3], [1, 0], [5, 1]], [9, 21, 6, 20, 2, 8, 4], 10) == 3
    assert candidate(8, [[3, 1], [3, 0], [0, 4], [3, 5], [7, 6], [1, 6], [6, 2]], [10, 10, 5, 15, 5, 15, 3, 2], 5) == 7
    assert candidate(5, [[2, 4], [2, 1], [2, 0], [0, 3]], [1, 2, 1, 0, 2], 6) == 2
    assert candidate(8, [[1, 0], [0, 2], [0, 6], [2, 5], [1, 3], [2, 4], [2, 7]], [0, 3, 18, 9, 0, 0, 0, 3], 11) == 4
    assert candidate(9, [[5, 0], [2, 4], [0, 2], [2, 3], [4, 1], [2, 7], [8, 6], [0, 8]], [10, 10, 2, 20, 18, 20, 6, 10, 24], 10) == 7
    assert candidate(10, [[0, 9], [9, 7], [1, 4], [0, 4], [8, 2], [4, 2], [2, 3], [3, 5], [0, 6]], [6, 4, 6, 18, 8, 18, 12, 18, 6, 12], 6) == 9
    assert candidate(7, [[4, 2], [6, 4], [5, 3], [3, 1], [4, 5], [2, 0]], [9, 3, 0, 9, 9, 15, 18], 9) == 5
    assert candidate(5, [[2, 3], [3, 1], [3, 0], [1, 4]], [0, 0, 3, 0, 3], 2) == 2
    assert candidate(10, [[3, 6], [4, 3], [0, 8], [0, 5], [8, 9], [0, 1], [8, 7], [5, 2], [3, 8]], [6, 6, 0, 4, 7, 0, 3, 0, 3, 6], 7) == 6
    assert candidate(6, [[2, 3], [4, 5], [4, 1], [2, 4], [2, 0]], [20, 0, 30, 30, 12, 8], 10) == 5
    assert candidate(9, [[5, 7], [5, 4], [5, 6], [7, 2], [7, 1], [4, 3], [2, 0], [3, 8]], [6, 6, 6, 18, 6, 12, 18, 6, 6], 6) == 9


def test_check():
    check(maxKDivisibleComponents)


### Metadata below ###
# question_id = 3058
# question_title = Maximum Number of K-Divisible Components
# question_title_slug = maximum-number-of-k-divisible-components
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 170
# question_dislikes = 3