def maxLengthBetweenEqualCharacters(s: str) -> int:
    """
    Given a string s, return the length of the longest substring between two equal characters, excluding the two characters. If there is no such substring return -1.
    A substring is a contiguous sequence of characters within a string.
 
    Example 1:

    Input: s = "aa"
    Output: 0
    Explanation: The optimal substring here is an empty substring between the two 'a's.
    Example 2:

    Input: s = "abca"
    Output: 2
    Explanation: The optimal substring here is "bc".

    Example 3:

    Input: s = "cbzxy"
    Output: -1
    Explanation: There are no characters that appear twice in s.

 
    Constraints:

    1 <= s.length <= 300
    s contains only lowercase English letters.

    """
    ### Canonical solution below ###
    max_length = -1
    char_index_map = {}

    for i, char in enumerate(s):
        if char in char_index_map:
            max_length = max(max_length, i - char_index_map[char] - 1)
        else:
            char_index_map[char] = i

    return max_length




### Unit tests below ###
def check(candidate):
	assert candidate("abc") == -1, "Test case 1 failed"
	assert candidate("") == -1, "Test case 1 failed"
	assert candidate("abcdeabcde") == 4, "Test case 6 failed"
	assert candidate("abcde") == -1, "Test case 5 failed"
	assert candidate("aaaa") == 2, "Test case 14 failed"
	assert candidate("abbaba") == 4, "Test case 16 failed"
	assert candidate("aabba") == 3, "Test case 10 failed"
	assert candidate("abcabcabc") == 5, "Test case 13 failed"
	assert candidate("abcdeabcdea") == 9, "Test case 7 failed"
	assert candidate("aa") == 0, "Test case 1 failed"
	assert candidate("abba") == 2, "Test case 15 failed"
	assert candidate("aaaabb") == 2, "Test case 13 failed"
	assert candidate("baabb") == 3, "Test case 14 failed"
	assert candidate(
    "aa") == 0, "Test case 1 failed"
	assert candidate("cbzxy") == -1, "Test case 13 failed"
	assert candidate(
    "aaaabb") == 2, "Test case 14 failed"
	assert candidate("abc") == -1, "Test case 11 failed"
	assert candidate("aa") == 0, "Test case 13 failed"
	assert candidate("aaa") == 1, "Test case 4 failed"
	assert candidate("abc") == -1, "Test case 5 failed"
	assert candidate("abca") == 2, "Test case 2 failed"
	assert candidate(
    "abcdeabcdeabcde") == 9, "Test case 14 failed"
	assert candidate("aabbaa") == 4, "Test case 9 failed"
	assert candidate("abcabcab") == 5, "Test case 12 failed"
	assert candidate("aab") == 0, "Test case 8 failed"
	assert candidate("a") == -1, "Test case 3 failed"
def test_check():
	check(maxLengthBetweenEqualCharacters)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
