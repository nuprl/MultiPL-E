from typing import List


def make_equal(words: List[str]) -> bool:
    """
    You are given an array of strings words (0-indexed).
    In one operation, pick two distinct indices i and j, where words[i] is a non-empty string, and move any character from words[i] to any position in words[j].
    Return true if you can make every string in words equal using any number of operations, and false otherwise.
 
    Example 1:

    Input: words = ["abc","aabc","bc"]
    Output: true
    Explanation: Move the first 'a' in words[1] to the front of words[2],
    to make words[1] = "abc" and words[2] = "abc".
    All the strings are now equal to "abc", so return true.

    Example 2:

    Input: words = ["ab","a"]
    Output: false
    Explanation: It is impossible to make all the strings equal using the operation.

 
    Constraints:

    1 <= words.length <= 100
    1 <= words[i].length <= 100
    words[i] consists of lowercase English letters.

    """
    ### Canonical solution below ###
    chars = set()
    total_chars = 0
    for word in words:
        total_chars += len(word)
        for c in word:
            chars.add(c)
    return total_chars % len(chars) == 0




### Unit tests below ###
def check(candidate):
	assert candidate(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]) == True
	assert candidate(["abc", "abcd", "abcd", "cba"]) == False
	assert candidate(["aa", "bb", "cc", "dd", "ee", "ff", "gg"]) == True
	assert candidate(["abc", "aab", "bca", "bca", "bca", "bca", "bca", "bca"]) == True
	assert candidate(["abc", "aab", "bca", "bca", "bca", "bca", "bca", "bca", "bca"]) == True
	assert candidate(["ab", "a"]) == False
	assert candidate(["abc", "aabc", "bcc"]) == False
	assert candidate(["abc", "aabc", "bc"]) == True
	assert candidate(["ab", "ab", "ab", "bb", "bb", "cc", "cc"]) == False
	assert candidate(["ab", "bc", "cd"]) == False
	assert candidate(["a", "bb", "ccc", "dddd"]) == False
	assert candidate(["a", "b", "c", "d", "e", "f", "g"]) == True
	assert candidate(["a", "b", "c"]) == True
	assert candidate(["aaa", "a"]) == True
	assert candidate(["aa", "bb", "cc", "dd", "ee", "ff", "gg", "hh", "ii", "jj"]) == True
	assert candidate(["ab", "a", "b"]) == True
	assert candidate(["a", "bbb", "ccc"]) == False
	assert candidate(["ab", "abc", "abcd"]) == False
	assert candidate(["aab", "aac", "aac"]) == True
	assert candidate(["aaa", "bbb", "cccc"]) == False
	assert candidate(["abc", "aab", "bca", "bca", "bca"]) == True
	assert candidate(["a", "bb", "cc", "dd", "ee", "f", "gg"]) == False
	assert candidate(["abc", "abcd", "abcd", "bcda"]) == False
	assert candidate(["a", "bb", "ccc", "dddd", "eeeee"]) == True
	assert candidate(["a", "a", "bb", "bb", "bb"]) == True
	assert candidate(["aa", "bb", "cc"]) == True
	assert candidate(["a", "bbb", "c", "ddddd", "e", "fff", "g"]) == False
	assert candidate(["ab", "ab", "aab", "aab", "aabb"]) == True
	assert candidate(["aaa", "bbb", "ccc"]) == True
	assert candidate(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]) == True
	assert candidate(["a", "a", "a"]) == True
	assert candidate(["ababab", "ababab", "babaab", "babaab", "babaab"]) == True
	assert candidate(["aa", "a", "b", "bb", "bb", "bb", "c", "dd", "ddd", "dddd"]) == True
	assert candidate(["aaa", "aaa", "aaa", "aaaa", "aaaa", "aaaa", "aaaa"]) == True
	assert candidate(["abc", "abcd", "abcd"]) == False
	assert candidate(["ab", "abc", "abcd", "abcde"]) == False
	assert candidate(["a", "bb", "ccc"]) == True
	assert candidate(["aaaa", "bbbb", "ccccc"]) == False
	assert candidate(["a", "bbb", "c", "dddd", "e", "ff", "g", "h", "i", "j"]) == False
def test_check():
	check(make_equal)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string,counting
# Metadata Coverage: 100
