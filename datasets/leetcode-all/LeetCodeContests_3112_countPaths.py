from typing import List

def countPaths(n: int, edges: List[List[int]]) -> int:
    """
    There is an undirected tree with n nodes labeled from 1 to n. You are given the integer n and a 2D integer array edges of length n - 1, where edges[i] = [ui, vi] indicates that there is an edge between nodes ui and vi in the tree.
    
    Return the number of valid paths in the tree.
    
    A path (a, b) is valid if there exists exactly one prime number among the node labels in the path from a to b.
    
    Note that:
    
     * The path (a, b) is a sequence of distinct nodes starting with node a and ending with node b such that every two adjacent nodes in the sequence share an edge in the tree.
     * Path (a, b) and path (b, a) are considered the same and counted only once.
    
    Example 1:
    
    [https://assets.leetcode.com/uploads/2023/08/27/example1.png]
    
    Input: n = 5, edges = [[1,2],[1,3],[2,4],[2,5]]
    Output: 4
    Explanation: The pairs with exactly one prime number on the path between them are:
    - (1, 2) since the path from 1 to 2 contains prime number 2.
    - (1, 3) since the path from 1 to 3 contains prime number 3.
    - (1, 4) since the path from 1 to 4 contains prime number 2.
    - (2, 4) since the path from 2 to 4 contains prime number 2.
    It can be shown that there are only 4 valid paths.
    
    Example 2:
    
    [https://assets.leetcode.com/uploads/2023/08/27/example2.png]
    
    Input: n = 6, edges = [[1,2],[1,3],[2,4],[3,5],[3,6]]
    Output: 6
    Explanation: The pairs with exactly one prime number on the path between them are:
    - (1, 2) since the path from 1 to 2 contains prime number 2.
    - (1, 3) since the path from 1 to 3 contains prime number 3.
    - (1, 4) since the path from 1 to 4 contains prime number 2.
    - (1, 6) since the path from 1 to 6 contains prime number 3.
    - (2, 4) since the path from 2 to 4 contains prime number 2.
    - (3, 6) since the path from 3 to 6 contains prime number 3.
    It can be shown that there are only 6 valid paths.
    
    
    Constraints:
    
     * 1 <= n <= 105
     * edges.length == n - 1
     * edges[i].length == 2
     * 1 <= ui, vi <= n
     * The input is generated such that edges represent a valid tree.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5, [[1, 2], [1, 3], [2, 4], [2, 5]]) == 4
    assert candidate(6, [[1, 2], [1, 3], [2, 4], [3, 5], [3, 6]]) == 6
    assert candidate(1, []) == 0
    assert candidate(2, [[2, 1]]) == 1
    assert candidate(4, [[1, 2], [4, 1], [3, 4]]) == 4
    assert candidate(5, [[1, 3], [4, 3], [2, 3], [5, 2]]) == 3
    assert candidate(5, [[1, 5], [2, 1], [4, 5], [3, 2]]) == 4
    assert candidate(5, [[2, 3], [4, 2], [1, 3], [5, 1]]) == 3
    assert candidate(5, [[4, 1], [5, 4], [2, 1], [3, 4]]) == 6
    assert candidate(5, [[3, 5], [1, 5], [4, 3], [2, 5]]) == 2
    assert candidate(4, [[2, 1], [4, 2], [3, 2]]) == 3
    assert candidate(5, [[1, 4], [2, 4], [3, 2], [5, 4]]) == 4
    assert candidate(5, [[5, 4], [3, 4], [1, 4], [2, 4]]) == 6
    assert candidate(4, [[3, 4], [1, 3], [2, 4]]) == 4
    assert candidate(10, [[10, 9], [2, 10], [1, 10], [3, 2], [6, 10], [4, 3], [8, 6], [5, 8], [7, 6]]) == 16
    assert candidate(8, [[7, 2], [6, 2], [5, 2], [1, 2], [4, 7], [8, 1], [3, 6]]) == 7
    assert candidate(5, [[3, 2], [4, 3], [5, 4], [1, 4]]) == 4
    assert candidate(9, [[7, 4], [3, 4], [5, 4], [1, 5], [6, 4], [9, 5], [8, 7], [2, 8]]) == 17
    assert candidate(9, [[1, 8], [5, 8], [4, 8], [6, 5], [3, 1], [9, 1], [7, 4], [2, 8]]) == 21
    assert candidate(10, [[2, 9], [7, 2], [10, 9], [5, 7], [4, 5], [6, 7], [8, 2], [1, 5], [3, 10]]) == 11
    assert candidate(8, [[6, 1], [8, 1], [3, 6], [4, 1], [7, 3], [2, 8], [5, 1]]) == 12
    assert candidate(10, [[9, 1], [8, 9], [5, 9], [10, 8], [7, 5], [2, 8], [3, 8], [6, 7], [4, 1]]) == 16
    assert candidate(5, [[5, 3], [4, 5], [2, 5], [1, 4]]) == 2
    assert candidate(7, [[7, 6], [2, 6], [5, 2], [3, 5], [4, 5], [1, 6]]) == 5
    assert candidate(8, [[4, 5], [8, 4], [6, 4], [2, 5], [1, 6], [3, 1], [7, 8]]) == 12
    assert candidate(10, [[9, 6], [5, 6], [10, 6], [8, 5], [4, 8], [3, 9], [1, 3], [2, 6], [7, 1]]) == 22
    assert candidate(5, [[1, 4], [2, 4], [5, 4], [3, 4]]) == 6
    assert candidate(10, [[9, 4], [7, 9], [10, 9], [6, 7], [8, 7], [2, 7], [3, 2], [1, 9], [5, 10]]) == 19
    assert candidate(7, [[4, 7], [6, 7], [1, 7], [3, 7], [2, 6], [5, 6]]) == 8
    assert candidate(5, [[1, 4], [2, 1], [5, 2], [3, 1]]) == 4
    assert candidate(5, [[4, 5], [2, 5], [1, 4], [3, 1]]) == 4
    assert candidate(10, [[4, 3], [5, 3], [1, 4], [7, 5], [6, 3], [8, 3], [9, 1], [10, 8], [2, 10]]) == 19
    assert candidate(5, [[1, 3], [4, 1], [2, 1], [5, 1]]) == 6
    assert candidate(7, [[5, 2], [3, 5], [4, 5], [1, 2], [6, 2], [7, 2]]) == 4
    assert candidate(5, [[3, 4], [1, 4], [5, 3], [2, 5]]) == 2
    assert candidate(8, [[1, 8], [2, 1], [6, 8], [3, 6], [4, 3], [5, 8], [7, 2]]) == 13
    assert candidate(9, [[2, 1], [6, 1], [8, 2], [9, 8], [4, 9], [7, 9], [3, 1], [5, 2]]) == 16
    assert candidate(5, [[4, 3], [5, 4], [1, 5], [2, 3]]) == 4
    assert candidate(8, [[2, 4], [3, 4], [6, 4], [7, 3], [8, 7], [5, 6], [1, 5]]) == 10
    assert candidate(6, [[3, 6], [1, 3], [2, 3], [5, 2], [4, 5]]) == 4
    assert candidate(10, [[7, 5], [4, 7], [10, 5], [6, 5], [8, 6], [2, 8], [9, 4], [3, 10], [1, 9]]) == 11
    assert candidate(8, [[3, 2], [8, 3], [7, 3], [6, 2], [4, 7], [5, 6], [1, 8]]) == 5
    assert candidate(8, [[2, 6], [3, 6], [5, 2], [1, 6], [7, 2], [8, 1], [4, 1]]) == 8
    assert candidate(9, [[3, 7], [6, 7], [4, 7], [1, 6], [8, 4], [9, 1], [2, 7], [5, 2]]) == 11
    assert candidate(6, [[6, 2], [5, 6], [1, 2], [3, 2], [4, 3]]) == 5
    assert candidate(6, [[6, 2], [1, 6], [3, 1], [5, 3], [4, 3]]) == 7
    assert candidate(8, [[2, 3], [8, 3], [5, 3], [6, 3], [4, 3], [7, 8], [1, 2]]) == 8
    assert candidate(7, [[4, 6], [5, 6], [7, 6], [3, 4], [2, 6], [1, 5]]) == 11
    assert candidate(6, [[4, 2], [5, 4], [1, 5], [6, 1], [3, 1]]) == 8
    assert candidate(6, [[4, 1], [6, 1], [5, 4], [3, 5], [2, 1]]) == 6
    assert candidate(7, [[6, 7], [1, 6], [4, 6], [2, 7], [3, 2], [5, 7]]) == 3
    assert candidate(6, [[4, 3], [5, 3], [6, 5], [2, 4], [1, 5]]) == 5
    assert candidate(10, [[2, 5], [3, 5], [10, 2], [8, 3], [7, 5], [4, 3], [1, 8], [9, 5], [6, 8]]) == 9
    assert candidate(8, [[2, 8], [1, 8], [5, 2], [4, 5], [6, 5], [7, 2], [3, 5]]) == 5
    assert candidate(8, [[7, 2], [6, 7], [5, 7], [8, 6], [1, 7], [3, 5], [4, 2]]) == 6
    assert candidate(7, [[5, 7], [3, 5], [2, 7], [4, 3], [6, 3], [1, 4]]) == 5
    assert candidate(7, [[2, 3], [1, 3], [7, 3], [4, 1], [6, 3], [5, 1]]) == 7
    assert candidate(7, [[4, 2], [6, 4], [1, 6], [7, 6], [5, 2], [3, 7]]) == 6
    assert candidate(6, [[3, 4], [6, 3], [1, 4], [5, 4], [2, 6]]) == 8
    assert candidate(10, [[2, 7], [1, 2], [8, 7], [4, 2], [6, 8], [10, 7], [5, 4], [9, 8], [3, 6]]) == 14
    assert candidate(8, [[6, 2], [7, 2], [5, 6], [8, 2], [3, 6], [1, 8], [4, 2]]) == 11
    assert candidate(10, [[9, 6], [1, 9], [2, 1], [8, 1], [10, 6], [7, 6], [3, 8], [4, 3], [5, 3]]) == 21
    assert candidate(8, [[4, 6], [1, 6], [7, 6], [2, 1], [8, 7], [5, 6], [3, 5]]) == 13
    assert candidate(7, [[3, 7], [6, 7], [4, 6], [1, 3], [5, 3], [2, 3]]) == 3
    assert candidate(10, [[2, 9], [3, 9], [8, 9], [10, 3], [1, 9], [4, 8], [7, 10], [6, 1], [5, 10]]) == 18
    assert candidate(8, [[5, 6], [3, 6], [7, 5], [4, 6], [8, 6], [2, 3], [1, 3]]) == 10
    assert candidate(9, [[9, 3], [4, 3], [2, 9], [7, 3], [8, 7], [1, 7], [5, 4], [6, 2]]) == 10
    assert candidate(6, [[5, 1], [2, 1], [4, 2], [6, 5], [3, 4]]) == 7
    assert candidate(7, [[3, 6], [2, 6], [5, 6], [7, 2], [1, 6], [4, 2]]) == 9
    assert candidate(5, [[1, 5], [3, 5], [4, 3], [2, 5]]) == 2
    assert candidate(8, [[2, 8], [6, 2], [1, 2], [4, 1], [7, 2], [3, 2], [5, 7]]) == 9
    assert candidate(9, [[5, 3], [1, 3], [7, 3], [4, 5], [6, 7], [8, 7], [9, 5], [2, 5]]) == 7
    assert candidate(10, [[8, 10], [3, 10], [1, 8], [7, 8], [6, 10], [2, 3], [5, 8], [9, 5], [4, 6]]) == 21
    assert candidate(10, [[4, 8], [6, 8], [9, 4], [1, 6], [5, 8], [2, 8], [10, 9], [7, 6], [3, 5]]) == 18
    assert candidate(9, [[4, 6], [9, 4], [3, 6], [7, 6], [1, 4], [5, 9], [2, 7], [8, 4]]) == 15
    assert candidate(7, [[7, 6], [2, 6], [1, 7], [3, 2], [5, 2], [4, 5]]) == 5
    assert candidate(9, [[1, 8], [5, 8], [3, 8], [2, 1], [9, 2], [7, 1], [6, 5], [4, 9]]) == 17
    assert candidate(7, [[3, 5], [4, 3], [6, 5], [2, 4], [7, 3], [1, 4]]) == 5
    assert candidate(10, [[5, 2], [8, 5], [10, 5], [3, 8], [4, 2], [1, 4], [9, 10], [7, 5], [6, 8]]) == 12
    assert candidate(8, [[7, 4], [1, 4], [5, 7], [6, 1], [8, 5], [3, 8], [2, 6]]) == 8
    assert candidate(10, [[8, 2], [7, 8], [9, 2], [4, 2], [6, 4], [3, 9], [5, 4], [1, 9], [10, 8]]) == 24
    assert candidate(8, [[3, 8], [2, 8], [1, 8], [6, 8], [4, 3], [7, 6], [5, 2]]) == 13
    assert candidate(9, [[5, 4], [2, 4], [9, 5], [3, 2], [7, 3], [1, 4], [8, 2], [6, 4]]) == 14
    assert candidate(10, [[10, 8], [5, 10], [1, 10], [3, 10], [7, 3], [2, 10], [6, 8], [9, 6], [4, 6]]) == 18
    assert candidate(9, [[6, 7], [5, 7], [8, 7], [9, 6], [2, 5], [4, 5], [1, 8], [3, 6]]) == 11
    assert candidate(10, [[1, 6], [9, 1], [5, 9], [10, 6], [4, 9], [8, 9], [7, 8], [2, 1], [3, 1]]) == 24
    assert candidate(8, [[4, 5], [3, 4], [6, 5], [1, 4], [2, 3], [8, 4], [7, 3]]) == 10
    assert candidate(7, [[7, 4], [6, 4], [2, 6], [5, 6], [3, 2], [1, 5]]) == 9
    assert candidate(10, [[3, 2], [5, 3], [1, 2], [9, 5], [7, 5], [6, 3], [4, 3], [8, 6], [10, 1]]) == 8
    assert candidate(8, [[2, 8], [5, 2], [4, 2], [7, 4], [3, 2], [1, 3], [6, 3]]) == 7
    assert candidate(6, [[6, 3], [2, 3], [4, 2], [5, 2], [1, 6]]) == 3
    assert candidate(9, [[7, 3], [5, 3], [4, 3], [9, 7], [6, 5], [8, 3], [2, 4], [1, 5]]) == 8
    assert candidate(5, [[1, 2], [5, 1], [4, 5], [3, 4]]) == 5
    assert candidate(9, [[8, 3], [6, 8], [2, 8], [4, 3], [5, 4], [7, 5], [9, 4], [1, 5]]) == 15
    assert candidate(5, [[2, 1], [4, 2], [5, 1], [3, 2]]) == 4
    assert candidate(6, [[4, 2], [6, 2], [3, 2], [1, 6], [5, 2]]) == 5
    assert candidate(10, [[10, 5], [3, 10], [4, 3], [8, 3], [7, 4], [1, 7], [6, 5], [9, 1], [2, 5]]) == 14
    assert candidate(9, [[4, 7], [6, 4], [8, 4], [2, 8], [5, 2], [9, 7], [1, 6], [3, 7]]) == 13
    assert candidate(10, [[7, 3], [1, 3], [2, 3], [10, 2], [4, 2], [8, 1], [9, 4], [5, 3], [6, 3]]) == 10
    assert candidate(7, [[4, 7], [2, 7], [3, 4], [1, 7], [6, 4], [5, 4]]) == 9


def test_check():
    check(countPaths)


### Metadata below ###
# question_id = 3112
# question_title = Count Valid Paths in a Tree
# question_title_slug = count-valid-paths-in-a-tree
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 212
# question_dislikes = 5