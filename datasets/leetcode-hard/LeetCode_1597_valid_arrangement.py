from typing import List


def valid_arrangement(pairs: List[List[int]]) -> List[List[int]]:
    """
    You are given a 0-indexed 2D integer array pairs where pairs[i] = [starti, endi]. An arrangement of pairs is valid if for every index i where 1 <= i < pairs.length, we have endi-1 == starti.
    Return any valid arrangement of pairs.
    Note: The inputs will be generated such that there exists a valid arrangement of pairs.
 
    Example 1:

    Input: pairs = [[5,1],[4,5],[11,9],[9,4]]
    Output: [[11,9],[9,4],[4,5],[5,1]]
    Explanation:
    This is a valid arrangement since endi-1 always equals starti.
    end0 = 9 == 9 = start1 
    end1 = 4 == 4 = start2
    end2 = 5 == 5 = start3

    Example 2:

    Input: pairs = [[1,3],[3,2],[2,1]]
    Output: [[1,3],[3,2],[2,1]]
    Explanation:
    This is a valid arrangement since endi-1 always equals starti.
    end0 = 3 == 3 = start1
    end1 = 2 == 2 = start2
    The arrangements [[2,1],[1,3],[3,2]] and [[3,2],[2,1],[1,3]] are also valid.

    Example 3:

    Input: pairs = [[1,2],[1,3],[2,1]]
    Output: [[1,2],[2,1],[1,3]]
    Explanation:
    This is a valid arrangement since endi-1 always equals starti.
    end0 = 2 == 2 = start1
    end1 = 1 == 1 = start2

 
    Constraints:

    1 <= pairs.length <= 105
    pairs[i].length == 2
    0 <= starti, endi <= 109
    starti != endi
    No two pairs are exactly the same.
    There exists a valid arrangement of pairs.

    """
    ### Canonical solution below ###
    graph = {}
    for start, end in pairs:
        if start not in graph:
            graph[start] = []
        graph[start].append(end)

    result = []
    current = pairs[0][0]

    while graph:
        pair = [current, graph[current].pop()]
        if not graph[current]:
            del graph[current]
        result.append(pair)
        current = pair[1]

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([[0,1],[1,2],[2,3]]) == [[0,1],[1,2],[2,3]]
	assert candidate([[9,8],[10,9],[8,10]]) == [[9,8],[8,10],[10,9]]
	assert candidate([[1,3],[3,2],[2,1]]) == [[1,3],[3,2],[2,1]]
	assert candidate([[16,17],[18,16],[17,18]]) == [[16,17],[17,18],[18,16]]
	assert candidate([[3,5],[7,3],[5,7]]) == [[3,5],[5,7],[7,3]]
	assert candidate([[0,1],[1,2],[2,0]]) == [[0,1],[1,2],[2,0]]
	assert candidate([[0,1],[2,0],[1,2]]) == [[0,1],[1,2],[2,0]]
	assert candidate([[11,10],[12,11],[10,12]]) == [[11,10],[10,12],[12,11]]
	assert candidate([[13,14],[15,13],[14,15]]) == [[13,14],[14,15],[15,13]]
	assert candidate([[12,0],[0,10],[10,7],[7,12]]) == [[12,0],[0,10],[10,7],[7,12]]
	assert candidate([[5,2],[3,5],[2,3]]) == [[5,2],[2,3],[3,5]]
	assert candidate([[1,5],[3,1],[5,3]]) == [[1,5],[5,3],[3,1]]
def test_check():
	check(valid_arrangement)
# Metadata Difficulty: Hard
# Metadata Topics: depth-first-search,graph,eulerian-circuit
# Metadata Coverage: 100
