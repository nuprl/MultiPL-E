from typing import List


def possible_bipartition(n: int, dislikes: List[List[int]]) -> bool:
    """
    We want to split a group of n people (labeled from 1 to n) into two groups of any size. Each person may dislike some other people, and they should not go into the same group.
    Given the integer n and the array dislikes where dislikes[i] = [ai, bi] indicates that the person labeled ai does not like the person labeled bi, return true if it is possible to split everyone into two groups in this way.
 
    Example 1:

    Input: n = 4, dislikes = [[1,2],[1,3],[2,4]]
    Output: true
    Explanation: The first group has [1,4], and the second group has [2,3].

    Example 2:

    Input: n = 3, dislikes = [[1,2],[1,3],[2,3]]
    Output: false
    Explanation: We need at least 3 groups to divide them. We cannot put them in two groups.

 
    Constraints:

    1 <= n <= 2000
    0 <= dislikes.length <= 104
    dislikes[i].length == 2
    1 <= ai < bi <= n
    All the pairs of dislikes are unique.

    """
    ### Canonical solution below ###
    from collections import defaultdict

    def dfs(person, group):
        if person in groups:
            return groups[person] == group
        groups[person] = group
        for other in dislike_list[person]:
            if not dfs(other, -group):
                return False
        return True

    groups = {}
    dislike_list = defaultdict(list)
    for p1, p2 in dislikes:
        dislike_list[p1].append(p2)
        dislike_list[p2].append(p1)

    for person in range(1, n + 1):
        if person not in groups and not dfs(person, 1):
            return False

    return True




### Unit tests below ###
def check(candidate):
	assert candidate(7, [[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]) == True
	assert candidate(3, [[1,2],[1,3]]) == True
	assert candidate(4, [[1,2],[1,3],[2,3],[3,4],[2,4],[4,2]]) == False
	assert candidate(7, [[1,2],[1,3],[1,4],[1,5],[1,6],[1,7],[2,3],[2,4],[2,5],[2,6],[2,7],[3,4],[3,5],[3,6],[3,7],[4,5],[4,6],[4,7],[5,6],[5,7],[6,7],[1,5]]) == False
	assert candidate(5, [[1,2],[2,3],[3,4],[4,5]]) == True
	assert candidate(3, [[1,2],[2,3]]) == True
	assert candidate(3, [[1,2],[2,3],[3,1]]) == False
	assert candidate(5, [[1,2],[1,3],[2,3],[3,4],[4,5],[1,5]]) == False
	assert candidate(5, [[1,2],[1,3],[2,3],[3,1],[4,5],[5,1]]) == False
	assert candidate(5, [[1,2],[2,3],[4,5]]) == True
	assert candidate(3, [[1,2],[1,3],[2,3]]) == False
	assert candidate(5, [[1,2],[3,4],[4,5]]) == True
	assert candidate(7, [[1,2],[2,3],[3,4],[4,5],[5,6],[6,7],[7,1]]) == False
	assert candidate(6, [[1,2],[2,3],[3,4],[4,5],[5,1]]) == False
	assert candidate(6, [[1,2],[2,3],[3,4],[4,5],[5,6]]) == True
	assert candidate(5, [[1,2],[1,3],[2,3],[3,4],[4,5],[3,5]]) == False
	assert candidate(4, [[1,2],[3,4]]) == True
	assert candidate(5, [[1,2],[1,3],[2,3],[3,4],[4,5],[5,1]]) == False
	assert candidate(6, [[1,2],[1,3],[2,3],[3,4],[3,5],[4,5],[5,6]]) == False
	assert candidate(6, [[1,2],[1,3],[2,3],[3,4],[4,5],[5,6],[6,1]]) == False
	assert candidate(5, [[1,2],[1,3],[2,3],[3,4],[4,5],[4,2],[2,4]]) == False
	assert candidate(5, [[1,2],[1,3],[2,3],[3,4],[4,5]]) == False
	assert candidate(4, [[1,2],[1,3],[2,3]]) == False
	assert candidate(4, [[1,2],[1,3],[2,4]]) == True
	assert candidate(3, [[1,2],[2,3],[1,3]]) == False
	assert candidate(5, [[1,2],[2,3],[3,4],[4,5],[1,5]]) == False
	assert candidate(5, [[1,2],[3,4],[1,5],[2,3],[4,5]]) == False
	assert candidate(3, [[1,2],[1,3],[3,2]]) == False
	assert candidate(4, [[1,2],[2,3],[3,1]]) == False
	assert candidate(6, [[1,2],[1,3],[2,3],[3,4],[4,5],[5,6],[3,6]]) == False
	assert candidate(5, [[1,2],[2,3],[3,4],[4,5],[1,5],[1,4]]) == False
	assert candidate(5, [[1,2],[3,4],[1,5]]) == True
	assert candidate(6, [[1,2],[1,3],[2,3],[3,4],[4,5],[5,6]]) == False
	assert candidate(4, [[1,2],[2,3],[3,4]]) == True
	assert candidate(5, [[1,2],[3,4],[1,5],[2,3]]) == True
	assert candidate(4, [[1,2],[1,3],[2,3],[3,4],[4,2],[2,1]]) == False
	assert candidate(4, [[1,2],[1,3],[2,3],[1,4]]) == False
	assert candidate(4, [[1,2],[2,3],[1,3]]) == False
def test_check():
	check(possible_bipartition)
# Metadata Difficulty: Medium
# Metadata Topics: depth-first-search,breadth-first-search,union-find,graph
# Metadata Coverage: 100
