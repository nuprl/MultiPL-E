def wonderfulSubstrings(word: str) -> int:
    """
    A wonderful string is a string where at most one letter appears an odd number of times.

    For example, "ccjjc" and "abab" are wonderful, but "ab" is not.

    Given a string word that consists of the first ten lowercase English letters ('a' through 'j'), return the number of wonderful non-empty substrings in word. If the same substring appears multiple times in word, then count each occurrence separately.
    A substring is a contiguous sequence of characters in a string.
 
    Example 1:

    Input: word = "aba"
    Output: 4
    Explanation: The four wonderful substrings are underlined below:
    - "aba" -> "a"
    - "aba" -> "b"
    - "aba" -> "a"
    - "aba" -> "aba"

    Example 2:

    Input: word = "aabb"
    Output: 9
    Explanation: The nine wonderful substrings are underlined below:
    - "aabb" -> "a"
    - "aabb" -> "aa"
    - "aabb" -> "aab"
    - "aabb" -> "aabb"
    - "aabb" -> "a"
    - "aabb" -> "abb"
    - "aabb" -> "b"
    - "aabb" -> "bb"
    - "aabb" -> "b"

    Example 3:

    Input: word = "he"
    Output: 2
    Explanation: The two wonderful substrings are underlined below:
    - "he" -> "h"
    - "he" -> "e"

 
    Constraints:

    1 <= word.length <= 105
    word consists of lowercase English letters from 'a' to 'j'.
    """
    ### Canonical solution below ###
    res = 0
    mask = 0
    count = {0: 1}
    for c in word:
        mask ^= 1 << (ord(c) - ord('a'))
        res += count.get(mask, 0)
        for i in range(10):
            res += count.get(mask ^ (1 << i), 0)
        count[mask] = count.get(mask, 0) + 1
    return res




### Unit tests below ###
def check(candidate):
	assert candidate("aabb") == 9
	assert candidate("aaaa") == 10
	assert candidate("a"*16) == 136
	assert candidate("eeee") == 10
	assert candidate("bbbb") == 10
	assert candidate("bb") == 3
	assert candidate("aaaaa") == 15
	assert candidate("baaaa") == 13
	assert candidate("he") == 2
	assert candidate("aba") == 4
	assert candidate("aa") == 3
	assert candidate("aaa") == 6
	assert candidate("bbb") == 6
	assert candidate(
    "aba") == 4
	assert candidate("b") == 1
	assert candidate("") == 0
	assert candidate("a") == 1
def test_check():
	check(wonderfulSubstrings)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string,bit-manipulation,prefix-sum
# Metadata Coverage: 100
