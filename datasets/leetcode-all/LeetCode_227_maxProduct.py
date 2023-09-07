from typing import List


def maxProduct(words: List[str]) -> int:
    """
    Given a string array words, return the maximum value of length(word[i]) * length(word[j]) where the two words do not share common letters. If no such two words exist, return 0.
 
    Example 1:

    Input: words = ["abcw","baz","foo","bar","xtfn","abcdef"]
    Output: 16
    Explanation: The two words can be "abcw", "xtfn".

    Example 2:

    Input: words = ["a","ab","abc","d","cd","bcd","abcd"]
    Output: 4
    Explanation: The two words can be "ab", "cd".

    Example 3:

    Input: words = ["a","aa","aaa","aaaa"]
    Output: 0
    Explanation: No such pair of words.

 
    Constraints:

    2 <= words.length <= 1000
    1 <= words[i].length <= 1000
    words[i] consists only of lowercase English letters.

    """
    ### Canonical solution below ###
    n = len(words)
    mask = [0] * n
    for i, word in enumerate(words):
        for c in word:
            mask[i] |= (1 << (ord(c) - ord('a')))

    max_product = 0
    for i in range(n):
        for j in range(i + 1, n):
            if (mask[i] & mask[j]) == 0:
                max_product = max(max_product, len(words[i]) * len(words[j]))

    return max_product




### Unit tests below ###
def check(candidate):
	assert candidate(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]) == 1
	assert candidate(["ab", "xy", "de", "gh"]) == 4
	assert candidate(["ab", "cd", "ef", "gh", "ij", "kl", "mn", "op", "qr", "st", "uv", "wx", "yz"]) == 4
	assert candidate(["abcw", "baz", "foo", "bar", "xtfn", "abcdef"]) == 16
	assert candidate(["hello", "world", "python", "testing"]) == 35
	assert candidate(["a", "ab", "abc", "d", "cd", "bcd", "abcd"]) == 4
	assert candidate(["a", "z", "e", "r", "t", "y", "u", "i", "o", "p", "q", "s", "d", "f", "g", "h", "j", "k", "l", "m", "w", "x", "c", "v", "b", "n"]) == 1
	assert candidate(["a", "aa", "aaa", "aaaa"]) == 0
	assert candidate(["abc", "def", "ghi", "jkl", "mno", "pqr", "stu", "vwx", "yz"]) == 9
	assert candidate(["abc", "xyz", "def", "ghi"]) == 9
def test_check():
	check(maxProduct)
# Metadata Difficulty: Medium
# Metadata Topics: array,string,bit-manipulation
# Metadata Coverage: 100
