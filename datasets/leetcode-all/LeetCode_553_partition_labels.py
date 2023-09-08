from typing import List


def partition_labels(s: str) -> List[int]:
    """
    You are given a string s. We want to partition the string into as many parts as possible so that each letter appears in at most one part.
    Note that the partition is done so that after concatenating all the parts in order, the resultant string should be s.
    Return a list of integers representing the size of these parts.
 
    Example 1:

    Input: s = "ababcbacadefegdehijhklij"
    Output: [9,7,8]
    Explanation:
    The partition is "ababcbaca", "defegde", "hijhklij".
    This is a partition so that each letter appears in at most one part.
    A partition like "ababcbacadefegde", "hijhklij" is incorrect, because it splits s into less parts.

    Example 2:

    Input: s = "eccbbbbdec"
    Output: [10]

 
    Constraints:

    1 <= s.length <= 500
    s consists of lowercase English letters.

    """
    ### Canonical solution below ###
    last = {c: i for i, c in enumerate(s)}
    ans = []
    j = anchor = 0
    for i, c in enumerate(s):
        j = max(j, last[c])
        if i == j:
            ans.append(i - anchor + 1)
            anchor = i + 1
    return ans




### Unit tests below ###
def check(candidate):
	assert candidate("eccbbbbdec") == [10]
	assert candidate("abc") == [1, 1, 1]
	assert candidate("abccba") == [6]
	assert candidate("abcdefghijklmnopqrstuvwxy") == [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
	assert candidate("abca") == [4]
	assert candidate("a") == [1]
	assert candidate("ababcbacadefegdehijhklij") == [9,7,8]
	assert candidate("ab") == [1, 1]
def test_check():
	check(partition_labels)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,two-pointers,string,greedy
# Metadata Coverage: 100
