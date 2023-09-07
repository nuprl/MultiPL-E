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
    result = -1
    char_map = {}

    for i, c in enumerate(s):
        if c not in char_map:
            char_map[c] = i
        else:
            result = max(result, i - char_map[c] - 1)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate("abcdabcd") == 3
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrt") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabcde") == 25
	assert candidate("abcdefghijklmnoa") == 14
	assert candidate("cbzxy") == -1
	assert candidate("abcde") == -1
	assert candidate("aac") == 0
	assert candidate("abcefghijklmnopqrstuvwxyzabcdefghijklmnopqrs") == 25
	assert candidate("abcdefghijklma") == 12
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefgh") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijklm") == 25
	assert candidate("aa") == 0
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopq") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrs") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstu") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijklmnop") == 25
	assert candidate("abc") == -1
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijklmno") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqr") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijklo") == 25
	assert candidate("abcdef") == -1
	assert candidate("abcda") == 3
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghij") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabcd") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdef") == 25
	assert candidate("ab") == -1
	assert candidate("abca") == 2
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijkl") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabc") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuv") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvw") == 25
	assert candidate("") == -1
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijklmn") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefg") == 25
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijk") == 25
	assert candidate("a") == -1
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghi") == 25
	assert candidate("abcdefghia") == 8
	assert candidate("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx") == 25
def test_check():
	check(maxLengthBetweenEqualCharacters)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
