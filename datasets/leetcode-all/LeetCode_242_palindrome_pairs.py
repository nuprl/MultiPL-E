from typing import List


def palindrome_pairs(words: List[str]) -> List[List[int]]:
    """
    You are given a 0-indexed array of unique strings words.
    A palindrome pair is a pair of integers (i, j) such that:

    0 <= i, j < words.length,
    i != j, and
    words[i] + words[j] (the concatenation of the two strings) is a palindrome.

    Return an array of all the palindrome pairs of words.
    You must write an algorithm with O(sum of words[i].length) runtime complexity.
 
    Example 1:

    Input: words = ["abcd","dcba","lls","s","sssll"]
    Output: [[0,1],[1,0],[3,2],[2,4]]
    Explanation: The palindromes are ["abcddcba","dcbaabcd","slls","llssssll"]

    Example 2:

    Input: words = ["bat","tab","cat"]
    Output: [[0,1],[1,0]]
    Explanation: The palindromes are ["battab","tabbat"]

    Example 3:

    Input: words = ["a",""]
    Output: [[0,1],[1,0]]
    Explanation: The palindromes are ["a","a"]

 
    Constraints:

    1 <= words.length <= 5000
    0 <= words[i].length <= 300
    words[i] consists of lowercase English letters.

    """
    ### Canonical solution below ###
    def is_palindrome(s):
        return s == s[::-1]

    result = []
    for i in range(len(words)):
        for j in range(len(words)):
            if i == j:
                continue
            concat = words[i] + words[j]
            if is_palindrome(concat):
                result.append([i, j])
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(["a", ""]) == [[0, 1], [1, 0]]
	assert candidate(["ab", "ba", "cd", "dc"]) == [[0, 1], [1, 0], [2, 3], [3, 2]]
	assert candidate(["abcd", "dcba", "lls", "s", "sssll"]) == [[0, 1], [1, 0], [2, 4], [3, 2]]
	assert candidate(["x", "y", "z"]) == []
	assert candidate(["abc", "def", "abc", "cba"]) == [[0, 3], [2, 3], [3, 0], [3, 2]]
	assert candidate(["radar", "dar", ""]) == [[0, 2], [2, 0]]
	assert candidate(["abc", "def", "ghi", "jkl"]) == []
	assert candidate(["bat", "tab", "cat"]) == [[0, 1], [1, 0]]
def test_check():
	check(palindrome_pairs)
# Metadata Difficulty: Hard
# Metadata Topics: array,hash-table,string,trie
# Metadata Coverage: 100
