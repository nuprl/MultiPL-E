from typing import List


def findLongestChain(pairs: List[List[int]]) -> int:
    """
    You are given an array of n pairs pairs where pairs[i] = [lefti, righti] and lefti < righti.
    A pair p2 = [c, d] follows a pair p1 = [a, b] if b < c. A chain of pairs can be formed in this fashion.
    Return the length longest chain which can be formed.
    You do not need to use up all the given intervals. You can select pairs in any order.
 
    Example 1:

    Input: pairs = [[1,2],[2,3],[3,4]]
    Output: 2
    Explanation: The longest chain is [1,2] -> [3,4].

    Example 2:

    Input: pairs = [[1,2],[7,8],[4,5]]
    Output: 3
    Explanation: The longest chain is [1,2] -> [4,5] -> [7,8].

 
    Constraints:

    n == pairs.length
    1 <= n <= 1000
    -1000 <= lefti < righti <= 1000

    """
    ### Canonical solution below ###
    pairs.sort(key=lambda x: x[1])

    max_chain_length = 0
    last_right = float('-inf')
    for pair in pairs:
        if pair[0] > last_right:
            last_right = pair[1]
            max_chain_length += 1

    return max_chain_length




### Unit tests below ###
def check(candidate):
	assert candidate( [[1,4],[3,2],[5,4],[2,5],[3,5]]) == 2
	assert candidate([[1,4],[2,3],[3,4],[4,5]]) == 2
	assert candidate([[1,2],[2,3],[3,4],[1,3]]) == 2
	assert candidate([[1,2],[2,3],[3,4]]) == 2
	assert candidate([[1,3],[2,5],[4,7],[6,9]]) == 2
	assert candidate([[1,2],[3,4],[5,6],[7,8],[9,10],[11,12]]) == 6
	assert candidate([[1,3],[2,4],[3,5],[4,6]]) == 2
	assert candidate([[1,2],[2,3],[3,4],[4,5],[5,6],[1,6]]) == 3
	assert candidate([[1,3],[2,4],[5,7],[6,8]]) == 2
	assert candidate([[1,2],[2,3],[3,4],[4,5]]) == 2
	assert candidate([[1,4],[2,3],[5,6]]) == 2
	assert candidate([[1,5],[2,3],[3,4],[4,5]]) == 2
	assert candidate([[1,2],[3,4],[5,6],[7,8],[9,10]]) == 5
	assert candidate( [[1,5],[2,3],[4,6],[3,4]]) == 2
	assert candidate( [[1,4],[2,3],[3,4],[4,5]]) == 2
	assert candidate([[1,2],[3,4],[5,6],[7,8]]) == 4
	assert candidate([[1,5],[3,7],[4,6],[6,8],[9,10],[9,11]]) == 3
	assert candidate( [[1,3],[3,5],[5,6],[6,7],[4,2],[2,5],[5,3]]) == 3
	assert candidate([[1,2],[7,8],[4,5]]) == 3
	assert candidate([[1,2]]) == 1
	assert candidate([[1,10],[2,9],[3,8],[4,7],[5,6]]) == 1
	assert candidate(
    [[-1000000000, 1000000000], [-1000000000, 1000000000], [-1000000000, 1000000000], [-1000000000, 1000000000]]) == 1
	assert candidate(
    [[-1000000000, 1000000000], [-1000000000, 1000000000], [-1000000000, 1000000000], [-1000000000, 1000000000],
     [-1000000000, 1000000000]]) == 1
def test_check():
	check(findLongestChain)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,greedy,sorting
# Metadata Coverage: 100
