def countSubstrings(s: str) -> int:
    """
    Given a string s, return the number of palindromic substrings in it.
    A string is a palindrome when it reads the same backward as forward.
    A substring is a contiguous sequence of characters within the string.
 
    Example 1:

    Input: s = "abc"
    Output: 3
    Explanation: Three palindromic strings: "a", "b", "c".

    Example 2:

    Input: s = "aaa"
    Output: 6
    Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".

 
    Constraints:

    1 <= s.length <= 1000
    s consists of lowercase English letters.

    """
    ### Canonical solution below ###
    n = len(s)
    count = 0
    for center in range(2 * n - 1):
        left = center // 2
        right = left + center % 2
        while left >= 0 and right < n and s[left] == s[right]:
            count += 1
            left -= 1
            right += 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate("abc") == 3
	assert candidate(
    "aba") == 4
	assert candidate(
    "abc") == 3
	assert candidate("abccba") == 9
	assert candidate(
    "aa") == 3
	assert candidate("abcd") == 4
	assert candidate(
    "abcd") == 4
	assert candidate(
    "abcba") == 7
	assert candidate("aaaaaa") == 21
	assert candidate("abaaba") == 11
	assert candidate("aaaabaaaa") == 25
	assert candidate("aaa") == 6
	assert candidate(
    "aaaaaa") == 21
	assert candidate("racecar") == 10
	assert candidate("abcba") == 7
	assert candidate("madam") == 7
	assert candidate("abcdeedcba") == 15
	assert candidate("a") == 1
	assert candidate("ab") == 2
	assert candidate(
    "aaa") == 6
def test_check():
	check(countSubstrings)
# Metadata Difficulty: Medium
# Metadata Topics: string,dynamic-programming
# Metadata Coverage: 100
