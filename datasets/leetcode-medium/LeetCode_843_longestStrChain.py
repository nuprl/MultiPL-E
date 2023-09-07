from typing import List


def longestStrChain(words: List[str]) -> int:
    """
    You are given an array of words where each word consists of lowercase English letters.
    wordA is a predecessor of wordB if and only if we can insert exactly one letter anywhere in wordA without changing the order of the other characters to make it equal to wordB.

    For example, "abc" is a predecessor of "abac", while "cba" is not a predecessor of "bcad".

    A word chain is a sequence of words [word1, word2, ..., wordk] with k >= 1, where word1 is a predecessor of word2, word2 is a predecessor of word3, and so on. A single word is trivially a word chain with k == 1.
    Return the length of the longest possible word chain with words chosen from the given list of words.
 
    Example 1:

    Input: words = ["a","b","ba","bca","bda","bdca"]
    Output: 4
    Explanation: One of the longest word chains is ["a","ba","bda","bdca"].

    Example 2:

    Input: words = ["xbc","pcxbcf","xb","cxbc","pcxbc"]
    Output: 5
    Explanation: All the words can be put in a word chain ["xb", "xbc", "cxbc", "pcxbc", "pcxbcf"].

    Example 3:

    Input: words = ["abcd","dbqca"]
    Output: 1
    Explanation: The trivial word chain ["abcd"] is one of the longest word chains.
    ["abcd","dbqca"] is not a valid word chain because the ordering of the letters is changed.

 
    Constraints:

    1 <= words.length <= 1000
    1 <= words[i].length <= 16
    words[i] only consists of lowercase English letters.

    """
    ### Canonical solution below ###
    words.sort(key=lambda x: len(x))
    dp = {}

    max_len = 0
    for word in words:
        for i in range(len(word)):
            pre = word[:i] + word[i + 1:]
            dp[word] = max(dp.get(word, 0), dp.get(pre, 0) + 1)
        max_len = max(max_len, dp[word])

    return max_len




### Unit tests below ###
def check(candidate):
	assert candidate(["a","aa","aaa","aaaa","aaaaa","aaaaaa","aaaaaaa","aaaaaaaa","aaaaaaaaa"]) == 9
	assert candidate(["a","ab","abc","abcd","abcde","abcdef","abcdefg","abcdefgh"]) == 8
	assert candidate(["a","ab","abc","abcd","abcde","abcdef","abcdefg","abcdefgh","abcdefghi"]) == 9
	assert candidate(["xbc","pcxbcf","xb","cxbc","pcxbc","abcd","dbqca","dqcb","qca","bdca","bca"]) == 5
	assert candidate(["abcdefghijklmn","abcdefghijklmno","abcdefghijklm","abcdefghijkl","abcdefghijk","abcdefghij","abcdefghijklmnop","abcdefghijklmnopq"]) == 8
	assert candidate(["abcdefg","abcdef","abcde","abcd","abc","ab","a"]) == 7
	assert candidate(["xbc","pcxbcf","xb","cxbc","pcxbc"]) == 5
	assert candidate(["aaaaaaa","aaaaaa","aaaaa","aaaa","aaa","aa","a"]) == 7
	assert candidate(["abcd","abcd","a"]) == 1
	assert candidate(["abcdefghi","abcdefgh","abcdefg","abcdef","abcde","abcd","abc","ab","a"]) == 9
	assert candidate(["a","aa","aaa","aaaa","aaaaa","aaaaaa","aaaaaaa","aaaaaaaa","aaaaaaaaa","aaaaaaaaaa"]) == 10
	assert candidate(["a","ab","abc","abcd","abcde"]) == 5
	assert candidate(["a","ab","abc","abcd","abcde","abcdef","abcdefg","abcdefgh","abcdefghi","abcdefghij","abcdefghijk","abcdefghijkl","abcdefghijklm","abcdefghijklmn","abcdefghijklmno"]) == 15
	assert candidate(["a","ab","abc","abcd","abcde","abcdef"]) == 6
	assert candidate(["a","b","ab","abc"]) == 3
	assert candidate(["aaaaaaaaa","aaaaaaaa","aaaaaaa","aaaaaa","aaaaa","aaaa","aaa","aa","a"]) == 9
	assert candidate(["a","b","c","d"]) == 1
	assert candidate(["a","aa","aaa","aaaa","aaaaa","aaaaaa","aaaaaaa"]) == 7
	assert candidate(["a","a","a"]) == 1
	assert candidate(["ba","abcd","abcd","a","ab","abcde","abc","a"]) == 5
	assert candidate(["a","a"]) == 1
	assert candidate(["abcd","dbqca"]) == 1
	assert candidate(["abcdefgh","abcdefg","abcdef","abcde","abcd","abc","ab","a"]) == 8
	assert candidate(["a","a","a","a","a","a"]) == 1
	assert candidate(["abcd","abcde","abcdef"]) == 3
	assert candidate(["abcdef","abcde","abcd","abc","ab","a"]) == 6
	assert candidate(["a","b","ba","bca","bda","bdca"]) == 4
	assert candidate(["abcdef","abcde","abc","abcd"]) == 4
	assert candidate(["abcd","abc","ab","a"]) == 4
	assert candidate(["abcdef","abcde","abcd","abc","ab","a","abcdefg"]) == 7
def test_check():
	check(longestStrChain)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,two-pointers,string,dynamic-programming
# Metadata Coverage: 100
