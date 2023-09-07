def check_palindrome_formation(a: str, b: str) -> bool:
    """
    You are given two strings a and b of the same length. Choose an index and split both strings at the same index, splitting a into two strings: aprefix and asuffix where a = aprefix + asuffix, and splitting b into two strings: bprefix and bsuffix where b = bprefix + bsuffix. Check if aprefix + bsuffix or bprefix + asuffix forms a palindrome.
    When you split a string s into sprefix and ssuffix, either ssuffix or sprefix is allowed to be empty. For example, if s = "abc", then "" + "abc", "a" + "bc", "ab" + "c" , and "abc" + "" are valid splits.
    Return true if it is possible to form a palindrome string, otherwise return false.
    Notice that x + y denotes the concatenation of strings x and y.
 
    Example 1:

    Input: a = "x", b = "y"
    Output: true
    Explaination: If either a or b are palindromes the answer is true since you can split in the following way:
    aprefix = "", asuffix = "x"
    bprefix = "", bsuffix = "y"
    Then, aprefix + bsuffix = "" + "y" = "y", which is a palindrome.

    Example 2:

    Input: a = "xbdef", b = "xecab"
    Output: false

    Example 3:

    Input: a = "ulacfd", b = "jizalu"
    Output: true
    Explaination: Split them at index 3:
    aprefix = "ula", asuffix = "cfd"
    bprefix = "jiz", bsuffix = "alu"
    Then, aprefix + bsuffix = "ula" + "alu" = "ulaalu", which is a palindrome.

 
    Constraints:

    1 <= a.length, b.length <= 105
    a.length == b.length
    a and b consist of lowercase English letters

    """
    ### Canonical solution below ###
    def is_palindrome(s: str, left: int, right: int) -> bool:
        while left < right:
            if s[left] != s[right]:
                return False
            left += 1
            right -= 1
        return True

    i, j = 0, len(a) - 1
    while i < j:
        if a[i] != b[j]:
            return is_palindrome(a, i, j) or is_palindrome(b, i, j)
        i += 1
        j -= 1
    return True




### Unit tests below ###
def check(candidate):
	assert candidate("a", "aa") == True
	assert candidate("aba", "bbb") == True
	assert candidate("abab", "baba") == True
	assert candidate("aaaa", "aaaaaa") == True
	assert candidate("abcdefg", "gfedcbf") == False
	assert candidate("aaab", "baaa") == True
	assert candidate("xbdef", "xecba") == False
	assert candidate("aba", "aba") == True
	assert candidate("a", "b") == True
	assert candidate("aaaaa", "aaaaa") == True
	assert candidate("aaa", "aaaa") == True
	assert candidate("ulacfd", "jizalu") == True
	assert candidate("abcdefgh", "hgfedcbd") == False
	assert candidate("xbdef", "xecab") == False
	assert candidate("aaa", "aaa") == True
	assert candidate("abc", "cba") == True
	assert candidate("aa", "aaa") == True
	assert candidate("aaaa", "aabba") == True
	assert candidate("abcd", "dcba") == True
	assert candidate("aabaaa", "aaabaaa") == True
	assert candidate("ab", "ba") == True
	assert candidate("aa", "bb") == True
	assert candidate("aaaa", "aaaa") == True
	assert candidate("aaaa", "baaa") == True
	assert candidate("abba", "bbab") == True
	assert candidate("aaaa", "aaabaa") == True
	assert candidate("aaaab", "baaaa") == True
	assert candidate("abcdefghij", "hijgfedcba") == True
	assert candidate("aaa", "baaa") == True
	assert candidate("ulacfd", "jizalz") == False
	assert candidate("aaa", "abba") == True
	assert candidate("abcdefg", "gfedcba") == True
	assert candidate("aaaa", "aabaaa") == True
	assert candidate("abcdef", "fedcba") == True
	assert candidate("aaaaba", "aaaaaa") == True
	assert candidate("aaa", "baaaa") == True
	assert candidate("abcde", "edcbf") == False
	assert candidate("aaaa", "aaaaa") == True
	assert candidate("abc", "def") == False
	assert candidate("aaaaaa", "aaaaaa") == True
	assert candidate("a", "a") == True
	assert candidate("abcdefgh", "hgfedcbf") == False
	assert candidate("aaaa", "baaaa") == True
	assert candidate("abcdefgh", "hgfedcba") == True
	assert candidate("aaaa", "aaabb") == True
	assert candidate("x", "y") == True
	assert candidate("aabaa", "ababa") == True
	assert candidate("abcdef", "fedccf") == False
	assert candidate("", "") == True
	assert candidate("abba", "abba") == True
	assert candidate("ab", "baba") == True
	assert candidate("aaaa", "aaab") == True
	assert candidate("aaaba", "aaaaaa") == True
	assert candidate("abcde", "cdeab") == False
	assert candidate("abcd", "dcbd") == False
	assert candidate("aaaa", "aabaa") == True
	assert candidate("abcde", "edcba") == True
def test_check():
	check(check_palindrome_formation)
# Metadata Difficulty: Medium
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100
