from typing import List


def num_equiv_domino_pairs(dominoes: List[List[int]]) -> int:
    """
    Given a list of dominoes, dominoes[i] = [a, b] is equivalent to dominoes[j] = [c, d] if and only if either (a == c and b == d), or (a == d and b == c) - that is, one domino can be rotated to be equal to another domino.
    Return the number of pairs (i, j) for which 0 <= i < j < dominoes.length, and dominoes[i] is equivalent to dominoes[j].
 
    Example 1:

    Input: dominoes = [[1,2],[2,1],[3,4],[5,6]]
    Output: 1

    Example 2:

    Input: dominoes = [[1,2],[1,2],[1,1],[1,2],[2,2]]
    Output: 3

 
    Constraints:

    1 <= dominoes.length <= 4 * 104
    dominoes[i].length == 2
    1 <= dominoes[i][j] <= 9

    """
    ### Canonical solution below ###
    from collections import defaultdict
    freq = defaultdict(int)
    result = 0
    for domino in dominoes:
        key = min(domino[0], domino[1]) * 10 + max(domino[0], domino[1])
        result += freq[key]
        freq[key] += 1
    return result




### Unit tests below ###
def check(candidate):
	assert candidate([[1,1],[2,2],[3,4],[5,6]]) == 0
	assert candidate([]) == 0
	assert candidate( [[2,1],[2,1],[2,1],[2,1]]) == 6
	assert candidate([[1,2],[1,2],[1,1],[1,2],[2,2]]) == 3
	assert candidate([[9,9],[9,9],[9,9],[9,9],[9,9],[9,9],[9,9]]) == 21
	assert candidate([[1,2],[3,4],[1,2]]) == 1
	assert candidate([[1,2],[2,3],[3,4],[4,5],[5,1]]) == 0
	assert candidate([[3,1],[3,1]]) == 1
	assert candidate( [[1,2],[2,1],[2,2],[2,2]]) == 2
	assert candidate([[1,1],[1,1],[1,1],[1,1]]) == 6
	assert candidate([[1,2],[3,4],[5,6],[7,8],[9,10],[10,9]]) == 1
	assert candidate(
    [[6,5],[6,4],[6,2],[6,6],[4,3],[3,1],[5,1],[3,3],[5,5],[1,6],[5,2],[4,6],[3,2],[1,1],[5,6],[1,2],[4,4],[2,3],[1,3],[5,4],[4,1],[2,4],[3,5],[3,5],[2,2],[6,3],[3,4],[5,3],[2,6]]) == 9
	assert candidate( [[1,2],[3,4],[1,2],[3,4],[1,2],[3,4],[1,1],[3,3]]) == 6
	assert candidate([[1,2],[3,4],[5,6]]) == 0
	assert candidate([[1,1],[2,2],[3,3]]) == 0
	assert candidate(
    [[6,5],[6,4],[6,2],[6,6],[4,3],[3,1],[5,1],[3,3],[5,5],[1,6],[5,2],[4,6],[3,2],[1,1],[5,6],[1,2],[4,4],[2,3],[1,3],[5,4],[4,1],[2,4],[3,5],[3,5]]) == 5
	assert candidate([[1,2],[2,1],[3,4],[5,6]]) == 1
	assert candidate(
    [[6,5],[6,4],[6,2],[6,6],[4,3],[3,1],[5,1],[3,3],[5,5],[1,6],[5,2],[4,6],[3,2],[1,1],[5,6],[1,2],[4,4],[2,3],[1,3],[5,4],[4,1],[2,4],[3,5]]) == 4
def test_check():
	check(num_equiv_domino_pairs)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,counting
# Metadata Coverage: 100
