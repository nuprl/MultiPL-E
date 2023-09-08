from typing import List


def count_consistent_strings(allowed: str, words: List[str]) -> int:
    """
    You are given a string allowed consisting of distinct characters and an array of strings words. A string is consistent if all characters in the string appear in the string allowed.
    Return the number of consistent strings in the array words.
 
    Example 1:

    Input: allowed = "ab", words = ["ad","bd","aaab","baa","badab"]
    Output: 2
    Explanation: Strings "aaab" and "baa" are consistent since they only contain characters 'a' and 'b'.

    Example 2:

    Input: allowed = "abc", words = ["a","b","c","ab","ac","bc","abc"]
    Output: 7
    Explanation: All strings are consistent.

    Example 3:

    Input: allowed = "cad", words = ["cc","acd","b","ba","bac","bad","ac","d"]
    Output: 4
    Explanation: Strings "cc", "acd", "ac", and "d" are consistent.

 
    Constraints:

    1 <= words.length <= 104
    1 <= allowed.length <= 26
    1 <= words[i].length <= 10
    The characters in allowed are distinct.
    words[i] and allowed contain only lowercase English letters.

    """
    ### Canonical solution below ###
    allowed_set = set(allowed)
    count = 0
    for word in words:
        is_valid = True
        for c in word:
            if c not in allowed_set:
                is_valid = False
                break
        if is_valid:
            count += 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate("abc", ["", "a", "aa", "aaa", "aaaa", "aaaaa"]) == 6
	assert candidate("cc", ["c", "cc", "ccc", "cccc"]) == 4
	assert candidate("abc", ["a", "b", "c", "ab", "ac", "bc", "abc"]) == 7
	assert candidate("abc", ["a", "b", "c", "ab", "ac", "bc", "abc", "abcd", "bcde"]) == 7
	assert candidate("abc", ["a", "b", "c", "ab", "ac", "bc", "abc", "abcd", "abcde", "abcdef"]) == 7
	assert candidate("abc", ["abcd", "abcde", "abcdef"]) == 0
	assert candidate("abc", ["a", "aa", "aaa", "", "aaaa", "aaaaa"]) == 6
	assert candidate("abc", ["", "d", "dd", "ddd", "dddd", "ddddd"]) == 1
	assert candidate("a", ["a", "b", "c", "ab", "ac", "bc", "abc"]) == 1
	assert candidate("ab", ["a", "b", "c", "ab", "ac", "bc", "abc", "abcd"]) == 3
	assert candidate("abc", ["a", "b", "c", "", "ab", "ac", "bc", "abc"]) == 8
	assert candidate("cad", ["cc", "acd", "b", "ba", "bac", "baddd"]) == 2
	assert candidate("cad", ["cc", "acd", "b", "ba", "bac", "bad", "ac", "d", "cd"]) == 5
	assert candidate("abc", ["a", "b", "c", "ab", "ac", "bc", "abc", "abcd"]) == 7
	assert candidate("a", ["a", "b", "c", "", "ab", "ac", "bc", "abc"]) == 2
	assert candidate(
    "abcd", ["dbca", "abac", "abcd", "abca", "abc", "abb", "ab", "a", "b", "c", "d", ""]
) == 12
	assert candidate("cc", ["c", "cc", "ccc", "cccc", ""]) == 5
	assert candidate("abc", ["d", "dd", "", "ddd", "dddd", "ddddd"]) == 1
	assert candidate("", ["a", "b", "c", "", "ab", "ac", "bc", "abc"]) == 1
	assert candidate("abc", ["d", "dd", "ddd", "dddd", "ddddd"]) == 0
	assert candidate("abc", ["a", "aa", "aaa", "aaaa", "aaaaa"]) == 5
	assert candidate("abc", ["", "a", "b", "c", "ab", "ac", "bc", "abc"]) == 8
	assert candidate("abc", [""]) == 1
	assert candidate("", ["a", "b", "c", "ab", "ac", "bc", "abc"]) == 0
	assert candidate("ad", ["a", "b", "c", "d", "aa", "ac", "ab", "ad", "cad", "abc", "bcd"]) == 4
	assert candidate(
    "cad", ["cc", "acd", "b", "ba", "bac", "bad", "ac", "d"]
) == 4
def test_check():
	check(count_consistent_strings)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,string,bit-manipulation
# Metadata Coverage: 100
