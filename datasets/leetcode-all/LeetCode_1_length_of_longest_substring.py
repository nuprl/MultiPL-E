def length_of_longest_substring(s: str) -> int:
    """
    Given a string s, find the length of the longest substring without repeating characters.
 
    Example 1:

    Input: s = "abcabcbb"
    Output: 3
    Explanation: The answer is "abc", with the length of 3.

    Example 2:

    Input: s = "bbbbb"
    Output: 1
    Explanation: The answer is "b", with the length of 1.

    Example 3:

    Input: s = "pwwkew"
    Output: 3
    Explanation: The answer is "wke", with the length of 3.
    Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

 
    Constraints:

    0 <= s.length <= 5 * 104
    s consists of English letters, digits, symbols and spaces.

    """
    ### Canonical solution below ###
    left = 0
    right = 0
    max_length = 0
    characters = set()

    while right < len(s):
        if s[right] not in characters:
            characters.add(s[right])
            max_length = max(max_length, right - left + 1)
            right += 1
        else:
            characters.remove(s[left])
            left += 1

    return max_length




### Unit tests below ###
def check(candidate):
	assert candidate("aabbcc") == 2
	assert candidate("abcde") == 5
	assert candidate("wobgrovw") == 6
	assert candidate("abcda") == 4
	assert candidate(
    "uqinntq") == 4
	assert candidate(
    "anviaj") == 5
	assert candidate(
    "bbbbb") == 1, "Should handle s = 'bbbbb'"
	assert candidate("abcdeghijklmnopqrstuvwxyzAAA") == 26
	assert candidate(
    "aak") == 2
	assert candidate(
    "mfhjkiklsda") == 6
	assert candidate("ohvhjdml") == 6
	assert candidate("bbbbba") == 2
	assert candidate("abcd") == 4
	assert candidate("11223344556677889900") == 2
	assert candidate("pwwkew") == 3
	assert candidate("1234567890") == 10
	assert candidate("123456") == 6
	assert candidate("aab") == 2
	assert candidate("") == 0
	assert candidate("bbbbb") == 1
	assert candidate(
    "dvdf") == 3, "Should handle s = 'dvdf'"
	assert candidate(
    "abcdabcda") == 4, "Should handle s = 'abcdabcda'"
	assert candidate(
    "abcdefghijklmnopqrstuvwxyz") == 26
	assert candidate("tmmzuxt") == 5
	assert candidate("a") == 1
	assert candidate("ppppp") == 1
	assert candidate("uqinntq") == 4
	assert candidate("abba") == 2
	assert candidate("aaa") == 1
	assert candidate("vvvvvvvvvv") == 1
	assert candidate(" ") == 1
	assert candidate("abc") == 3
	assert candidate(
    "abcdabcdeffedcba") == 6
	assert candidate(
    "aaaaaaaaaa") == 1
	assert candidate("au") == 2
	assert candidate("abcdabcd") == 4
	assert candidate(
    "pwwkew") == 3, "Should handle s = 'pwwkew'"
	assert candidate("abcabcbb") == 3
	assert candidate("aaaa") == 1
	assert candidate(
    "wobgrovwfiwwqghjcjkkmpmwpncmbxvqsrkxgvahvwhx") == 12
	assert candidate("ggububgvfk") == 6
	assert candidate("   ") == 1
	assert candidate(
    "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
) == 26
	assert candidate(
    "abccba") == 3
	assert candidate("dvdf") == 3
	assert candidate("uvwxyz") == 6
	assert candidate(
    "mmzuxt") == 5, "Should handle s = 'mmzuxt'"
	assert candidate("  ") == 1
	assert candidate(
    "m") == 1
	assert candidate("bpfbhmipx") == 7
	assert candidate(
    "abcda") == 4, "Should handle s = 'abcda'"
	assert candidate("anviaj") == 5
	assert candidate(
    "pwwkew") == 3
	assert candidate("abbaacdaa") == 3
	assert candidate(
    "abcabcbb") == 3, "Should handle s = 'abcabcbb'"
	assert candidate(
    "abcabcabc") == 3
	assert candidate("asjrgapa") == 6
	assert candidate("abcdabcdabcd") == 4
	assert candidate("nfpdmpi") == 5
	assert candidate(
    "aabcdadbb") == 4
	assert candidate("abcdefghijklmnopqrstuvwxyz") == 26
def test_check():
	check(length_of_longest_substring)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string,sliding-window
# Metadata Coverage: 100
