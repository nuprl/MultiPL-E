from typing import List


def is_prefix_string(s: str, words: List[str]) -> bool:
    """
    Given a string s and an array of strings words, determine whether s is a prefix string of words.
    A string s is a prefix string of words if s can be made by concatenating the first k strings in words for some positive k no larger than words.length.
    Return true if s is a prefix string of words, or false otherwise.
 
    Example 1:

    Input: s = "iloveleetcode", words = ["i","love","leetcode","apples"]
    Output: true
    Explanation:
    s can be made by concatenating "i", "love", and "leetcode" together.

    Example 2:

    Input: s = "iloveleetcode", words = ["apples","i","love","leetcode"]
    Output: false
    Explanation:
    It is impossible to make s using a prefix of arr.
 
    Constraints:

    1 <= words.length <= 100
    1 <= words[i].length <= 20
    1 <= s.length <= 1000
    words[i] and s consist of only lowercase English letters.

    """
    ### Canonical solution below ###
    temp = ""
    for word in words:
        temp += word
        if temp == s:
            return True
        if len(temp) > len(s):
            break
    return False




### Unit tests below ###
def check(candidate):
	assert candidate("iloveleetcode", ["apples", "i", "love", "leetcode"]) == False
	assert candidate("a", ["a", "b", "c", "d", "e", "f", "g", "h", "i"]) == True
	assert candidate("abcde", ["abc", "d", "e"]) == True
	assert candidate("abc", ["abc"]) == True
	assert candidate(
    "iloveleetcode",
    ["apples", "i", "love", "leetcode"],
) == False
	assert candidate(
    "iloveleetcode", ["apples", "i", "love", "leetcode"]
) == False
	assert candidate("abc", ["ab", "c"]) == True
	assert candidate("abcde", ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]) == True
	assert candidate("abcde", ["ab", "cd", "e"]) == True
	assert candidate(
    "abcde",
    [
        "t",
        "at",
        "rat",
        "bet",
        "abet",
        "abetd",
        "abc",
        "abcde",
        "abcd",
        "bcd",
        "bcdef",
        "abd",
        "abf",
        "abef",
    ],
) == False
	assert candidate("abc", ["a", "bc", "d"]) == True
	assert candidate("s", ["a", "b", "c", "d", "s"]) == False
	assert candidate("abc", ["bc", "a"]) == False
	assert candidate("iloveleetcode", ["i", "love", "leetcode", "apples"]) == True
	assert candidate("abc", ["ab", "cd"]) == False
	assert candidate("abcde", ["a", "b", "c", "d", "e"]) == True
	assert candidate("abcde", ["a", "b", "c", "de"]) == True
	assert candidate("a", ["a", "b", "c", "d", "e"]) == True
	assert candidate("abc", ["ab", "c", "d"]) == True
	assert candidate(
    "iloveleetcode",
    ["i", "love", "leetcode", "apples"],
) == True
	assert candidate("abcde", ["abcde"]) == True
	assert candidate("abc", ["a", "b", "cc"]) == False
	assert candidate("abcde", ["ab", "c", "de"]) == True
	assert candidate("abc", ["a", "b", "c", "d"]) == True
	assert candidate("a", ["ab", "c", "d", "ef", "gh", "i"]) == False
	assert candidate("abc", ["a", "b", "cd"]) == False
	assert candidate("abcde", ["abcd", "e"]) == True
	assert candidate(
    "iloveleetcode", ["i", "love", "leetcode", "apples"]
) == True
	assert candidate("abc", ["a", "b", "c"]) == True
def test_check():
	check(is_prefix_string)
# Metadata Difficulty: Easy
# Metadata Topics: array,string
# Metadata Coverage: 100
