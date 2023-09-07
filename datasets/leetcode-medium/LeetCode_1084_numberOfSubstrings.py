def numberOfSubstrings(s: str) -> int:
    """
    Given a string s consisting only of characters a, b and c.
    Return the number of substrings containing at least one occurrence of all these characters a, b and c.
 
    Example 1:

    Input: s = "abcabc"
    Output: 10
    Explanation: The substrings containing at least one occurrence of the characters a, b and c are "abc", "abca", "abcab", "abcabc", "bca", "bcab", "bcabc", "cab", "cabc" and "abc" (again). 

    Example 2:

    Input: s = "aaacb"
    Output: 3
    Explanation: The substrings containing at least one occurrence of the characters a, b and c are "aaacb", "aacb" and "acb". 

    Example 3:

    Input: s = "abc"
    Output: 1

 
    Constraints:

    3 <= s.length <= 5 x 10^4
    s only consists of a, b or c characters.

    """
    ### Canonical solution below ###
    res, i, count = 0, 0, [0, 0, 0]

    for j, ch in enumerate(s):
        count[ord(ch) - ord('a')] += 1

        while count[0] > 0 and count[1] > 0 and count[2] > 0:
            count[ord(s[i]) - ord('a')] -= 1
            i += 1

        res += i

    return res




### Unit tests below ###
def check(candidate):
	assert candidate("aaa") == 0
	assert candidate("bbbb") == 0
	assert candidate("cabcabcabc") == 36
	assert candidate("ccc") == 0
	assert candidate("cccc") == 0
	assert candidate("abcabcabcab") == 45
	assert candidate("cc") == 0
	assert candidate("bb") == 0
	assert candidate("abcabc") == 10
	assert candidate("cbacbacbac") == 36
	assert candidate("aaaa") == 0
	assert candidate("a") == 0
	assert candidate("abc") == 1
	assert candidate("bbb") == 0
	assert candidate("aa") == 0
	assert candidate(
    "aaacb") == 3
	assert candidate(
    "aaabbba") == 0
	assert candidate("b") == 0
	assert candidate(
    "aaaaaa") == 0
	assert candidate(
    "a") == 0
	assert candidate("bacbacbacba") == 45
	assert candidate("c") == 0
	assert candidate(
    "abbbb") == 0
	assert candidate("aaac") == 0
	assert candidate(
    "abcabc") == 10
def test_check():
	check(numberOfSubstrings)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string,sliding-window
# Metadata Coverage: 100
