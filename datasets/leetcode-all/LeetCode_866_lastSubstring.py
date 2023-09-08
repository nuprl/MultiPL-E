def lastSubstring(s: str) -> str:
    """
    Given a string s, return the last substring of s in lexicographical order.
 
    Example 1:

    Input: s = "abab"
    Output: "bab"
    Explanation: The substrings are ["a", "ab", "aba", "abab", "b", "ba", "bab"]. The lexicographically maximum substring is "bab".

    Example 2:

    Input: s = "leetcode"
    Output: "tcode"

 
    Constraints:

    1 <= s.length <= 4 * 105
    s contains only lowercase English letters.

    """
    ### Canonical solution below ###
    maxIndex = 0
    curIndex = 1
    while curIndex < len(s):
        i = 0
        while curIndex + i < len(s) and s[maxIndex + i] == s[curIndex + i]:
            i += 1
        if curIndex + i == len(s):
            break
        if s[maxIndex + i] < s[curIndex + i]:
            maxIndex = curIndex
        curIndex += 1
    return s[maxIndex:]




### Unit tests below ###
def check(candidate):
	assert candidate("bbbbaaaaaaaaf") == "f"
	assert candidate("abab") == "bab"
	assert candidate("data") == "ta"
	assert candidate("coding") == "oding"
	assert candidate("ecbacbac") == "ecbacbac"
	assert candidate("bbaaaaaaaaaf") == "f"
	assert candidate("cat") == "t"
	assert candidate("abcab") == "cab"
	assert candidate("zabcz") == "zabcz"
	assert candidate("abcdefg") == "g"
	assert candidate("abcdef") == "f"
	assert candidate("aaaaaaaaa") == "aaaaaaaaa"
	assert candidate("qpqpqpq") == "qpqpqpq"
	assert candidate("a") == "a"
	assert candidate("qqqqqq") == "qqqqqq"
	assert candidate("qpqpqpqp") == "qpqpqpqp"
	assert candidate("qpqpqp") == "qpqpqp"
	assert candidate("abababab") == "bababab"
	assert candidate("helloworld") == "world"
	assert candidate("hbhbhbhbhbhbhbhb") == "hbhbhbhbhbhbhbhb"
	assert candidate("aaaaaaaaaaf") == "f"
	assert candidate("aaab") == "b"
	assert candidate("python") == "ython"
	assert candidate("leetcode") == "tcode"
	assert candidate("abcabc") == "cabc"
	assert candidate("aaa") == "aaa"
	assert candidate("hello") == "o"
	assert candidate("aaaaaaab") == "b"
	assert candidate("aa") == "aa"
	assert candidate("eee") == "eee"
	assert candidate("cbda") == "da"
	assert candidate("banana") == "nana"
	assert candidate("bbbbaaaaaaaaaf") == "f"
	assert candidate("zzzzz") == "zzzzz"
def test_check():
	check(lastSubstring)
# Metadata Difficulty: Hard
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100
