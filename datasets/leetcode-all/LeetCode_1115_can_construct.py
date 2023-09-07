def can_construct(s: str, k: int) -> bool:
    """
    Given a string s and an integer k, return true if you can use all the characters in s to construct k palindrome strings or false otherwise.
 
    Example 1:

    Input: s = "annabelle", k = 2
    Output: true
    Explanation: You can construct two palindromes using all characters in s.
    Some possible constructions "anna" + "elble", "anbna" + "elle", "anellena" + "b"

    Example 2:

    Input: s = "leetcode", k = 3
    Output: false
    Explanation: It is impossible to construct 3 palindromes using all the characters of s.

    Example 3:

    Input: s = "true", k = 4
    Output: true
    Explanation: The only possible solution is to put each character in a separate string.

 
    Constraints:

    1 <= s.length <= 105
    s consists of lowercase English letters.
    1 <= k <= 105

    """
    ### Canonical solution below ###
    char_counts = [0] * 26

    for c in s:
        char_counts[ord(c) - ord('a')] += 1

    odd_count = sum(count % 2 for count in char_counts)

    return odd_count <= k <= len(s)




### Unit tests below ###
def check(candidate):
	assert candidate("abcabc", 1) == True
	assert candidate("abc", 5) == False
	assert candidate("aaab", 5) == False
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                     15) == True
	assert candidate("abcabc", 7) == False
	assert candidate("", 1) == False
	assert candidate("s", 2) == False
	assert candidate("aabbcc", 2) == True
	assert candidate("abc", 1) == False
	assert candidate("racecar", 9) == False
	assert candidate("abcde", 5) == True
	assert candidate("aabbcc", 6) == True
	assert candidate("aabb", 4) == True
	assert candidate("abcdabcd", 2) == True
	assert candidate("abcabc", 2) == True
	assert candidate("racecar", 7) == True
	assert candidate("abcdabcd", 8) == True
	assert candidate("aaab", 4) == True
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                     4) == True
	assert candidate("abcd", 3) == False
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                     21) == True
	assert candidate("aab", 3) == True
	assert candidate("aabbcc", 7) == False
	assert candidate("aa", 1) == True
	assert candidate("abcde", 1) == False
	assert candidate("ab", 3) == False
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                     10) == True
	assert candidate("aabbcc", 3) == True
	assert candidate("ab", 1) == False
	assert candidate("abcd", 4) == True
	assert candidate("abcdabcd", 9) == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", 20) == False
	assert candidate("abc", 3) == True
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    2,
) == True
	assert candidate("a", 1) == True
	assert candidate("abcdefghijklmnopqrstuvwxyz", 3) == False
	assert candidate("aa", 2) == True
	assert candidate("ab", 2) == True
	assert candidate("abcde", 3) == False
	assert candidate("abc", 4) == False
	assert candidate("aabbcc", 1) == True
	assert candidate("abcdabcd", 1) == True
	assert candidate("aabbcc", 4) == True
	assert candidate("abcabc", 3) == True
	assert candidate("aabb", 5) == False
	assert candidate("a", 2) == False
	assert candidate(
    "abcdefghijklmnopqrstuvwxyz", 6) == False
	assert candidate("abcde", 4) == False
	assert candidate("abcde", 6) == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", 10) == False
	assert candidate("abcdabc", 7) == True
	assert candidate("abcdabcd", 6) == True
	assert candidate("abc", 2) == False
	assert candidate("s", 1) == True
	assert candidate("aabb", 2) == True
	assert candidate("aabb", 1) == True
	assert candidate("abcabc", 6) == True
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                     3) == True
	assert candidate("aa", 3) == False
	assert candidate("abcabc", 4) == True
	assert candidate("abcdabcd", 4) == True
	assert candidate("abcdabcd", 7) == True
	assert candidate("aabb", 3) == True
def test_check():
	check(can_construct)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string,greedy,counting
# Metadata Coverage: 100
