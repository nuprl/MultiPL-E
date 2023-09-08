from typing import List


def validateBinaryTreeNodes(n: int, leftChild: List[int], rightChild: List[int]) -> bool:
    """
    You have n binary tree nodes numbered from 0 to n - 1 where node i has two children leftChild[i] and rightChild[i], return true if and only if all the given nodes form exactly one valid binary tree.
    If node i has no left child then leftChild[i] will equal -1, similarly for the right child.
    Note that the nodes have no values and that we only use the node numbers in this problem.
 
    Example 1:


    Input: n = 4, leftChild = [1,-1,3,-1], rightChild = [2,-1,-1,-1]
    Output: true

    Example 2:


    Input: n = 4, leftChild = [1,-1,3,-1], rightChild = [2,3,-1,-1]
    Output: false

    Example 3:


    Input: n = 2, leftChild = [1,0], rightChild = [-1,-1]
    Output: false

 
    Constraints:

    n == leftChild.length == rightChild.length
    1 <= n <= 104
    -1 <= leftChild[i], rightChild[i] <= n - 1

    """
    ### Canonical solution below ###
    parent = [-1] * n
    for i in range(n):
        if leftChild[i] != -1:
            if parent[leftChild[i]] != -1:
                return False
            parent[leftChild[i]] = i
        if rightChild[i] != -1:
            if parent[rightChild[i]] != -1:
                return False
            parent[rightChild[i]] = i

    root = -1
    for i in range(n):
        if parent[i] == -1:
            if root != -1:
                return False
            root = i

    return root != -1




### Unit tests below ###
def check(candidate):
	assert candidate(2, [-1, -1], [-1, -1]) == False
	assert candidate(2, [1, -1], [-1, -1]) == True
	assert candidate(6, [1, 2, 3, 4, 5, -1], [-1, -1, -1, -1, -1, -1]) == True
	assert candidate(5, [1, 2, 3, 4, -1], [1, 2, 3, 4, -1]) == False
	assert candidate(7, [1, 2, 3, 4, 5, 6, -1], [1, 2, 3, 4, 5, 6, -1]) == False
	assert candidate(6, [1, 2, 3, 4, 5, -1], [2, 3, 4, 5, -1, -1]) == False
	assert candidate(5, [1, 2, 3, 4, -1], [-1, -1, -1, -1, -1]) == True
	assert candidate(7, [1, 2, 3, 4, 5, 6, -1], [-1, -1, -1, -1, -1, -1, -1]) == True
	assert candidate(2, [1, 0], [-1, -1]) == False
	assert candidate(4, [1, -1, 3, -1], [-1, -1, -1, -1]) == False
	assert candidate(3, [-1, -1, -1], [-1, -1, -1]) == False
	assert candidate(4, [-1, -1, -1, -1], [-1, -1, -1, 3]) == False
	assert candidate(4, [1, -1, 3, -1], [2, -1, -1, -1]) == True
	assert candidate(7, [1, 2, 3, 4, 5, 6, -1], [1, 2, 3, 4, 5, -1, -1]) == False
	assert candidate(3, [1, -1, 2], [-1, -1, -1]) == True
	assert candidate(2, [1, -1], [0, -1]) == False
	assert candidate(7, [1, 2, 3, 4, 5, 6, -1], [-1, -1, -1, -1, -1, -1, 2]) == False
	assert candidate(4, [1, -1, -1, -1], [2, -1, -1, -1]) == False
	assert candidate(2, [1, 0], [0, 1]) == False
	assert candidate(3, [1, 2, -1], [-1, -1, -1]) == True
	assert candidate(4, [1, 3, -1, -1], [-1, -1, -1, -1]) == False
	assert candidate(5, [1, 2, 3, 4, -1], [2, 3, 4, -1, -1]) == False
	assert candidate(7, [1, 2, 3, 4, 5, 6, -1], [2, 3, 4, 5, 6, -1, -1]) == False
	assert candidate(4, [1, -1, 3, -1], [2, 3, -1, -1]) == False
	assert candidate(1, [-1], [-1]) == True
def test_check():
	check(validateBinaryTreeNodes)
# Metadata Difficulty: Medium
# Metadata Topics: tree,depth-first-search,breadth-first-search,union-find,graph,binary-tree
# Metadata Coverage: 100
