from typing import List


def canMakePaliQueries(s: str, queries: List[List[int]]) -> List[bool]:
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
    answer = []
    prefixSum = [0] * (len(s) + 1)

    for i in range(len(s)):
        prefixSum[i + 1] = prefixSum[i] ^ (1 << (ord(s[i]) - ord('a')))

    for query in queries:
        left, right, k = query
        diffCount = bin(prefixSum[right + 1] ^ prefixSum[left]).count('1')
        answer.append((diffCount // 2) <= k)

    return answer




### Unit tests below ###
def check(candidate):
	assert candidate("abcde", [[0,4,3]]) == [True]
	assert candidate("abcd", [[0,3,2]]) == [True]
	assert candidate("abcdefg", [[0,6,5]]) == [True]
	assert candidate("a", [[0,0,0]]) == [True]
	assert candidate("lyb", [[0,1,0],[2,2,1]]) == [False,True]
	assert candidate("abcda", [[3,3,0],[1,2,0],[0,3,1],[0,3,2],[0,4,1]]) == [True,False,False,True,True]
	assert candidate("bac", [[0,2,2]]) == [True]
	assert candidate("ab", [[0,1,0]]) == [False]
	assert candidate("abcdef", [[0,5,4]]) == [True]
	assert candidate("abc", [[0,2,2]]) == [True]
	assert candidate("abcdef", [[0,5,2]]) == [False]
	assert candidate("abcd", [[0,3,1]]) == [False]
	assert candidate("ab", [[0,1,1]]) == [True]
	assert candidate("abcdefgh", [[0,7,6]]) == [True]
def test_check():
	check(canMakePaliQueries)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,string,bit-manipulation,prefix-sum
# Metadata Coverage: 100
