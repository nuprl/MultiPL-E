from typing import List

def maximumPoints(edges: List[List[int]], coins: List[int], k: int) -> int:
    """
    There exists an undirected tree rooted at node 0 with n nodes labeled from 0 to n - 1. You are given a 2D integer array edges of length n - 1, where edges[i] = [ai, bi] indicates that there is an edge between nodes ai and bi in the tree. You are also given a 0-indexed array coins of size n where coins[i] indicates the number of coins in the vertex i, and an integer k.
    
    Starting from the root, you have to collect all the coins such that the coins at a node can only be collected if the coins of its ancestors have been already collected.
    
    Coins at nodei can be collected in one of the following ways:
    
     * Collect all the coins, but you will get coins[i] - k points. If coins[i] - k is negative then you will lose abs(coins[i] - k) points.
     * Collect all the coins, but you will get floor(coins[i] / 2) points. If this way is used, then for all the nodej present in the subtree of nodei, coins[j] will get reduced to floor(coins[j] / 2).
    
    Return the maximum points you can get after collecting the coins from all the tree nodes.
    
    Example 1:
    
    [https://assets.leetcode.com/uploads/2023/09/18/ex1-copy.png]
    
    Input: edges = [[0,1],[1,2],[2,3]], coins = [10,10,3,3], k = 5
    Output: 11
    Explanation:
    Collect all the coins from node 0 using the first way. Total points = 10 - 5 = 5.
    Collect all the coins from node 1 using the first way. Total points = 5 + (10 - 5) = 10.
    Collect all the coins from node 2 using the second way so coins left at node 3 will be floor(3 / 2) = 1. Total points = 10 + floor(3 / 2) = 11.
    Collect all the coins from node 3 using the second way. Total points = 11 + floor(1 / 2) = 11.
    It can be shown that the maximum points we can get after collecting coins from all the nodes is 11.
    
    Example 2:
    
    [https://assets.leetcode.com/uploads/2023/09/18/ex2.png]
    
    Input: edges = [[0,1],[0,2]], coins = [8,4,4], k = 0
    Output: 16
    Explanation:
    Coins will be collected from all the nodes using the first way. Therefore, total points = (8 - 0) + (4 - 0) + (4 - 0) = 16.
    
    
    Constraints:
    
     * n == coins.length
     * 2 <= n <= 105
     * 0 <= coins[i] <= 104
     * edges.length == n - 1
     * 0 <= edges[i][0], edges[i][1] < n
     * 0 <= k <= 104
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[0, 1], [1, 2], [2, 3]], [10, 10, 3, 3], 5) == 11
    assert candidate([[0, 1], [0, 2]], [8, 4, 4], 0) == 16
    assert candidate([[0, 1], [2, 0], [0, 3], [4, 2]], [7, 5, 0, 9, 3], 4) == 10
    assert candidate([[1, 0], [0, 2], [1, 3]], [9, 3, 8, 9], 0) == 29
    assert candidate([[0, 1], [0, 2], [3, 2], [0, 4]], [5, 6, 8, 7, 4], 7) == 8
    assert candidate([[1, 0], [2, 1], [3, 1]], [8, 2, 7, 1], 2) == 11
    assert candidate([[0, 1], [1, 2], [0, 3]], [6, 1, 2, 3], 2) == 5
    assert candidate([[0, 1], [0, 2], [0, 3], [2, 4], [5, 4], [6, 0], [4, 7], [8, 5]], [2, 3, 10, 0, 0, 2, 7, 3, 9], 2) == 20
    assert candidate([[0, 1], [0, 2], [1, 3], [3, 4], [0, 5], [6, 3], [5, 7], [3, 8], [9, 7]], [0, 5, 10, 5, 6, 5, 0, 2, 0, 0], 7) == 4
    assert candidate([[0, 1], [2, 1], [3, 0], [3, 4], [5, 0], [6, 4], [7, 1], [6, 8], [9, 5]], [9, 0, 9, 6, 7, 6, 5, 7, 1, 10], 7) == 14
    assert candidate([[0, 1], [2, 1], [3, 2], [4, 0], [5, 2], [3, 6], [7, 2], [8, 4], [9, 2]], [9, 4, 0, 8, 0, 7, 8, 1, 10, 9], 1) == 46
    assert candidate([[1, 0], [2, 1], [3, 1], [2, 4], [5, 4], [6, 3], [6, 7]], [9, 9, 5, 5, 7, 9, 6, 9], 8) == 10
    assert candidate([[0, 1], [2, 1], [2, 3], [4, 0], [5, 2], [6, 1]], [1, 1, 8, 6, 9, 4, 1], 10) == 3
    assert candidate([[1, 0], [1, 2], [0, 3]], [10, 2, 9, 3], 6) == 8
    assert candidate([[1, 0], [1, 2], [1, 3], [3, 4], [5, 3], [4, 6], [7, 0], [1, 8], [9, 1]], [2, 10, 4, 0, 1, 3, 6, 10, 3, 6], 8) == 7
    assert candidate([[1, 0], [0, 2], [3, 2], [4, 3], [2, 5], [1, 6], [7, 2]], [2, 8, 3, 1, 9, 4, 8, 6], 6) == 6
    assert candidate([[1, 0], [2, 0], [3, 0]], [0, 0, 0, 6], 0) == 6
    assert candidate([[1, 0], [1, 2]], [7, 6, 0], 6) == 4
    assert candidate([[0, 1], [0, 2], [1, 3], [2, 4], [5, 4]], [4, 2, 7, 7, 4, 9], 6) == 5
    assert candidate([[0, 1]], [10, 9], 6) == 8
    assert candidate([[0, 1], [2, 1], [3, 1], [2, 4], [5, 0], [6, 1]], [6, 1, 8, 10, 0, 4, 10], 5) == 13
    assert candidate([[1, 0], [2, 0], [0, 3], [0, 4], [5, 1], [6, 4], [3, 7], [5, 8]], [9, 0, 4, 2, 0, 0, 3, 1, 8], 5) == 8
    assert candidate([[0, 1], [1, 2], [3, 2], [4, 0]], [7, 5, 6, 3, 6], 8) == 5
    assert candidate([[0, 1], [1, 2], [3, 2], [4, 2], [5, 3], [6, 1], [4, 7], [7, 8], [2, 9]], [4, 2, 0, 8, 3, 2, 7, 2, 1, 6], 2) == 18
    assert candidate([[0, 1], [1, 2], [1, 3], [4, 0], [3, 5], [6, 3], [7, 6], [8, 0]], [3, 3, 4, 3, 1, 3, 1, 6, 3], 1) == 18
    assert candidate([[1, 0], [2, 1], [2, 3], [4, 1], [4, 5], [2, 6]], [3, 10, 1, 5, 10, 1, 4], 2) == 21
    assert candidate([[0, 1], [2, 0]], [7, 10, 8], 10) == 7
    assert candidate([[1, 0], [2, 1], [3, 1], [4, 2], [5, 3], [6, 0], [7, 4]], [1, 1, 7, 10, 5, 1, 7, 8], 7) == 2
    assert candidate([[1, 0], [0, 2], [3, 2]], [5, 2, 10, 5], 3) == 12
    assert candidate([[1, 0], [2, 0], [3, 2], [2, 4], [4, 5], [6, 2], [5, 7], [8, 2]], [4, 2, 1, 4, 7, 7, 2, 7, 4], 2) == 22
    assert candidate([[1, 0]], [8, 1], 7) == 4
    assert candidate([[1, 0], [0, 2], [3, 0], [3, 4], [3, 5], [6, 0], [7, 5]], [3, 9, 9, 9, 5, 3, 2, 0], 9) == 8
    assert candidate([[0, 1], [2, 1], [3, 2], [4, 1], [2, 5]], [2, 10, 4, 6, 7, 9], 5) == 11
    assert candidate([[1, 0], [2, 1], [3, 2], [3, 4], [5, 4], [2, 6], [7, 3]], [3, 3, 6, 1, 10, 1, 2, 5], 3) == 11
    assert candidate([[1, 0], [2, 0], [0, 3], [1, 4], [3, 5], [0, 6], [7, 4], [1, 8]], [9, 7, 9, 0, 3, 6, 9, 4, 0], 8) == 13
    assert candidate([[0, 1], [2, 1], [3, 0], [2, 4], [1, 5], [6, 1], [7, 3], [5, 8]], [4, 9, 7, 6, 6, 9, 0, 2, 6], 2) == 34
    assert candidate([[1, 0], [1, 2]], [4, 4, 6], 3) == 5
    assert candidate([[0, 1], [0, 2], [3, 1], [2, 4], [4, 5], [6, 2], [4, 7], [4, 8], [9, 1]], [8, 6, 10, 9, 3, 10, 3, 7, 9, 1], 6) == 21
    assert candidate([[1, 0], [2, 1], [0, 3], [0, 4], [5, 3], [6, 1], [7, 5], [8, 2], [9, 3]], [1, 3, 10, 0, 7, 2, 8, 10, 0, 5], 0) == 46
    assert candidate([[0, 1], [2, 0]], [9, 4, 2], 0) == 15
    assert candidate([[0, 1], [2, 1]], [0, 9, 3], 3) == 4
    assert candidate([[1, 0], [2, 1], [3, 2], [4, 1], [3, 5]], [10, 10, 8, 6, 0, 0], 1) == 30
    assert candidate([[0, 1], [2, 0], [3, 0], [3, 4], [5, 1], [6, 1], [7, 2], [8, 3], [0, 9]], [6, 4, 5, 2, 1, 10, 10, 9, 8, 10], 1) == 55
    assert candidate([[0, 1], [2, 1], [3, 2], [0, 4], [1, 5], [6, 5], [7, 1], [5, 8], [1, 9]], [8, 0, 9, 5, 9, 6, 2, 8, 1, 8], 9) == 10
    assert candidate([[0, 1], [2, 1], [2, 3], [1, 4], [3, 5], [6, 4], [7, 6]], [8, 2, 3, 10, 4, 5, 8, 8], 1) == 40
    assert candidate([[0, 1], [2, 0], [0, 3], [4, 1], [5, 2], [6, 1], [7, 1]], [3, 9, 4, 4, 3, 4, 10, 4], 2) == 25
    assert candidate([[1, 0], [1, 2], [3, 0], [4, 1], [5, 1], [1, 6], [1, 7]], [7, 4, 7, 2, 5, 8, 0, 7], 8) == 8
    assert candidate([[0, 1], [2, 1], [3, 1], [4, 2], [5, 4], [6, 5], [7, 5]], [4, 5, 7, 5, 0, 4, 6, 7], 4) == 8
    assert candidate([[1, 0], [1, 2], [1, 3]], [8, 4, 10, 7], 1) == 25
    assert candidate([[0, 1], [2, 1], [2, 3], [3, 4], [4, 5], [6, 3], [3, 7], [7, 8], [9, 8]], [0, 2, 1, 5, 8, 2, 5, 3, 7, 6], 10) == 0
    assert candidate([[1, 0], [1, 2], [3, 0], [4, 3], [1, 5], [6, 2], [7, 3], [4, 8], [4, 9]], [6, 5, 1, 8, 8, 10, 5, 7, 7, 1], 5) == 19
    assert candidate([[0, 1], [2, 0], [2, 3], [4, 2], [5, 0], [3, 6], [7, 5], [3, 8], [9, 8]], [9, 6, 4, 10, 4, 1, 6, 1, 5, 9], 6) == 17
    assert candidate([[0, 1], [2, 1], [3, 1], [0, 4], [3, 5]], [1, 9, 3, 4, 9, 3], 6) == 5
    assert candidate([[0, 1], [0, 2]], [9, 3, 9], 3) == 13
    assert candidate([[0, 1], [2, 0], [3, 1], [2, 4], [5, 2], [6, 5], [7, 3], [8, 5], [9, 5]], [4, 1, 3, 1, 6, 1, 0, 0, 0, 6], 1) == 15
    assert candidate([[0, 1]], [1, 7], 10) == 1
    assert candidate([[0, 1]], [10, 6], 10) == 6
    assert candidate([[1, 0], [1, 2], [2, 3], [0, 4]], [6, 7, 8, 1, 9], 9) == 7
    assert candidate([[0, 1]], [6, 6], 0) == 12
    assert candidate([[0, 1], [0, 2], [0, 3], [1, 4], [5, 4], [2, 6]], [9, 3, 7, 2, 3, 1, 2], 8) == 6
    assert candidate([[1, 0], [0, 2], [3, 1], [3, 4], [2, 5]], [4, 0, 3, 10, 5, 8], 3) == 12
    assert candidate([[0, 1], [2, 1], [3, 2], [4, 1], [4, 5], [5, 6]], [3, 9, 2, 6, 1, 9, 1], 10) == 3
    assert candidate([[1, 0]], [8, 8], 8) == 6
    assert candidate([[0, 1], [1, 2], [1, 3], [0, 4], [5, 2]], [2, 3, 7, 9, 7, 7], 2) == 23
    assert candidate([[0, 1], [2, 0], [3, 1], [4, 0], [3, 5], [2, 6]], [6, 9, 7, 7, 7, 9, 7], 8) == 11
    assert candidate([[1, 0], [2, 1], [3, 0], [0, 4], [5, 2], [0, 6]], [9, 4, 7, 9, 6, 2, 9], 10) == 13
    assert candidate([[0, 1], [1, 2], [3, 2], [4, 2], [0, 5], [6, 4], [7, 3]], [5, 5, 6, 3, 0, 8, 5, 7], 7) == 5
    assert candidate([[1, 0], [2, 0], [2, 3], [4, 0], [5, 2], [2, 6], [7, 3]], [8, 3, 4, 5, 6, 1, 6, 9], 6) == 11
    assert candidate([[0, 1], [2, 0], [0, 3], [4, 0], [5, 0], [6, 1], [7, 3], [8, 1]], [1, 6, 3, 10, 1, 9, 7, 8, 7], 5) == 17
    assert candidate([[0, 1], [2, 0], [3, 1], [3, 4], [2, 5], [6, 4], [5, 7], [5, 8], [6, 9]], [3, 6, 5, 6, 6, 9, 5, 5, 3, 10], 10) == 4
    assert candidate([[0, 1], [2, 0], [3, 2], [4, 1], [4, 5], [6, 3], [7, 2], [8, 2], [3, 9]], [2, 2, 0, 0, 4, 8, 8, 5, 0, 10], 8) == 1
    assert candidate([[1, 0], [0, 2], [3, 0], [4, 3], [4, 5], [6, 5], [7, 5]], [8, 5, 7, 3, 2, 3, 5, 3], 6) == 8
    assert candidate([[0, 1], [2, 0]], [4, 3, 8], 3) == 7
    assert candidate([[1, 0], [2, 1], [3, 1], [4, 2], [5, 0], [4, 6], [7, 3], [8, 2]], [8, 9, 0, 3, 9, 7, 4, 8, 7], 7) == 12
    assert candidate([[0, 1], [2, 1]], [1, 6, 4], 4) == 1
    assert candidate([[0, 1], [2, 1], [3, 1]], [8, 9, 1, 0], 3) == 11
    assert candidate([[1, 0], [2, 1], [0, 3], [4, 3], [5, 4], [4, 6]], [4, 1, 4, 4, 0, 5, 5], 8) == 3
    assert candidate([[1, 0], [2, 1], [3, 2], [3, 4], [4, 5], [6, 5], [7, 3]], [10, 9, 6, 8, 9, 9, 0, 7], 0) == 58
    assert candidate([[0, 1], [1, 2], [3, 1], [2, 4], [3, 5], [4, 6], [5, 7], [1, 8], [2, 9]], [9, 5, 7, 6, 2, 5, 0, 7, 5, 7], 8) == 8
    assert candidate([[0, 1], [1, 2], [3, 1]], [4, 10, 2, 2], 10) == 4
    assert candidate([[1, 0], [1, 2], [1, 3], [2, 4], [3, 5], [1, 6], [7, 4], [8, 1], [0, 9]], [6, 7, 1, 2, 3, 7, 3, 4, 8, 4], 1) == 35
    assert candidate([[0, 1], [2, 1]], [4, 8, 10], 6) == 5
    assert candidate([[0, 1], [0, 2], [2, 3], [2, 4], [5, 3], [3, 6], [7, 2], [8, 5]], [7, 8, 4, 3, 4, 8, 10, 8, 1], 7) == 12
    assert candidate([[1, 0], [2, 1], [3, 0], [4, 2], [0, 5]], [9, 9, 3, 3, 4, 4], 4) == 15
    assert candidate([[0, 1], [0, 2], [1, 3], [2, 4], [5, 0]], [7, 5, 0, 10, 0, 0], 8) == 5
    assert candidate([[1, 0], [2, 1], [2, 3], [4, 2], [0, 5], [6, 2], [4, 7], [8, 5], [0, 9]], [5, 2, 8, 8, 6, 0, 3, 2, 2, 5], 3) == 18
    assert candidate([[1, 0], [1, 2], [3, 0], [4, 3], [1, 5], [6, 1], [7, 4], [2, 8]], [5, 5, 2, 1, 3, 8, 6, 4, 3], 1) == 28
    assert candidate([[1, 0], [0, 2]], [8, 2, 5], 0) == 15
    assert candidate([[1, 0], [1, 2], [3, 2]], [10, 9, 2, 0], 7) == 7
    assert candidate([[0, 1], [2, 0], [2, 3], [0, 4], [2, 5], [6, 4], [7, 1], [8, 3]], [10, 4, 4, 8, 9, 5, 5, 8, 1], 0) == 54
    assert candidate([[0, 1], [1, 2], [1, 3], [2, 4], [1, 5], [6, 2], [3, 7], [8, 4], [9, 3]], [5, 1, 1, 3, 5, 0, 0, 1, 1, 9], 5) == 2
    assert candidate([[0, 1], [1, 2], [3, 1], [1, 4], [5, 3]], [1, 7, 1, 3, 3, 7], 7) == 1
    assert candidate([[0, 1], [1, 2], [3, 2], [4, 3], [5, 2], [0, 6], [3, 7], [5, 8]], [9, 1, 3, 2, 1, 3, 4, 2, 6], 1) == 22
    assert candidate([[0, 1], [0, 2]], [5, 1, 5], 10) == 3
    assert candidate([[0, 1], [0, 2], [3, 1], [1, 4], [4, 5]], [5, 7, 8, 9, 3, 10], 7) == 9
    assert candidate([[0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [5, 6], [6, 7], [8, 5]], [8, 3, 0, 3, 4, 1, 4, 0, 7], 2) == 16
    assert candidate([[1, 0], [0, 2], [3, 0], [4, 3], [2, 5], [3, 6]], [3, 6, 7, 1, 2, 8, 0], 9) == 4
    assert candidate([[1, 0]], [4, 0], 9) == 2
    assert candidate([[1, 0], [2, 0], [3, 1], [4, 1], [5, 2], [6, 1], [4, 7], [5, 8]], [9, 7, 8, 9, 6, 8, 9, 1, 6], 1) == 54
    assert candidate([[1, 0], [0, 2], [1, 3], [0, 4], [5, 4], [6, 0], [3, 7]], [7, 10, 8, 4, 6, 0, 6, 2], 4) == 21


def test_check():
    check(maximumPoints)


### Metadata below ###
# question_id = 3179
# question_title = Maximum Points After Collecting Coins From All Nodes
# question_title_slug = maximum-points-after-collecting-coins-from-all-nodes
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 161
# question_dislikes = 11