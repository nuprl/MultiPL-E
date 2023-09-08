from typing import List


def longest_palindrome(words: List[List[str]]) -> int:
    """
    You are given an array of strings words. Each element of words consists of two lowercase English letters.
    Create the longest possible palindrome by selecting some elements from words and concatenating them in any order. Each element can be selected at most once.
    Return the length of the longest palindrome that you can create. If it is impossible to create any palindrome, return 0.
    A palindrome is a string that reads the same forward and backward.
 
    Example 1:

    Input: words = ["lc","cl","gg"]
    Output: 6
    Explanation: One longest palindrome is "lc" + "gg" + "cl" = "lcggcl", of length 6.
    Note that "clgglc" is another longest palindrome that can be created.

    Example 2:

    Input: words = ["ab","ty","yt","lc","cl","ab"]
    Output: 8
    Explanation: One longest palindrome is "ty" + "lc" + "cl" + "yt" = "tylcclyt", of length 8.
    Note that "lcyttycl" is another longest palindrome that can be created.

    Example 3:

    Input: words = ["cc","ll","xx"]
    Output: 2
    Explanation: One longest palindrome is "cc", of length 2.
    Note that "ll" is another longest palindrome that can be created, and so is "xx".

 
    Constraints:

    1 <= words.length <= 105
    words[i].length == 2
    words[i] consists of lowercase English letters.

    """
    ### Canonical solution below ###
    from collections import defaultdict
    dict = defaultdict(int)
    result = 0
    has_odd = False

    for word in words:
        dict[word[0]] += 1
        dict[word[1]] += 1

    for count in dict.values():
        result += count // 2 * 2
        has_odd |= count % 2

    return result + has_odd




### Unit tests below ###
def check(candidate):
	assert candidate([["a", "a"]]) == 2
	assert candidate([["cc", "cc"], ["ll", "ll"], ["xx", "xx"], ["dd", "dd"]]) == 8
	assert candidate(
    [["ab", "ab"], ["ab", "ab"], ["ab", "ab"], ["ab", "ab"], ["ab", "ab"], ["ab", "ab"], ["ab", "ab"], ["ab", "ab"]]) == 16
	assert candidate([["a", "a"], ["b", "b"], ["c", "c"], ["d", "d"], ["e", "e"]]) == 10
	assert candidate([["a", "a"], ["b", "b"], ["c", "c"]]) == 6
def test_check():
	check(longest_palindrome)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,string,greedy,counting
# Metadata Coverage: 100
