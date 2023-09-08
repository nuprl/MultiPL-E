def are_almost_equal(s1: str, s2: str) -> bool:
    """
    You are given two strings s1 and s2 of equal length. A string swap is an operation where you choose two indices in a string (not necessarily different) and swap the characters at these indices.
    Return true if it is possible to make both strings equal by performing at most one string swap on exactly one of the strings. Otherwise, return false.
 
    Example 1:

    Input: s1 = "bank", s2 = "kanb"
    Output: true
    Explanation: For example, swap the first character with the last character of s2 to make "bank".

    Example 2:

    Input: s1 = "attack", s2 = "defend"
    Output: false
    Explanation: It is impossible to make them equal with one string swap.

    Example 3:

    Input: s1 = "kelb", s2 = "kelb"
    Output: true
    Explanation: The two strings are already equal, so no string swap operation is required.

 
    Constraints:

    1 <= s1.length, s2.length <= 100
    s1.length == s2.length
    s1 and s2 consist of only lowercase English letters.

    """
    ### Canonical solution below ###
    diff_count = 0
    first_diff = -1
    second_diff = -1
    for i in range(len(s1)):
        if s1[i] != s2[i]:
            diff_count += 1
            if diff_count == 1:
                first_diff = i
            elif diff_count == 2:
                second_diff = i
            else:
                return False
    return diff_count == 0 or (diff_count == 2 and s1[first_diff] == s2[second_diff] and s1[second_diff] == s2[first_diff])




### Unit tests below ###
def check(candidate):
	assert candidate("abcdefghij", " i     a      b      c      d      e      f      g      h      i      j     ") == False
	assert candidate("abcdefghij", " b     c     d     e     f     g     h     i     j     a      ") == False
	assert candidate("aaaa", "bbbb") == False
	assert candidate("aaba", "aaaa") == False
	assert candidate("aaaa", "baaa") == False
	assert candidate("abcd", " a  b  c  d ") == False
	assert candidate("abcde", "abcde") == True
	assert candidate("s1", "s2") == False
	assert candidate("abcde", "baced") == False
	assert candidate("abcd", "    a    b    c    d    ") == False
	assert candidate("abcd", "         a         b         c         d         ") == False
	assert candidate("abcde", "ebcad") == False
	assert candidate("abcdefghij", " j     a      b      c      d      e      f      g      h      i      j    ") == False
	assert candidate("aaaa", "abaa") == False
	assert candidate("abcde", "cbade") == True
	assert candidate("abcd", "dcba") == False
	assert candidate("s1", "s1") == True
	assert candidate("abcde", "aedcb") == False
	assert candidate("abaa", "aaaa") == False
	assert candidate("abcdefghij", " j      a      b      c      d      e      f      g      h      i      ") == False
	assert candidate("abcd", " ab c d") == False
	assert candidate("abcd", "        a        b        c        d        ") == False
	assert candidate("abcd", "     a     b     c     d     ") == False
	assert candidate("abcd", "abdc") == True
	assert candidate("aaaa", "aaba") == False
	assert candidate("abcde", "baecd") == False
	assert candidate("abcd", "  a  b  c  d  ") == False
	assert candidate("abcd", "   a   b   c   d   ") == False
	assert candidate("abcd", "       a       b       c       d       ") == False
	assert candidate("aaab", "aaaa") == False
	assert candidate("abcdefghij", " j      a      b      c      d      e      f      g      h      i      j") == False
	assert candidate("abcdefghij", "        a        b        c        d        e        f        g        h        i        j        ") == False
	assert candidate("abc", "def") == False
	assert candidate("abcd", "           a           b           c           d           ") == False
	assert candidate("abcde", "bcde ") == False
	assert candidate("abcd", " abc d") == False
	assert candidate("abcd", "abcd") == True
	assert candidate("abc", "abc") == True
	assert candidate("aaaa", "abab") == False
	assert candidate("aaaa", "aaaa") == True
	assert candidate("aaaa", "aaab") == False
	assert candidate("aaaa", "aabc") == False
	assert candidate("aaaa", "aaac") == False
	assert candidate("abcd", " abcde") == False
	assert candidate("abcd", "bcda") == False
	assert candidate("abcd", "      a      b      c      d      ") == False
	assert candidate("abcd", "a b c  d") == False
	assert candidate("abcdefghij", "abcdefghij") == True
	assert candidate("abcde", "cbead") == False
	assert candidate("abcde", "aecdb") == True
	assert candidate("abab", "aaaa") == False
	assert candidate("abcde", "bcde a") == False
	assert candidate("abcd", "dabc") == False
	assert candidate("abcd", "          a          b          c          d          ") == False
	assert candidate("abcd", "abce") == False
	assert candidate("abcd", " a b c d ") == False
	assert candidate("abcd", "a b c d") == False
	assert candidate("abcdefghij", " ij      a      b      c      d      e      f      g      h      i      j     ") == False
	assert candidate("baaa", "aaaa") == False
	assert candidate("aaaa", "aabb") == False
	assert candidate("abcdefghij", " h     i     j     a      b      c      d      e      f      g      ") == False
def test_check():
	check(are_almost_equal)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string,counting
# Metadata Coverage: 100
