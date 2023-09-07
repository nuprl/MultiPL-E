def breakPalindrome(palindrome: str) -> str:
    """
    Given a palindromic string of lowercase English letters palindrome, replace exactly one character with any lowercase English letter so that the resulting string is not a palindrome and that it is the lexicographically smallest one possible.
    Return the resulting string. If there is no way to replace a character to make it not a palindrome, return an empty string.
    A string a is lexicographically smaller than a string b (of the same length) if in the first position where a and b differ, a has a character strictly smaller than the corresponding character in b. For example, "abcc" is lexicographically smaller than "abcd" because the first position they differ is at the fourth character, and 'c' is smaller than 'd'.
 
    Example 1:

    Input: palindrome = "abccba"
    Output: "aaccba"
    Explanation: There are many ways to make "abccba" not a palindrome, such as "zbccba", "aaccba", and "abacba".
    Of all the ways, "aaccba" is the lexicographically smallest.

    Example 2:

    Input: palindrome = "a"
    Output: ""
    Explanation: There is no way to replace a single character to make "a" not a palindrome, so return an empty string.

 
    Constraints:

    1 <= palindrome.length <= 1000
    palindrome consists of only lowercase English letters.

    """
    ### Canonical solution below ###
    length = len(palindrome)
    if length == 1:
        return ""

    chars = list(palindrome)
    for i in range(length // 2):
        if chars[i] != 'a':
            chars[i] = 'a'
            return "".join(chars)

    chars[length - 1] = 'b'
    return "".join(chars)




### Unit tests below ###
def check(candidate):
	assert candidate("abcba") == "aacba"
	assert candidate(
    "level") == "aevel"
	assert candidate("aaa") == "aab"
	assert candidate("eye") == "aye"
	assert candidate("deed") == "aeed"
	assert candidate(
    "pop") == "aop"
	assert candidate("radar") == "aadar"
	assert candidate(
    "radars") == "aadars"
	assert candidate(
    "eye") == "aye"
	assert candidate(
    "mom") == "aom"
	assert candidate("wow") == "aow"
	assert candidate(
    "moms") == "aoms"
	assert candidate(
    "aa") == "ab"
	assert candidate("zzzzz") == "azzzz"
	assert candidate("racecar") == "aacecar"
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab", "This should not return None"
	assert candidate("dad") == "aad"
	assert candidate("madam") == "aadam"
	assert candidate("bob") == "aob"
	assert candidate(
    "a") == ""
	assert candidate(
    "madams") == "aadams"
	assert candidate("nan") == "aan"
	assert candidate(
    "racecar") == "aacecar"
	assert candidate("level") == "aevel"
	assert candidate("mom") == "aom"
	assert candidate("pop") == "aop"
	assert candidate(
    "abccba") == "aaccba"
	assert candidate("aa") == "ab"
	assert candidate(
    "bob") == "aob"
	assert candidate(
    "dad") == "aad"
	assert candidate("abccba") == "aaccba"
	assert candidate(
    "wow") == "aow"
	assert candidate("a") == ""
def test_check():
	check(breakPalindrome)
# Metadata Difficulty: Medium
# Metadata Topics: string,greedy
# Metadata Coverage: 100
