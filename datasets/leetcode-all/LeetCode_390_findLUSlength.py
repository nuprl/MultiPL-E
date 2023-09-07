def findLUSlength(a: str, b: str) -> int:
    """
    Given two strings a and b, return the length of the longest uncommon subsequence between a and b. If the longest uncommon subsequence does not exist, return -1.
    An uncommon subsequence between two strings is a string that is a subsequence of one but not the other.
    A subsequence of a string s is a string that can be obtained after deleting any number of characters from s.

    For example, "abc" is a subsequence of "aebdc" because you can delete the underlined characters in "aebdc" to get "abc". Other subsequences of "aebdc" include "aebdc", "aeb", and "" (empty string).

 
    Example 1:

    Input: a = "aba", b = "cdc"
    Output: 3
    Explanation: One longest uncommon subsequence is "aba" because "aba" is a subsequence of "aba" but not "cdc".
    Note that "cdc" is also a longest uncommon subsequence.

    Example 2:

    Input: a = "aaa", b = "bbb"
    Output: 3
    Explanation: The longest uncommon subsequences are "aaa" and "bbb".

    Example 3:

    Input: a = "aaa", b = "aaa"
    Output: -1
    Explanation: Every subsequence of string a is also a subsequence of string b. Similarly, every subsequence of string b is also a subsequence of string a.

 
    Constraints:

    1 <= a.length, b.length <= 100
    a and b consist of lower-case English letters.

    """
    ### Canonical solution below ###
    if a == b:
        return -1
    return max(len(a), len(b))




### Unit tests below ###
def check(candidate):
	assert candidate("aaa", "aaa") == -1
	assert candidate("longestwordlongestword", "longestwordlongestword") == -1
	assert candidate("twentyone", "twentytwo") == 9
	assert candidate("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz") == -1
	assert candidate(
    "wertyuiopzxcvbnmqwertyuiopzxcvbnmqwertyuiopzxcvbnmqwertyuiopzxcvbnmqwertyuiopzxcvbnm",
    "wertyuiopzxcvbnmqwertyuiopzxcvbnmqwertyuiopzxcvbnmqwertyuiopzxcvbnmqwertyuiopzxcvbnm",
) == -1
	assert candidate("short", "longer") == 6
	assert candidate("ab", "cd") == 2
	assert candidate("abcdefghijklmnopqrstuvwxyz", "") == 26
	assert candidate("one", "two") == 3
	assert candidate("thirteen", "fourteen") == 8
	assert candidate("three", "four") == 5
	assert candidate("ab", "abc") == 3
	assert candidate("five", "six") == 4
	assert candidate("abcd", "abcd") == -1
	assert candidate(
    "iwonaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab",
    "iwonaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab",
) == -1
	assert candidate("eleven", "twelve") == 6
	assert candidate("fifteen", "sixteen") == 7
	assert candidate("a", "b") == 1
	assert candidate("seven", "eight") == 5
	assert candidate("aaa", "bbb") == 3
	assert candidate("abcde", "fghij") == 5
	assert candidate("same", "same") == -1
	assert candidate("hello", "world") == 5
def test_check():
	check(findLUSlength)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
