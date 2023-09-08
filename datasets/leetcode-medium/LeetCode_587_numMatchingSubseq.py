from typing import List


def numMatchingSubseq(s: str, words: List[str]) -> int:
    """
    Given a string s and an array of strings words, return the number of words[i] that is a subsequence of s.
    A subsequence of a string is a new string generated from the original string with some characters (can be none) deleted without changing the relative order of the remaining characters.

    For example, "ace" is a subsequence of "abcde".

 
    Example 1:

    Input: s = "abcde", words = ["a","bb","acd","ace"]
    Output: 3
    Explanation: There are three strings in words that are a subsequence of s: "a", "acd", "ace".

    Example 2:

    Input: s = "dsahjpjauf", words = ["ahjpjau","ja","ahbwzgqnuk","tnmlanowax"]
    Output: 2

 
    Constraints:

    1 <= s.length <= 5 * 104
    1 <= words.length <= 5000
    1 <= words[i].length <= 50
    s and words[i] consist of only lowercase English letters.

    """
    ### Canonical solution below ###
    from bisect import bisect_left
    from collections import defaultdict
    positions = defaultdict(list)

    for i, c in enumerate(s):
        positions[c].append(i)

    count = 0

    for word in words:
        index = -1
        isSubsequence = True

        for c in word:
            position_list = positions.get(c, [])
            i = bisect_left(position_list, index + 1)
            if (i == len(position_list)):
                isSubsequence = False
                break
            index = position_list[i]

        if isSubsequence:
            count += 1

    return count




### Unit tests below ###
def check(candidate):
	assert candidate("", ["soup"]) == 0
	assert candidate("aaaa", ["a", "b", "c", "d"]) == 1
	assert candidate("soup", ["sou", "oup", "sop", "ou", "so"]) == 5
	assert candidate("abcabcdabcabcd", ["abcd", "abcd"]) == 2
	assert candidate(
    "dsahjpjauf", ["ahjpjau", "ja", "ahbwzgqnuk", "tnmlanowax"]) == 2
	assert candidate("abcd", ["a", "b", "c", "d", "ab", "bc", "cd", "abc", "abcd"]) == 9
	assert candidate("abc", ["a", "b", "c"]) == 3
	assert candidate("soup", [""]) == 1
	assert candidate("soup", ["s", "o", "u", "p"]) == 4
	assert candidate(
    "abcde", ["abcd", "cdab", "adbc", "abc", "abcde", "ab"]) == 4
	assert candidate(
    "abcd", ["abcd", "cdab", "adbc", "abc", "abcde", "ab"]) == 3
	assert candidate("ac", ["a", "c", "ac"]) == 3
	assert candidate("dsahjpjauf", [
                         "ahjpjau", "ja", "ahbwzgqnuk", "tnmlanowax"]) == 2
	assert candidate("soup", ["a", "b", "c", "d"]) == 0
	assert candidate("abcd", ["dcba", "abcd", "dcba", "abcd"]) == 2
	assert candidate("soup", ["so", "op", "pou", "sup"]) == 3
	assert candidate("aaaa", ["a", "aa", "aaa", "aaaa"]) == 4
	assert candidate("", [""]) == 1
	assert candidate("abcd", ["a", "b", "c", "d"]) == 4
	assert candidate(
    "abc", ["a", "b", "c", "ab", "ac", "bc", "abc"]) == 7
	assert candidate("abcd", ["abcd", "abcd", "abcd", "abcd"]) == 4
	assert candidate("abcd", ["abcd", "bcda", "abcd", "dcba"]) == 2
def test_check():
	check(numMatchingSubseq)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,string,binary-search,dynamic-programming,trie,sorting
# Metadata Coverage: 100
