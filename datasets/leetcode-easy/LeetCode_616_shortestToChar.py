from typing import List


def shortestToChar(s: str, c: str) -> List[int]:
    """
    Given a string s and a character c that occurs in s, return an array of integers answer where answer.length == s.length and answer[i] is the distance from index i to the closest occurrence of character c in s.
    The distance between two indices i and j is abs(i - j), where abs is the absolute value function.
 
    Example 1:

    Input: s = "loveleetcode", c = "e"
    Output: [3,2,1,0,1,0,0,1,2,2,1,0]
    Explanation: The character 'e' appears at indices 3, 5, 6, and 11 (0-indexed).
    The closest occurrence of 'e' for index 0 is at index 3, so the distance is abs(0 - 3) = 3.
    The closest occurrence of 'e' for index 1 is at index 3, so the distance is abs(1 - 3) = 2.
    For index 4, there is a tie between the 'e' at index 3 and the 'e' at index 5, but the distance is still the same: abs(4 - 3) == abs(4 - 5) = 1.
    The closest occurrence of 'e' for index 8 is at index 6, so the distance is abs(8 - 6) = 2.

    Example 2:

    Input: s = "aaab", c = "b"
    Output: [3,2,1,0]

 
    Constraints:

    1 <= s.length <= 104
    s[i] and c are lowercase English letters.
    It is guaranteed that c occurs at least once in s.

    """
    ### Canonical solution below ###
    n = len(s)
    result = [n for _ in range(n)]
    pos = -n

    for i in range(n):
        if s[i] == c:
            pos = i
        result[i] = i - pos

    for i in range(pos - 1, -1, -1):
        if s[i] == c:
            pos = i
        result[i] = min(result[i], pos - i)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate("abababab", "b") == [1, 0, 1, 0, 1, 0, 1, 0]
	assert candidate("a", "a") == [0]
	assert candidate("aaab", "b") == [3, 2, 1, 0]
	assert candidate("abab", "b") == [1, 0, 1, 0]
	assert candidate("dddddddd", "d") == [0, 0, 0, 0, 0, 0, 0, 0]
	assert candidate("abcdefghijklmnopqrstuvwxyz", "z") == [25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
	assert candidate(
    "loveleetcode", "e") == [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0]
	assert candidate("baa", "a") == [1, 0, 0]
	assert candidate("abababab", "a") == [0, 1, 0, 1, 0, 1, 0, 1]
	assert candidate("ba", "b") == [0, 1]
	assert candidate("abcdefg", "a") == [0, 1, 2, 3, 4, 5, 6]
	assert candidate("bab", "b") == [0, 1, 0]
	assert candidate("ba", "a") == [1, 0]
	assert candidate("aba", "a") == [0, 1, 0]
	assert candidate(
    "loveleetcode",
    "e") == [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0]
	assert candidate("abcdefg", "g") == [6, 5, 4, 3, 2, 1, 0]
	assert candidate("aa", "a") == [0, 0]
	assert candidate("bb", "b") == [0, 0]
	assert candidate("", "b") == []
def test_check():
	check(shortestToChar)
# Metadata Difficulty: Easy
# Metadata Topics: array,two-pointers,string
# Metadata Coverage: 100
