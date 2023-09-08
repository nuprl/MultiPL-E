from typing import List


def check_ways(pairs: List[List[int]]) -> int:
    """
    You are given an array pairs, where pairs[i] = [xi, yi], and:

    There are no duplicates.
    xi < yi

    Let ways be the number of rooted trees that satisfy the following conditions:

    The tree consists of nodes whose values appeared in pairs.
    A pair [xi, yi] exists in pairs if and only if xi is an ancestor of yi or yi is an ancestor of xi.
    Note: the tree does not have to be a binary tree.

    Two ways are considered to be different if there is at least one node that has different parents in both ways.
    Return:

    0 if ways == 0
    1 if ways == 1
    2 if ways > 1

    A rooted tree is a tree that has a single root node, and all edges are oriented to be outgoing from the root.
    An ancestor of a node is any node on the path from the root to that node (excluding the node itself). The root has no ancestors.
 
    Example 1:


    Input: pairs = [[1,2],[2,3]]
    Output: 1
    Explanation: There is exactly one valid rooted tree, which is shown in the above figure.

    Example 2:


    Input: pairs = [[1,2],[2,3],[1,3]]
    Output: 2
    Explanation: There are multiple valid rooted trees. Three of them are shown in the above figures.

    Example 3:

    Input: pairs = [[1,2],[2,3],[2,4],[1,5]]
    Output: 0
    Explanation: There are no valid rooted trees.
 
    Constraints:

    1 <= pairs.length <= 105
    1 <= xi < yi <= 500
    The elements in pairs are unique.

    """
    ### Canonical solution below ###
    candidates = {}
    for x, y in pairs:
        candidates[x] = candidates.get(x, 0) + 1
        candidates[y] = candidates.get(y, 0) + 1

    root_count = sum(1 for v in candidates.values() if v == 1)
    return min(root_count, 2)




### Unit tests below ###
def check(candidate):
	assert candidate(
    [
        [1,2],[2,3],[3,4],[4,5],[5,6],[6,7],[7,8],[8,9],[1,9],
        [1,10],[7,10],[9,10],[9,11],[11,12],[11,13],[13,14]
    ]
) == 2
	assert candidate(
    [[-1000000000, 1000000000], [-1000000000, 1000000000], [-1000000000, 1000000000], [-1000000000, 1000000000]]) == 0
	assert candidate([[1,2],[1,3],[1,4],[1,5],[5,6]]) == 2
	assert candidate([[1, 2], [2, 3], [1, 3], [1, 4], [1, 5]]) == 2
	assert candidate([[1,2],[2,3],[3,4],[5,6],[6,7]]) == 2
	assert candidate([[1,2],[2,3],[4,5],[5,6]]) == 2
	assert candidate([[1,2],[2,3],[3,4],[4,5],[5,6],[6,7],[7,8],[8,9],[10,11],[11,12],[12,13],[13,14],[14,15],[15,16],[16,17],[17,18]]) == 2
	assert candidate([[1,2],[1,3],[1,4],[1,5],[2,6],[3,6],[4,6],[5,6]]) == 0
	assert candidate([[1,2],[2,3],[1,3],[1,4],[1,5]]) == 2
	assert candidate([[1,2],[2,3],[3,4],[4,5],[5,6],[6,7],[7,8],[8,9],[10,11],[11,12],[12,13],[13,14],[14,15],[15,16],[16,17],[17,18],[19,20]]) == 2
	assert candidate([[1,2],[2,3],[1,3],[1,4],[1,5],[4,6]]) == 2
	assert candidate([[1,2],[3,4],[5,6],[7,8],[9,10]]) == 2
	assert candidate([[1,2],[3,4]]) == 2
	assert candidate(
    [[9,10],[1,2],[2,3],[4,5],[5,6],[6,7],[2,8],[3,4],[2,1],[9,10],[5,1],[8,7],[8,6]]) == 0
def test_check():
	check(check_ways)
# Metadata Difficulty: Hard
# Metadata Topics: tree,graph
# Metadata Coverage: 100
