from typing import List


def findReplaceString(s: str, indices: List[int], sources: List[str], targets: List[str]) -> str:
    """
    You are given a 0-indexed string s that you must perform k replacement operations on. The replacement operations are given as three 0-indexed parallel arrays, indices, sources, and targets, all of length k.
    To complete the ith replacement operation:

    Check if the substring sources[i] occurs at index indices[i] in the original string s.
    If it does not occur, do nothing.
    Otherwise if it does occur, replace that substring with targets[i].

    For example, if s = "abcd", indices[i] = 0, sources[i] = "ab", and targets[i] = "eee", then the result of this replacement will be "eeecd".
    All replacement operations must occur simultaneously, meaning the replacement operations should not affect the indexing of each other. The testcases will be generated such that the replacements will not overlap.

    For example, a testcase with s = "abc", indices = [0, 1], and sources = ["ab","bc"] will not be generated because the "ab" and "bc" replacements overlap.

    Return the resulting string after performing all replacement operations on s.
    A substring is a contiguous sequence of characters in a string.
 
    Example 1:


    Input: s = "abcd", indices = [0, 2], sources = ["a", "cd"], targets = ["eee", "ffff"]
    Output: "eeebffff"
    Explanation:
    "a" occurs at index 0 in s, so we replace it with "eee".
    "cd" occurs at index 2 in s, so we replace it with "ffff".

    Example 2:


    Input: s = "abcd", indices = [0, 2], sources = ["ab","ec"], targets = ["eee","ffff"]
    Output: "eeecd"
    Explanation:
    "ab" occurs at index 0 in s, so we replace it with "eee".
    "ec" does not occur at index 2 in s, so we do nothing.

 
    Constraints:

    1 <= s.length <= 1000
    k == indices.length == sources.length == targets.length
    1 <= k <= 100
    0 <= indexes[i] < s.length
    1 <= sources[i].length, targets[i].length <= 50
    s consists of only lowercase English letters.
    sources[i] and targets[i] consist of only lowercase English letters.

    """
    ### Canonical solution below ###
    index_mapping = sorted(
        [(indices[i], i) for i in range(len(indices)) if s.startswith(sources[i], indices[i])]
    )
    result = []
    last_idx = 0

    for idx, i in index_mapping:
        result.append(s[last_idx:idx])
        result.append(targets[i])
        last_idx = idx + len(sources[i])

    result.append(s[last_idx:])
    return "".join(result)




### Unit tests below ###
def check(candidate):
	assert candidate("abcd", [0, 1, 2, 3], ["e", "f", "g", "h"], ["e", "f", "g", "h"]) == "abcd"
	assert candidate("abcd", [0, 2], ["a", "c"], ["b", "d"]) == "bbdd"
	assert candidate("s", [0], ["s"], ["d"]) == "d"
	assert candidate("abc", [0], ["abc"], ["aaa"]) == "aaa"
	assert candidate("abcd", [0], ["abcd"], ["d"]) == "d"
	assert candidate("abcdef", [0, 1, 2, 3, 4, 5], ["a", "b", "c", "d", "e", "f"], ["d", "e", "f", "c", "b", "a"]) == "defcba"
	assert candidate("abcd", [2], ["cd"], ["ee"]) == "abee"
	assert candidate("abcd", [0], ["abcd"], ["e"]) == "e"
	assert candidate("abcd", [1], ["bcd"], ["dcb"]) == "adcb"
	assert candidate("abcd", [0, 1, 2, 3], ["a", "b", "c", "d"], ["a", "b", "c", "d"]) == "abcd"
	assert candidate("abcd", [0, 2], ["ab", "ec"], ["eee", "ffff"]) == "eeecd"
	assert candidate("abcd", [3], ["b"], ["e"]) == "abcd"
	assert candidate("abcd", [0, 1, 2, 3], ["a", "b", "c", "d"], ["d", "c", "b", "a"]) == "dcba"
	assert candidate("abcd", [2], ["cd"], ["eeee"]) == "abeeee"
	assert candidate("abcd", [0], ["abcd"], ["dcba"]) == "dcba"
	assert candidate("abcd", [0, 2], ["ab", "cd"], ["cd", "ab"]) == "cdab"
	assert candidate("abcd", [0, 2], ["b", "d"], ["a", "c"]) == "abcd"
	assert candidate("abcd", [4], ["e"], ["f"]) == "abcd"
	assert candidate("abcd", [3], ["d"], ["d"]) == "abcd"
	assert candidate("abcd", [4], ["d"], ["e"]) == "abcd"
	assert candidate("abcd", [2], ["cd"], ["dc"]) == "abdc"
	assert candidate("abcd", [0], ["abcd"], ["eeee"]) == "eeee"
	assert candidate("abcd", [0, 1, 2, 3], ["e", "f", "g", "h"], ["a", "b", "c", "d"]) == "abcd"
	assert candidate("abcd", [0, 1, 2, 3], ["a", "b", "c", "e"], ["a", "b", "c", "d"]) == "abcd"
	assert candidate("abcd", [0], ["d"], ["e"]) == "abcd"
	assert candidate("abcdef", [4, 5], ["ef", "cd"], ["fe", "dc"]) == "abcdfe"
	assert candidate("abcd", [4], ["d"], ["d"]) == "abcd"
	assert candidate("s", [0], ["d"], ["s"]) == "s"
	assert candidate("abcd", [3], ["ab"], ["eee"]) == "abcd"
def test_check():
	check(findReplaceString)
# Metadata Difficulty: Medium
# Metadata Topics: array,string,sorting
# Metadata Coverage: 100
