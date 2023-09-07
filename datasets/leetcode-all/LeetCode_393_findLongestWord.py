from typing import List


def findLongestWord(s: str, dictionary: List[str]) -> str:
    """
    Given a string s and a string array dictionary, return the longest string in the dictionary that can be formed by deleting some of the given string characters. If there is more than one possible result, return the longest word with the smallest lexicographical order. If there is no possible result, return the empty string.
 
    Example 1:

    Input: s = "abpcplea", dictionary = ["ale","apple","monkey","plea"]
    Output: "apple"

    Example 2:

    Input: s = "abpcplea", dictionary = ["a","b","c"]
    Output: "a"

 
    Constraints:

    1 <= s.length <= 1000
    1 <= dictionary.length <= 1000
    1 <= dictionary[i].length <= 1000
    s and dictionary[i] consist of lowercase English letters.

    """
    ### Canonical solution below ###
    def is_subsequence(target, source):
        iter_source = iter(source)
        return all(char in iter_source for char in target)

    dictionary = sorted(dictionary)
    longest = ''
    for word in dictionary:
        if is_subsequence(word, s) and len(word) > len(longest):
            longest = word
    return longest




### Unit tests below ###
def check(candidate):
	assert candidate("bbtablud", ["bd", "ac", "ab", "apple", "b", "bl", "t", "bbtabl",
                                    "bld", "ba", "aa", "a", "tabl", "tab", "tbl", "table"]) == "bbtabl"
	assert candidate("abcabcd", ["abcd", "abc", "abcdabc"]) == "abcd"
	assert candidate(
    "abcd", ["ab", "bc", "cd", "abcd"]) == "abcd"
	assert candidate("aaa", ["aa", "aaa", "aaaa"]) == "aaa"
	assert candidate("abcde", ["abc", "abcde"]) == "abcde"
	assert candidate("abcabcabc", ["ab", "abcabc", "abc", "abcabcabc"]) == "abcabcabc"
	assert candidate("a", ["aa", "a"]) == "a"
	assert candidate("abcd", ["d", "abc", "abcd"]) == "abcd"
	assert candidate("abcabcdabcabcd", ["abcd", "abc", "abcdabc"]) == "abcdabc"
	assert candidate("abcd", ["efgh", "ijk", "lmn", "opq"]) == ""
	assert candidate(
    "abcd",
    ["dcba", "cdba", "cbda", "bdca", "bcda", "dbca", "bdca", "cbd", "abcd"]) == "abcd"
	assert candidate(
    "abcd", ["dcba", "bcd", "cd", "d", "abcd", "abd", "abe", "ace"]
) == "abcd"
	assert candidate("ab", ["b", "ab"]) == "ab"
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                       ["a",
                        "aa",
                        "aaa",
                        "aaaa",
                        "aaaaa",
                        "aaaaaa",
                        "aaaaaaa",
                        "aaaaaaaa",
                        "aaaaaaaaa",
                        "aaaaaaaaaa"]) == "aaaaaaaaaa"
	assert candidate("aaaa", ["a", "aa", "aaa", "aaaa"]) == "aaaa"
	assert candidate("abcde", ["abc", "abd", "abe", "ace"]) == "abc"
	assert candidate("ab", ["a", "ab", "b"]) == "ab"
	assert candidate("", ["a", "b", "c"]) == ""
	assert candidate("abpcplea", ["ale", "apple", "monkey", "plea"]) == "apple"
	assert candidate("a", ["a", "b", "c"]) == "a"
	assert candidate("abpcplea", ["a", "b", "c"]) == "a"
	assert candidate("bab", ["b", "a", "ba", "bab"]) == "bab"
	assert candidate("ab", ["a", "b", "c"]) == "a"
	assert candidate("aaa", ["a", "aa", "aaa"]) == "aaa"
	assert candidate("abc", ["ab", "abc"]) == "abc"
	assert candidate("bab", ["b", "a", "bab"]) == "bab"
	assert candidate("aaa", ["aaaa", "aaa", "aa"]) == "aaa"
	assert candidate("ab", ["a", "ab"]) == "ab"
	assert candidate("abpcplea", ["apple", "monkey", "plea", "ale"]) == "apple"
	assert candidate("ab", ["ab", "ba"]) == "ab"
	assert candidate("abcd", ["abcd", "abd", "abe", "ace"]) == "abcd"
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabc",
    ["a",
     "aa",
     "aaa",
     "aaaa",
     "aaaaa",
     "aaaaaa",
     "aaaaaaa",
     "aaaaaaaa",
     "aaaaaaaaa",
     "aaaaaaaaaa"]) == "aaaaaaaaaa"
	assert candidate("abcabcabc", ["ab", "abc", "abcabc", "abcabcabc"]) == "abcabcabc"
	assert candidate("ab", ["ab", "a"]) == "ab"
	assert candidate(
    "abcd", ["dcba", "dc", "dcb", "d", "abcd", "abd", "abe", "ace"]
) == "abcd"
	assert candidate(
    "bab", ["ba", "ab", "a", "b", "bba", "bbb", "aab", "aaa"]) == "ab"
	assert candidate("abcd", ["cd", "abc", "ab", "abcd"]) == "abcd"
	assert candidate("ab", ["ba", "ab"]) == "ab"
	assert candidate("abcabcabc", ["abcabcabc", "ab", "abc", "abcabc"]) == "abcabcabc"
	assert candidate("abc", ["abc", "abcd"]) == "abc"
	assert candidate("abcd", ["dcba", "dcb", "dc", "d"]) == "d"
	assert candidate("aaa", ["aa", "aaa"]) == "aaa"
	assert candidate("abcd", ["a", "b", "c", "d"]) == "a"
	assert candidate("ab", ["ba", "a"]) == "a"
	assert candidate("ab", ["ab", "b"]) == "ab"
	assert candidate(
    "abcd", ["ab", "bc", "cd", "ad"]) == "ab"
	assert candidate("ab", ["a", "aa", "aaa", "aaaa"]) == "a"
	assert candidate("abc", ["abc", "bc"]) == "abc"
	assert candidate("abcd", ["dcba", "bcd", "cd", "d"]) == "bcd"
	assert candidate("abcd", ["abc", "abd", "abe", "ace"]) == "abc"
	assert candidate(
    "abcd",
    ["cdba", "dcba", "cbda", "bdca", "bcda", "dbca", "bdca", "d", "abcd"]) == "abcd"
	assert candidate("abcd", ["d", "c", "b", "a"]) == "a"
def test_check():
	check(findLongestWord)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,string,sorting
# Metadata Coverage: 100
