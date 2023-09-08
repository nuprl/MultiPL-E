from typing import List


def largeGroupPositions(s: str) -> List[List[int]]:
    """
    In a string s of lowercase letters, these letters form consecutive groups of the same character.
    For example, a string like s = "abbxxxxzyy" has the groups "a", "bb", "xxxx", "z", and "yy".
    A group is identified by an interval [start, end], where start and end denote the start and end indices (inclusive) of the group. In the above example, "xxxx" has the interval [3,6].
    A group is considered large if it has 3 or more characters.
    Return the intervals of every large group sorted in increasing order by start index.
 
    Example 1:

    Input: s = "abbxxxxzzy"
    Output: [[3,6]]
    Explanation: "xxxx" is the only large group with start index 3 and end index 6.

    Example 2:

    Input: s = "abc"
    Output: []
    Explanation: We have groups "a", "b", and "c", none of which are large groups.

    Example 3:

    Input: s = "abcdddeeeeaabbbcd"
    Output: [[3,5],[6,9],[12,14]]
    Explanation: The large groups are "ddd", "eeee", and "bbb".

 
    Constraints:

    1 <= s.length <= 1000
    s contains lowercase English letters only.

    """
    ### Canonical solution below ###
    result = []
    start = 0
    for i in range(1, len(s)):
        if s[i] != s[start]:
            if i - start >= 3:
                result.append([start, i - 1])
            start = i
    if len(s) - start >= 3:
        result.append([start, len(s) - 1])
    return result




### Unit tests below ###
def check(candidate):
	assert candidate("abcdddeeeeaabbbcd") == [[3, 5], [6, 9], [12, 14]]
	assert candidate("bbbbb") == [[0, 4]]
	assert candidate("aaaaaaaaa") == [[0, 8]]
	assert candidate("aaaaaa") == [[0, 5]]
	assert candidate("abbxxxxzzy") == [[3, 6]]
	assert candidate("aaaaaaaaaa") == [[0, 9]]
	assert candidate(
    "aaabbbbccddddd"
) == [[0, 2], [3, 6], [9, 13]]
	assert candidate(
    "aaaabbbbccccddddd"
) == [[0, 3], [4, 7], [8, 11], [12, 16]]
	assert candidate("") == []
	assert candidate("aaaa") == [[0, 3]]
	assert candidate("aa") == []
	assert candidate("aaaaa") == [[0, 4]]
	assert candidate("aabbccdd") == []
	assert candidate("bbbb") == [[0, 3]]
	assert candidate("aaabbbbccddddd") == [[0, 2], [3, 6], [9, 13]]
	assert candidate("aabb") == []
	assert candidate(
    "abcdddeeeeaabbbcd"
) == [[3, 5], [6, 9], [12, 14]]
	assert candidate("aabaa") == []
	assert candidate("aaaabbbbcccc") == [[0, 3], [4, 7], [8, 11]]
	assert candidate("bbaa") == []
	assert candidate("bbb") == [[0, 2]]
	assert candidate("aaaabbbbccccddddd") == [[0, 3], [4, 7], [8, 11], [12, 16]]
	assert candidate("aaa") == [[0, 2]]
	assert candidate("aaaabbbb") == [[0, 3], [4, 7]]
	assert candidate("aaaabbbbb") == [[0, 3], [4, 8]]
	assert candidate("abb") == []
	assert candidate("a") == []
	assert candidate("aaaaaaaa") == [[0, 7]]
	assert candidate("abc") == []
def test_check():
	check(largeGroupPositions)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
