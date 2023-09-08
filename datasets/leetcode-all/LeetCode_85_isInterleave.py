def isInterleave(s1: str, s2: str, s3: str) -> bool:
    """
    Given strings s1, s2, and s3, find whether s3 is formed by an interleaving of s1 and s2.
    An interleaving of two strings s and t is a configuration where s and t are divided into n and m substrings respectively, such that:

    s = s1 + s2 + ... + sn
    t = t1 + t2 + ... + tm
    |n - m| <= 1
    The interleaving is s1 + t1 + s2 + t2 + s3 + t3 + ... or t1 + s1 + t2 + s2 + t3 + s3 + ...

    Note: a + b is the concatenation of strings a and b.
 
    Example 1:


    Input: s1 = "aabcc", s2 = "dbbca", s3 = "aadbbcbcac"
    Output: true
    Explanation: One way to obtain s3 is:
    Split s1 into s1 = "aa" + "bc" + "c", and s2 into s2 = "dbbc" + "a".
    Interleaving the two splits, we get "aa" + "dbbc" + "bc" + "a" + "c" = "aadbbcbcac".
    Since s3 can be obtained by interleaving s1 and s2, we return true.

    Example 2:

    Input: s1 = "aabcc", s2 = "dbbca", s3 = "aadbbbaccc"
    Output: false
    Explanation: Notice how it is impossible to interleave s2 with any other string to obtain s3.

    Example 3:

    Input: s1 = "", s2 = "", s3 = ""
    Output: true

 
    Constraints:

    0 <= s1.length, s2.length <= 100
    0 <= s3.length <= 200
    s1, s2, and s3 consist of lowercase English letters.

 
    Follow up: Could you solve it using only O(s2.length) additional memory space?
    """
    ### Canonical solution below ###
    m, n = len(s1), len(s2)
    if m + n != len(s3):
        return False

    dp = [[False] * (n + 1) for _ in range(m + 1)]
    dp[0][0] = True
    for i in range(1, m + 1):
        dp[i][0] = dp[i - 1][0] and s1[i - 1] == s3[i - 1]
    for j in range(1, n + 1):
        dp[0][j] = dp[0][j - 1] and s2[j - 1] == s3[j - 1]

    for i in range(1, m + 1):
        for j in range(1, n + 1):
            dp[i][j] = (dp[i - 1][j] and s1[i - 1] == s3[i + j - 1]) or \
                       (dp[i][j - 1] and s2[j - 1] == s3[i + j - 1])

    return dp[m][n]




### Unit tests below ###
def check(candidate):
	assert candidate("aabc", "abad", "aacbbad") == False
	assert candidate("", "c", "") == False
	assert candidate("a", "b", "ba") == True
	assert candidate("", "bb", "bb") == True
	assert candidate("aaa", "bbb", "aaa") == False
	assert candidate("db", "b", "cbb") == False
	assert candidate("aabc", "abad", "aabacbd") == False
	assert candidate("aaa", "bbb", "aaaaaabbb") == False
	assert candidate("", "", "") == True
	assert candidate("xy", "x", "xxY") == False
	assert candidate("xy", "x", "yx") == False
	assert candidate("a", "", "c") == False
	assert candidate("aa", "ab", "aab") == False
	assert candidate("aa", "ab", "ab") == False
	assert candidate("ab", "bc", "babc") == True
	assert candidate("abc", "ab", "ababc") == True
	assert candidate("", "b", "b") == True
	assert candidate("aaa", "aa", "aaaaaa") == False
	assert candidate("aabcc", "dbbca", "aadbbbaccc") == False
	assert candidate("a", "", "a") == True
	assert candidate("", "c", "c") == True
	assert candidate("aaa", "aa", "aaaaa") == True
	assert candidate("aa", "a", "a") == False
	assert candidate("aabc", "abad", "aabcabad") == True
	assert candidate("aabc", "abad", "aabacdbd") == False
	assert candidate("abc", "def", "abcdef") == True
	assert candidate("aa", "", "aa") == True
	assert candidate("abc", "def", "acbdfe") == False
	assert candidate("", "", "a") == False
	assert candidate("aaa", "bbb", "aaabbb") == True
	assert candidate("aa", "aaa", "aaaaaaaaaa") == False
	assert candidate("aabc", "abad", "aabcabadd") == False
	assert candidate("a", "b", "a") == False
	assert candidate("aabbcc", "dbbca", "aadbbbaccc") == False
	assert candidate("ab", "bc", "bac") == False
	assert candidate("aaa", "bbb", "ababab") == True
	assert candidate("aabcc", "dbbca", "aadbbcbcacc") == False
	assert candidate("aa", "a", "aab") == False
	assert candidate("aabc", "abad", "aacbbada") == False
	assert candidate("abc", "ab", "abcab") == True
	assert candidate("aabc", "abad", "abacbad") == False
	assert candidate("aab", "axy", "aaxaby") == True
	assert candidate("", "c", "a") == False
	assert candidate("aabcc", "dbbca", "aadbbcbcac") == True
	assert candidate("aaaaa", "bbb", "aababbababa") == False
	assert candidate("aa", "aaa", "aaaaaa") == False
	assert candidate("aabc", "abad", "aabacdb") == False
	assert candidate("", "bb", "b") == False
	assert candidate("aaaaa", "aa", "aaaaaaaaaa") == False
	assert candidate("xx", "xx", "xxxx") == True
	assert candidate("x", "y", "z") == False
	assert candidate("aab", "axy", "abaaxy") == False
	assert candidate("", "ab", "ab") == True
	assert candidate("a", "a", "aa") == True
	assert candidate("a", "b", "ab") == True
	assert candidate("abc", "def", "abdecf") == True
def test_check():
	check(isInterleave)
# Metadata Difficulty: Medium
# Metadata Topics: string,dynamic-programming
# Metadata Coverage: 100
