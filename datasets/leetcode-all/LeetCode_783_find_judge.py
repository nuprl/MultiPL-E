from typing import List


def find_judge(n: int, trust: List[List[int]]) -> int:
    """
    In a town, there are n people labeled from 1 to n. There is a rumor that one of these people is secretly the town judge.
    If the town judge exists, then:

    The town judge trusts nobody.
    Everybody (except for the town judge) trusts the town judge.
    There is exactly one person that satisfies properties 1 and 2.

    You are given an array trust where trust[i] = [ai, bi] representing that the person labeled ai trusts the person labeled bi. If a trust relationship does not exist in trust array, then such a trust relationship does not exist.
    Return the label of the town judge if the town judge exists and can be identified, or return -1 otherwise.
 
    Example 1:

    Input: n = 2, trust = [[1,2]]
    Output: 2

    Example 2:

    Input: n = 3, trust = [[1,3],[2,3]]
    Output: 3

    Example 3:

    Input: n = 3, trust = [[1,3],[2,3],[3,1]]
    Output: -1

 
    Constraints:

    1 <= n <= 1000
    0 <= trust.length <= 104
    trust[i].length == 2
    All the pairs of trust are unique.
    ai != bi
    1 <= ai, bi <= n

    """
    ### Canonical solution below ###
    trustCounts = [0] * (n + 1)
    for a, b in trust:
        trustCounts[a] -= 1
        trustCounts[b] += 1

    for i in range(1, n + 1):
        if trustCounts[i] == n - 1:
            return i
    return -1




### Unit tests below ###
def check(candidate):
	assert candidate(1, []) == 1
	assert candidate(7, [[1,7],[2,7],[3,7],[4,7],[5,7],[6,7]]) == 7
	assert candidate(2, [[1,2],[2,1]]) == -1
	assert candidate(4, [[1,4],[1,2],[1,3]]) == -1
	assert candidate(3, [[1,3],[2,3]]) == 3
	assert candidate(4, [[4,3],[1,3],[2,3]]) == 3
	assert candidate(8, [[1,8],[2,8],[3,8],[4,8],[5,8],[6,8],[7,8]]) == 8
	assert candidate(3, [[1,3],[2,3],[3,2]]) == -1
	assert candidate(4, [[1,4],[2,4],[3,4]]) == 4
	assert candidate(3, [[2,3],[3,1]]) == -1
	assert candidate(11, [[1,11],[2,11],[3,11],[4,11],[5,11],[6,11],[7,11],[8,11],[9,11],[10,11]]) == 11
	assert candidate(3, [[2,3],[1,3],[3,1]]) == -1
	assert candidate(3, [[1,2],[2,3],[1,3]]) == 3
	assert candidate(4, [[1,3],[1,4],[2,3],[2,4],[4,3]]) == 3
	assert candidate(4, [[1,2],[1,3],[2,3]]) == -1
	assert candidate(5, [[1,5],[2,5],[3,5],[4,5]]) == 5
	assert candidate(3, [[2,3],[1,3]]) == 3
	assert candidate(2, [[2,1],[1,2]]) == -1
	assert candidate(5, [[4,2],[4,3],[2,5],[3,5],[2,4],[1,5]]) == -1
	assert candidate(2, [[2,1]]) == 1
	assert candidate(6, [[3,6],[1,3],[3,5],[5,1],[1,5],[4,1]]) == -1
	assert candidate(4, [[1,3],[1,4],[2,3],[2,4]]) == -1
	assert candidate(10, [[1,10],[2,10],[3,10],[4,10],[5,10],[6,10],[7,10],[8,10],[9,10],[10,1],[10,2],[10,3],[10,4],[10,5],[10,6],[10,7],[10,8],[10,9],[10,10]]) == -1
	assert candidate(2, [[1,2]]) == 2
	assert candidate(10, [[1,10],[2,10],[3,10],[4,10],[5,10],[6,10],[7,10],[8,10],[9,10]]) == 10
	assert candidate(3, [[1,2],[2,3],[3,1]]) == -1
	assert candidate(5, [[1,2],[2,3],[3,4],[4,5],[1,5],[2,4],[1,4]]) == -1
	assert candidate(3, [[1,2],[2,3]]) == -1
	assert candidate(4, [[1,2],[1,3],[2,3],[2,4],[3,4]]) == -1
	assert candidate(3, [[1,3],[2,3],[3,1]]) == -1
	assert candidate(10, [[1,10],[1,9],[1,8],[2,10],[3,10],[4,10],[5,10],[6,10],[7,10],[8,10],[9,10]]) == 10
	assert candidate(4, [[4,3],[1,3],[3,2],[1,2]]) == -1
	assert candidate(4, [[1,3],[1,4],[2,3],[2,4],[3,1],[3,4],[4,1],[4,3]]) == -1
	assert candidate(4, [[3,1],[2,1],[1,3],[1,2],[2,3]]) == -1
	assert candidate(4, [[1,2],[2,3],[3,1]]) == -1
	assert candidate(6, [[1,6],[2,6],[3,6],[4,6],[5,6]]) == 6
	assert candidate(9, [[1,9],[2,9],[3,9],[4,9],[5,9],[6,9],[7,9],[8,9]]) == 9
	assert candidate(3, [[1,2],[2,3],[3,1],[1,3]]) == -1
	assert candidate(5, [[1,5],[2,5],[3,5],[4,5],[1,4],[1,3]]) == 5
def test_check():
	check(find_judge)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,graph
# Metadata Coverage: 100
