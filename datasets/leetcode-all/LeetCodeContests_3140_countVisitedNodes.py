from typing import List

def countVisitedNodes(edges: List[int]) -> List[int]:
    """
    There is a directed graph consisting of n nodes numbered from 0 to n - 1 and n directed edges.
    
    You are given a 0-indexed array edges where edges[i] indicates that there is an edge from node i to node edges[i].
    
    Consider the following process on the graph:
    
     * You start from a node x and keep visiting other nodes through edges until you reach a node that you have already visited before on this same process.
    
    Return an array answer where answer[i] is the number of different nodes that you will visit if you perform the process starting from node i.
    
    Example 1:
    
    [https://assets.leetcode.com/uploads/2023/08/31/graaphdrawio-1.png]
    
    Input: edges = [1,2,0,0]
    Output: [3,3,3,4]
    Explanation: We perform the process starting from each node in the following way:
    - Starting from node 0, we visit the nodes 0 -> 1 -> 2 -> 0. The number of different nodes we visit is 3.
    - Starting from node 1, we visit the nodes 1 -> 2 -> 0 -> 1. The number of different nodes we visit is 3.
    - Starting from node 2, we visit the nodes 2 -> 0 -> 1 -> 2. The number of different nodes we visit is 3.
    - Starting from node 3, we visit the nodes 3 -> 0 -> 1 -> 2 -> 0. The number of different nodes we visit is 4.
    
    Example 2:
    
    [https://assets.leetcode.com/uploads/2023/08/31/graaph2drawio.png]
    
    Input: edges = [1,2,3,4,0]
    Output: [5,5,5,5,5]
    Explanation: Starting from any node we can visit every node in the graph in the process.
    
    
    Constraints:
    
     * n == edges.length
     * 2 <= n <= 105
     * 0 <= edges[i] <= n - 1
     * edges[i] != i
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 0, 0]) == [3,3,3,4]
    assert candidate([1, 2, 3, 4, 0]) == [5,5,5,5,5]
    assert candidate([3, 6, 1, 0, 5, 7, 4, 3]) == [2,7,8,2,5,4,6,3]
    assert candidate([7, 0, 7, 0, 5, 3, 3, 0]) == [2,3,3,3,5,4,4,2]
    assert candidate([6, 3, 6, 1, 0, 8, 0, 6, 6]) == [2,2,3,2,3,4,2,3,3]
    assert candidate([8, 17, 14, 8, 14, 12, 16, 11, 4, 14, 19, 6, 8, 8, 2, 10, 2, 1, 1, 18]) == [5,2,2,5,3,6,4,6,4,3,5,5,5,5,2,6,3,2,3,4]
    assert candidate([11, 9, 6, 8, 3, 2, 8, 11, 14, 2, 3, 7, 2, 2, 1]) == [3,6,6,7,8,7,6,2,6,6,8,2,7,7,6]
    assert candidate([9, 4, 4, 8, 5, 2, 3, 6, 5, 5]) == [5,4,3,5,3,3,6,7,4,4]
    assert candidate([1, 0, 1, 1]) == [2,2,3,3]
    assert candidate([4, 0, 3, 2, 3]) == [4,5,2,2,3]
    assert candidate([7, 7, 0, 9, 5, 6, 10, 16, 7, 4, 15, 13, 2, 16, 1, 7, 6]) == [6,6,7,9,7,6,5,5,6,8,5,7,8,6,7,5,5]
    assert candidate([2, 6, 3, 1, 5, 3, 5]) == [6,4,5,4,5,4,4]
    assert candidate([15, 4, 13, 12, 12, 2, 11, 6, 14, 10, 15, 3, 5, 5, 2, 4]) == [7,6,3,5,5,3,7,8,5,8,7,6,4,3,4,6]
    assert candidate([1, 5, 0, 5, 2, 7, 1, 2]) == [5,5,5,6,6,5,6,5]
    assert candidate([9, 6, 13, 1, 11, 4, 17, 9, 2, 18, 15, 4, 14, 15, 7, 2, 18, 16, 1]) == [7,5,3,6,2,3,5,7,4,6,4,2,9,3,8,3,5,5,5]
    assert candidate([18, 18, 4, 6, 1, 8, 14, 4, 16, 11, 13, 6, 10, 10, 6, 18, 14, 11, 4]) == [4,3,4,3,3,5,2,4,4,4,2,3,3,2,2,4,3,4,3]
    assert candidate([5, 4, 1, 6, 3, 10, 3, 10, 11, 10, 8, 1]) == [9,4,5,2,3,8,2,8,6,8,7,5]
    assert candidate([8, 6, 3, 1, 0, 6, 8, 1, 4, 7, 8]) == [3,5,7,6,3,5,4,6,3,7,4]
    assert candidate([9, 5, 18, 15, 8, 4, 3, 3, 18, 5, 13, 0, 1, 18, 9, 6, 18, 9, 14, 15]) == [7,7,7,3,6,6,3,4,6,6,8,8,8,7,6,3,7,7,6,4]
    assert candidate([5, 2, 1, 0, 6, 9, 10, 12, 12, 2, 16, 2, 9, 17, 0, 4, 9, 6]) == [5,2,2,6,7,4,6,5,5,3,5,3,4,8,6,8,4,7]
    assert candidate([6, 4, 1, 2, 3, 2, 0]) == [2,4,4,4,4,5,2]
    assert candidate([1, 13, 4, 12, 15, 11, 1, 8, 15, 10, 1, 3, 0, 3, 2, 2]) == [5,5,3,5,3,7,6,5,4,7,6,6,5,5,4,3]
    assert candidate([2, 2, 0]) == [2,3,2]
    assert candidate([11, 8, 8, 11, 5, 8, 9, 11, 6, 8, 0, 12, 9, 12]) == [6,4,4,6,5,4,3,6,3,3,7,5,4,5]
    assert candidate([2, 3, 6, 8, 0, 4, 8, 6, 1]) == [6,3,5,3,7,8,4,5,3]
    assert candidate([2, 7, 17, 14, 3, 14, 11, 12, 9, 0, 15, 18, 1, 18, 0, 19, 11, 4, 1, 0]) == [6,3,6,6,6,7,6,3,8,7,9,5,3,5,6,8,6,6,4,7]
    assert candidate([5, 17, 10, 13, 16, 4, 7, 10, 19, 6, 15, 6, 9, 0, 1, 0, 12, 18, 10, 16]) == [10,13,11,12,10,10,10,10,12,10,10,11,10,11,14,10,10,12,11,11]
    assert candidate([1, 2, 6, 6, 1, 4, 4]) == [5,4,4,5,4,5,4]
    assert candidate([2, 0, 0, 2]) == [2,3,2,3]
    assert candidate([12, 10, 5, 0, 12, 8, 0, 4, 3, 1, 9, 4, 6]) == [3,3,7,4,4,6,3,5,5,3,3,5,3]
    assert candidate([8, 4, 0, 0, 8, 2, 3, 8, 7]) == [3,4,4,4,3,5,5,2,2]
    assert candidate([6, 7, 1, 10, 2, 10, 3, 5, 10, 4, 2]) == [8,5,5,6,6,5,7,5,6,7,5]
    assert candidate([2, 7, 5, 4, 8, 7, 2, 3, 0]) == [7,8,7,7,7,7,8,7,7]
    assert candidate([2, 3, 1, 1, 0, 4]) == [4,2,3,2,5,6]
    assert candidate([5, 2, 3, 1, 3, 1]) == [5,3,3,3,4,4]
    assert candidate([7, 6, 12, 0, 1, 9, 13, 6, 9, 6, 0, 0, 3, 9, 12, 13, 0]) == [5,4,8,6,5,4,3,4,4,3,6,6,7,3,8,4,6]
    assert candidate([1, 4, 9, 11, 11, 11, 14, 10, 11, 14, 2, 0, 14, 5, 10]) == [4,4,4,5,4,5,5,5,5,4,4,4,5,6,4]
    assert candidate([4, 3, 3, 1, 3]) == [4,2,3,2,3]
    assert candidate([7, 7, 6, 8, 0, 7, 8, 0, 0, 10, 9]) == [2,3,5,4,3,3,4,2,3,2,2]
    assert candidate([16, 5, 11, 9, 7, 17, 16, 8, 14, 5, 5, 1, 0, 8, 0, 16, 14, 15, 19, 4]) == [3,7,9,8,6,6,4,5,4,7,7,8,4,5,3,4,3,5,8,7]
    assert candidate([1, 8, 10, 6, 2, 1, 8, 9, 6, 12, 5, 10, 3]) == [4,3,6,3,7,4,2,6,2,5,5,6,4]
    assert candidate([4, 0, 1, 5, 0, 2]) == [2,3,4,6,2,5]
    assert candidate([9, 13, 1, 2, 13, 1, 0, 5, 10, 8, 2, 2, 3, 12]) == [9,5,5,5,6,6,10,7,7,8,6,6,5,5]
    assert candidate([12, 13, 16, 11, 17, 11, 2, 15, 12, 14, 4, 9, 3, 4, 17, 3, 4, 9]) == [7,6,6,5,4,5,7,7,7,3,5,4,6,5,3,6,5,3]
    assert candidate([2, 0, 1]) == [3,3,3]
    assert candidate([7, 10, 15, 18, 7, 1, 7, 16, 11, 8, 2, 13, 13, 15, 16, 0, 18, 5, 16]) == [4,8,6,3,4,9,4,3,8,9,7,7,7,6,3,5,2,10,2]
    assert candidate([1, 2, 0]) == [3,3,3]
    assert candidate([10, 13, 4, 11, 11, 6, 9, 2, 7, 4, 5, 7, 0, 11]) == [9,6,4,5,4,7,6,4,5,5,8,4,10,5]
    assert candidate([12, 15, 15, 2, 10, 1, 5, 6, 1, 2, 11, 13, 10, 4, 2, 0, 1]) == [6,8,8,9,4,9,10,11,9,9,4,4,5,4,9,7,9]
    assert candidate([1, 0]) == [2,2]
    assert candidate([7, 17, 3, 7, 7, 12, 15, 1, 14, 15, 16, 3, 13, 0, 3, 8, 0, 11, 1]) == [6,5,6,5,6,9,9,5,7,9,8,5,8,7,6,8,7,5,6]
    assert candidate([9, 4, 6, 2, 8, 6, 7, 4, 9, 8, 0, 2, 7]) == [3,4,6,7,3,6,5,4,2,2,4,7,5]
    assert candidate([13, 10, 6, 12, 12, 3, 4, 3, 10, 12, 1, 7, 8, 12, 9]) == [6,2,7,5,5,6,6,6,3,5,2,7,4,5,6]
    assert candidate([10, 3, 4, 4, 5, 7, 2, 9, 7, 0, 5]) == [5,8,7,7,6,5,8,5,6,5,5]
    assert candidate([2, 4, 0, 4, 2]) == [2,4,2,4,3]
    assert candidate([2, 2, 1]) == [3,2,2]
    assert candidate([19, 15, 1, 6, 8, 15, 5, 6, 4, 4, 19, 13, 3, 0, 15, 10, 13, 5, 6, 3]) == [7,7,8,6,2,6,6,7,2,3,6,9,7,8,7,6,9,7,7,6]
    assert candidate([11, 9, 5, 0, 5, 3, 9, 8, 1, 10, 4, 4]) == [5,8,6,5,5,5,8,10,9,7,6,5]
    assert candidate([13, 10, 12, 11, 5, 17, 0, 10, 7, 16, 5, 4, 9, 3, 15, 5, 4, 1]) == [9,4,9,7,5,4,10,5,6,7,4,6,8,8,6,5,6,4]
    assert candidate([7, 0, 9, 0, 7, 6, 2, 0, 7, 7]) == [2,3,4,3,3,6,5,2,3,3]
    assert candidate([1, 0, 0]) == [2,2,3]
    assert candidate([5, 9, 10, 17, 12, 3, 15, 5, 0, 3, 15, 5, 5, 15, 17, 5, 13, 15, 1]) == [5,6,6,4,6,4,5,5,6,5,5,5,5,5,5,4,6,4,7]
    assert candidate([1, 5, 1, 8, 1, 0, 1, 4, 6]) == [3,3,4,6,4,3,4,5,5]
    assert candidate([5, 3, 3, 4, 1, 4]) == [5,3,4,3,3,4]
    assert candidate([7, 12, 12, 5, 10, 11, 5, 0, 3, 12, 12, 9, 1, 3, 7]) == [2,2,3,6,4,5,6,2,7,3,3,4,2,7,3]
    assert candidate([3, 3, 3, 1]) == [3,2,3,2]
    assert candidate([13, 3, 15, 10, 12, 7, 13, 15, 3, 0, 1, 5, 15, 12, 10, 9]) == [5,3,6,3,6,7,6,6,4,5,3,8,5,5,4,5]
    assert candidate([8, 9, 0, 9, 0, 0, 9, 0, 7, 6, 5, 0]) == [3,3,4,3,4,4,2,3,3,2,5,4]
    assert candidate([2, 0, 7, 7, 3, 3, 0, 4, 5, 8]) == [5,6,4,3,3,4,6,3,5,6]
    assert candidate([13, 8, 7, 13, 10, 6, 11, 13, 13, 6, 8, 6, 0, 10]) == [4,4,5,4,4,3,2,4,3,3,3,2,5,3]
    assert candidate([12, 14, 5, 17, 7, 0, 15, 18, 5, 10, 6, 18, 10, 11, 1, 1, 18, 16, 0]) == [7,2,9,11,10,8,4,9,9,6,5,9,6,10,2,3,9,10,8]
    assert candidate([8, 6, 17, 7, 12, 10, 13, 14, 10, 10, 2, 15, 11, 5, 4, 13, 12, 12]) == [10,10,8,12,9,8,9,11,9,9,8,8,8,8,10,8,9,8]
    assert candidate([1, 0, 1, 1, 1]) == [2,2,3,3,3]
    assert candidate([17, 16, 15, 5, 11, 4, 4, 10, 14, 1, 17, 1, 4, 3, 12, 17, 14, 10]) == [3,6,4,8,6,7,7,3,7,7,2,6,6,9,6,3,6,2]
    assert candidate([14, 10, 16, 16, 12, 13, 13, 16, 13, 14, 15, 14, 1, 4, 13, 11, 4, 7]) == [9,8,10,10,8,9,9,10,9,9,8,8,8,8,8,8,9,11]
    assert candidate([2, 3, 0, 1]) == [2,2,2,2]
    assert candidate([8, 0, 11, 2, 0, 12, 0, 4, 11, 12, 0, 7, 3]) == [5,6,6,7,5,9,6,5,5,9,6,5,8]
    assert candidate([3, 0, 1, 0]) == [2,3,4,2]
    assert candidate([1, 3, 0, 1, 10, 11, 2, 6, 0, 5, 1, 4]) == [3,2,4,2,4,6,5,6,4,7,3,5]
    assert candidate([1, 16, 10, 6, 15, 10, 7, 9, 2, 15, 5, 6, 13, 1, 0, 16, 13]) == [4,3,3,8,5,2,7,6,4,5,2,8,4,3,5,4,3]
    assert candidate([4, 15, 10, 11, 0, 7, 9, 10, 1, 2, 9, 12, 5, 10, 6, 13]) == [2,6,3,8,2,5,4,4,7,3,3,7,6,4,5,5]
    assert candidate([4, 9, 8, 9, 1, 4, 7, 11, 5, 6, 4, 6, 4, 4, 2]) == [7,5,9,5,6,7,3,3,8,4,7,3,7,7,10]
    assert candidate([16, 14, 1, 6, 6, 1, 1, 15, 16, 16, 13, 14, 9, 3, 3, 11, 10]) == [8,4,5,4,5,5,4,7,8,8,6,5,9,5,4,6,7]
    assert candidate([6, 11, 15, 7, 5, 8, 11, 5, 14, 2, 6, 0, 8, 5, 13, 5]) == [3,4,6,6,5,4,3,5,4,7,4,3,5,4,4,5]
    assert candidate([14, 17, 11, 8, 5, 4, 10, 17, 3, 3, 2, 17, 13, 1, 17, 5, 5, 0]) == [3,4,5,2,2,2,7,4,2,3,6,4,6,5,3,3,3,3]
    assert candidate([1, 6, 8, 6, 2, 4, 2, 5, 9, 3]) == [7,6,5,5,6,7,5,8,5,5]
    assert candidate([1, 5, 4, 1, 5, 3, 4, 0]) == [4,3,5,3,4,3,5,5]
    assert candidate([17, 4, 3, 7, 3, 1, 15, 15, 13, 18, 4, 14, 1, 10, 13, 1, 0, 15, 16]) == [7,5,6,5,5,6,6,5,8,10,6,9,6,7,8,5,8,6,9]
    assert candidate([12, 2, 6, 6, 7, 8, 8, 13, 1, 12, 15, 1, 8, 3, 8, 2, 6]) == [6,4,4,5,8,5,4,7,4,6,6,5,5,6,5,5,5]
    assert candidate([3, 0, 0, 2]) == [3,4,3,3]
    assert candidate([5, 0, 1, 1, 2, 0]) == [2,3,4,4,5,2]
    assert candidate([16, 2, 13, 6, 7, 10, 1, 1, 7, 14, 7, 13, 9, 16, 4, 8, 15]) == [8,7,7,9,8,9,8,7,7,10,8,8,11,7,9,7,7]
    assert candidate([14, 5, 0, 16, 7, 15, 1, 18, 18, 6, 11, 15, 0, 2, 3, 0, 17, 4, 12]) == [9,12,10,9,9,11,13,9,10,14,12,11,9,11,9,10,9,9,9]
    assert candidate([7, 8, 1, 9, 7, 10, 1, 4, 2, 0, 9]) == [3,3,3,5,2,6,4,2,3,4,5]
    assert candidate([5, 3, 6, 2, 1, 3, 1, 3]) == [6,4,4,4,5,5,4,5]
    assert candidate([8, 14, 5, 13, 6, 9, 8, 11, 9, 4, 11, 14, 5, 12, 10, 10, 12]) == [5,4,6,8,4,5,4,4,4,4,3,3,6,7,3,4,7]
    assert candidate([6, 13, 11, 11, 6, 3, 3, 6, 1, 12, 4, 7, 14, 11, 0, 10]) == [5,6,5,4,5,5,4,4,7,8,6,4,7,5,6,7]
    assert candidate([12, 8, 6, 1, 5, 0, 1, 1, 11, 0, 12, 2, 0]) == [2,5,5,6,4,3,5,6,5,3,3,5,2]
    assert candidate([8, 2, 7, 17, 5, 1, 5, 17, 10, 2, 12, 3, 1, 0, 11, 3, 7, 4]) == [10,6,6,7,6,6,7,6,9,7,8,8,7,11,9,8,7,6]
    assert candidate([4, 2, 4, 2, 3]) == [4,4,3,3,3]


def test_check():
    check(countVisitedNodes)


### Metadata below ###
# question_id = 3140
# question_title = Count Visited Nodes in a Directed Graph
# question_title_slug = count-visited-nodes-in-a-directed-graph
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 274
# question_dislikes = 4