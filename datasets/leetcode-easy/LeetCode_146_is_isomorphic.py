def is_isomorphic(s: str, t: str) -> bool:
    """
    Given two strings s and t, determine if they are isomorphic.
    Two strings s and t are isomorphic if the characters in s can be replaced to get t.
    All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.
 
    Example 1:
    Input: s = "egg", t = "add"
    Output: true
    Example 2:
    Input: s = "foo", t = "bar"
    Output: false
    Example 3:
    Input: s = "paper", t = "title"
    Output: true

 
    Constraints:

    1 <= s.length <= 5 * 104
    t.length == s.length
    s and t consist of any valid ascii character.

    """
    ### Canonical solution below ###
    map1, map2 = {}, {}
    for char_s, char_t in zip(s, t):
        if char_s not in map1:
            map1[char_s] = char_t
        if char_t not in map2:
            map2[char_t] = char_s
        if map1[char_s] != char_t or map2[char_t] != char_s:
            return False
    return True




### Unit tests below ###
def check(candidate):
	assert candidate("abb", "cdd") == True
	assert candidate("!!", "@#") == False
	assert candidate("!", "@") == True
	assert candidate("abab", "cdcd") == True
	assert candidate("!#a#ab", "@#a#ab") == True
	assert candidate("abcde", "bbcde") == False
	assert candidate("abcdefghij", "aaaaaaaaa") == False
	assert candidate("abc", "def") == True
	assert candidate(
    "abbbbbbbbbccbcbcbcbcbcbcbc", "fdbdfdfdfdffdfdfdfdffdfdfd"
) == False
	assert candidate("!##!", "@#@!") == False
	assert candidate("aaaaa", "bbbbb") == True
	assert candidate(
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789",
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789",
) == True
	assert candidate("aaaab", "bbbbc") == True
	assert candidate("123", "445") == False
	assert candidate("foo", "bar") == False
	assert candidate("!!", "@@") == True
	assert candidate("baa", "aba") == False
	assert candidate("abba", "cddc") == True
	assert candidate("aaaa", "bbbb") == True
	assert candidate("abcde", "fghii") == False
	assert candidate("abab", "abab") == True
	assert candidate("!@", "@!") == True
	assert candidate("!#", "@#") == True
	assert candidate("paper", "title") == True
	assert candidate("abab", "cddcc") == False
	assert candidate("egg", "add") == True
	assert candidate("a", "f") == True
	assert candidate("bbbbababab", "fffbffcffc") == False
	assert candidate(
    "1234567890123456789012345678901234567890123456789012345678901234567890",
    "1234567890123456789012345678901234567890123456789012345678901234567890",
) == True
	assert candidate("123", "456") == True
	assert candidate(
    "ababbb", "caabbb"
) == False
	assert candidate("az", "yy") == False
	assert candidate("ababababababababababababcbaba", "cacacacacacacacacacacaccbacb") == False
	assert candidate("abcde", "fghij") == True
	assert candidate("abcdefghij", "bcdgefhiaj") == True
	assert candidate("abba", "ffdf") == False
	assert candidate("abc", "dee") == False
	assert candidate("abc", "caa") == False
	assert candidate("aa", "ba") == False
	assert candidate("aaabbbbbbbbbccccccccccddddddddddd", "fdbdfdfdfdffdfdfdfdffdfdfd") == False
	assert candidate("aabba", "fffbff") == False
	assert candidate("ababbb", "caabbb") == False
	assert candidate("ab", "aa") == False
	assert candidate("123", "123") == True
	assert candidate("a", "z") == True
	assert candidate("baaa", "fefc") == False
	assert candidate("12345", "67890") == True
	assert candidate("b", "f") == True
	assert candidate("ab", "ab") == True
	assert candidate("aaaa", "aabb") == False
	assert candidate("aab", "bbb") == False
	assert candidate("!@#", "@@@") == False
	assert candidate("!#", "@@") == False
	assert candidate("abca", "defb") == False
	assert candidate("", "") == True
def test_check():
	check(is_isomorphic)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
