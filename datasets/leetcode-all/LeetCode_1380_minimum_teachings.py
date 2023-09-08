from typing import List


def minimum_teachings(n: int, languages: List[List[int]], friendships: List[List[int]]) -> int:
    """
    On a social network consisting of m users and some friendships between users, two users can communicate with each other if they know a common language.
    You are given an integer n, an array languages, and an array friendships where:

    There are n languages numbered 1 through n,
    languages[i] is the set of languages the i​​​​​​th​​​​ user knows, and
    friendships[i] = [u​​​​​​i​​​, v​​​​​​i] denotes a friendship between the users u​​​​​​​​​​​i​​​​​ and vi.

    You can choose one language and teach it to some users so that all friends can communicate with each other. Return the minimum number of users you need to teach.
    Note that friendships are not transitive, meaning if x is a friend of y and y is a friend of z, this doesn't guarantee that x is a friend of z.
 
    Example 1:

    Input: n = 2, languages = [[1],[2],[1,2]], friendships = [[1,2],[1,3],[2,3]]
    Output: 1
    Explanation: You can either teach user 1 the second language or user 2 the first language.

    Example 2:

    Input: n = 3, languages = [[2],[1,3],[1,2],[3]], friendships = [[1,4],[1,2],[3,4],[2,3]]
    Output: 2
    Explanation: Teach the third language to users 1 and 3, yielding two users to teach.

 
    Constraints:

    2 <= n <= 500
    languages.length == m
    1 <= m <= 500
    1 <= languages[i].length <= n
    1 <= languages[i][j] <= n
    1 <= u​​​​​​i < v​​​​​​i <= languages.length
    1 <= friendships.length <= 500
    All tuples (u​​​​​i, v​​​​​​i) are unique
    languages[i] contains only unique values

    """
    ### Canonical solution below ###
    language_users = {}
    unconnected_users = set()

    for u, v in friendships:
        can_communicate = any(lang in languages[v-1] for lang in languages[u-1])
        if not can_communicate:
            unconnected_users.add(u)
            unconnected_users.add(v)

    res = len(unconnected_users)
    for i in range(1, n+1):
        cnt = sum(i not in languages[user-1] for user in unconnected_users)
        res = min(res, cnt)

    return res




### Unit tests below ###
def check(candidate):
	assert candidate(4, [[1,2,3,4],[2,3,4],[3,4,1],[4,1,2]], [[1,2],[2,3],[3,4],[4,1]]) == 0
	assert candidate(6, [[1,2,3],[2,3,4],[3,4,5],[4,5,6],[1,2,3],[3,4,5],[1,2,3]], [[1,2],[2,3],[4,5],[5,6]]) == 1
	assert candidate(3, [[1,2],[2],[1]], [[2,3],[1,3]]) == 1
	assert candidate(3, [[1,2,3],[2,3],[1,2,3]], [[1,2],[2,3]]) == 0
	assert candidate(4, [[1,2],[1,2,3,4],[2,3,4],[1,2,3],[1,2,3,4]], [[2,3],[3,1],[1,3],[3,2],[4,1]]) == 0
	assert candidate(4, [[1,2,3],[2,3,4],[3,4,1],[1,2,3,4]], [[1,2],[2,3],[3,4],[4,1]]) == 0
	assert candidate(3, [[1,2,3],[1,2],[1,3],[3]], [[1,2],[1,3],[2,3]]) == 0
	assert candidate(3, [[2],[1,3],[1,2,3]], [[1,2],[1,3],[2,3]]) == 1
	assert candidate(2, [[2],[1]], [[2,1]]) == 1
	assert candidate(3, [[1,2,3],[2,3],[3,1]], [[1,2],[2,3],[1,3]]) == 0
	assert candidate(3, [[1,2,3],[2,3],[1,3]], [[1,2],[1,3],[2,3]]) == 0
	assert candidate(2, [[1,2],[1,2]], [[1,2]]) == 0
	assert candidate(4, [[2],[1,4],[1,2,4],[4,1,2],[2,3]], [[1,2],[2,3],[3,4],[2,4]]) == 1
	assert candidate(4, [[1],[2],[3],[4]], [[1,2],[2,3],[3,4],[4,1]]) == 3
	assert candidate(2, [[1],[2]], [[1,2]]) == 1
	assert candidate(3, [[1,2,3],[2,3],[3,1]], [[1,2],[2,3],[3,1]]) == 0
	assert candidate(3, [[1,2,3],[2,3],[1,3],[3],[3]], [[1,2],[2,3],[3,1]]) == 0
	assert candidate(2, [[1,2],[2,1]], [[1,2]]) == 0
	assert candidate(3, [[1,2,3],[2,3],[1,2,3]], [[1,2],[2,3],[3,1]]) == 0
	assert candidate(3, [[1,2],[2,3],[1,2,3]], [[1,2],[2,3],[3,1]]) == 0
	assert candidate(2, [[1],[1,2]], [[1,2]]) == 0
	assert candidate(3, [[1,2],[2,3],[3,1]], [[1,2],[2,3]]) == 0
def test_check():
	check(minimum_teachings)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy
# Metadata Coverage: 100
