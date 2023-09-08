from typing import List


def can_make_pali_queries(s: str, queries: List[List[int]]) -> List[bool]:
    """
    You are given a string s and array queries where queries[i] = [lefti, righti, ki]. We may rearrange the substring s[lefti...righti] for each query and then choose up to ki of them to replace with any lowercase English letter.
    If the substring is possible to be a palindrome string after the operations above, the result of the query is true. Otherwise, the result is false.
    Return a boolean array answer where answer[i] is the result of the ith query queries[i].
    Note that each letter is counted individually for replacement, so if, for example s[lefti...righti] = "aaa", and ki = 2, we can only replace two of the letters. Also, note that no query modifies the initial string s.
 
    Example :

    Input: s = "abcda", queries = [[3,3,0],[1,2,0],[0,3,1],[0,3,2],[0,4,1]]
    Output: [true,false,false,true,true]
    Explanation:
    queries[0]: substring = "d", is palidrome.
    queries[1]: substring = "bc", is not palidrome.
    queries[2]: substring = "abcd", is not palidrome after replacing only 1 character.
    queries[3]: substring = "abcd", could be changed to "abba" which is palidrome. Also this can be changed to "baab" first rearrange it "bacd" then replace "cd" with "ab".
    queries[4]: substring = "abcda", could be changed to "abcba" which is palidrome.

    Example 2:

    Input: s = "lyb", queries = [[0,1,0],[2,2,1]]
    Output: [false,true]

 
    Constraints:

    1 <= s.length, queries.length <= 105
    0 <= lefti <= righti < s.length
    0 <= ki <= s.length
    s consists of lowercase English letters.

    """
    ### Canonical solution below ###
    result = []
    for left, right, k in queries:
        count = [0] * 26
        for i in range(left, right + 1):
            count[ord(s[i]) - ord('a')] += 1
        odd_count = sum(c % 2 for c in count)
        result.append(odd_count // 2 <= k)
    return result




### Unit tests below ###
def check(candidate):
	assert candidate("abccba", [[0, 2, 1]]) == [True]
	assert candidate("abcba", [[0, 4, 1]]) == [True]
	assert candidate("abcda", [[0, 4, 1]]) == [True]
	assert candidate("ab", [[0, 1, 1]]) == [True]
	assert candidate("aaa", [[0, 2, 0]]) == [True]
	assert candidate("a", [[0, 0, 0]]) == [True]
	assert candidate("abcba", [[0, 3, 1]]) == [True]
	assert candidate("abcde", [[1, 3, 2]]) == [True]
	assert candidate("bbabbc", [[1, 5, 2]]) == [True]
	assert candidate("abcba", [[2, 4, 1]]) == [True]
	assert candidate("abccba", [[1, 4, 0]]) == [True]
	assert candidate("abcda", [[0, 3, 2]]) == [True]
	assert candidate("aab", [[0, 1, 1]]) == [True]
	assert candidate("abab", [[0, 3, 1]]) == [True]
	assert candidate("abaa", [[0, 3, 1]]) == [True]
	assert candidate("abcba", [[0, 3, 0]]) == [False]
	assert candidate("abccca", [[0, 5, 2]]) == [True]
	assert candidate("abcba", [[0, 3, 2]]) == [True]
	assert candidate("ab", [[0, 1, 0]]) == [False]
	assert candidate("abcda", [[1, 2, 0]]) == [False]
	assert candidate("abccca", [[0, 5, 0]]) == [False]
	assert candidate("f", [[0, 0, 0]]) == [True]
	assert candidate("ab", [[0, 1, 2]]) == [True]
	assert candidate("abcba", [[1, 3, 0]]) == [True]
	assert candidate("aab", [[0, 2, 1]]) == [True]
	assert candidate("aaccb", [[0, 4, 1]]) == [True]
	assert candidate("abccba", [[0, 4, 1]]) == [True]
	assert candidate("abcba", [[0, 4, 0]]) == [True]
	assert candidate("abccba", [[0, 5, 1]]) == [True]
	assert candidate("abcde", [[0, 4, 1]]) == [False]
	assert candidate("abccba", [[0, 5, 2]]) == [True]
	assert candidate("abccba", [[0, 5, 0]]) == [True]
	assert candidate("abccca", [[0, 5, 0], [0, 5, 1], [0, 5, 2], [0, 5, 3]]) == [False, True, True, True]
	assert candidate("ab", [[0, 0, 0]]) == [True]
	assert candidate("abcda", [[3, 3, 0]]) == [True]
	assert candidate("abcda", [[3, 3, 0], [1, 2, 0], [0, 3, 1], [0, 3, 2], [0, 4, 1]]) == [
    True,
    False,
    False,
    True,
    True,
]
	assert candidate("abcde", [[0, 4, 2]]) == [True]
	assert candidate("abcda", [[3, 3, 0], [1, 2, 0], [0, 3, 1], [0, 3, 2], [0, 4, 1]]) == [True, False, False, True, True]
	assert candidate("cc", [[0, 1, 1]]) == [True]
	assert candidate("lyb", [[0, 1, 0], [2, 2, 1]]) == [False, True]
	assert candidate("abccba", [[0, 3, 1]]) == [True]
	assert candidate("abccca", [[0, 5, 1]]) == [True]
	assert candidate("abcba", [[1, 3, 1]]) == [True]
	assert candidate("abcba", [[3, 4, 1]]) == [True]
	assert candidate("abcda", [[0, 3, 1]]) == [False]
	assert candidate("abccca", [[0, 5, 3]]) == [True]
	assert candidate("abcba", [[0, 2, 2]]) == [True]
	assert candidate("abc", [[0, 2, 1]]) == [True]
	assert candidate("lyb", [[2, 2, 1]]) == [True]
	assert candidate("a", [[0, 0, 2]]) == [True]
	assert candidate("lyb", [[0, 1, 0]]) == [False]
	assert candidate("abcba", [[0, 1, 0]]) == [False]
	assert candidate("abccba", [[1, 4, 1]]) == [True]
def test_check():
	check(can_make_pali_queries)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,string,bit-manipulation,prefix-sum
# Metadata Coverage: 100
