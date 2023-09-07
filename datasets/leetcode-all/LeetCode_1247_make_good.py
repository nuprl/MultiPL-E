def make_good(s: str) -> str:
    """
    Given a string s of lower and upper case English letters.
    A good string is a string which doesn't have two adjacent characters s[i] and s[i + 1] where:

    0 <= i <= s.length - 2
    s[i] is a lower-case letter and s[i + 1] is the same letter but in upper-case or vice-versa.

    To make the string good, you can choose two adjacent characters that make the string bad and remove them. You can keep doing this until the string becomes good.
    Return the string after making it good. The answer is guaranteed to be unique under the given constraints.
    Notice that an empty string is also good.
 
    Example 1:

    Input: s = "leEeetcode"
    Output: "leetcode"
    Explanation: In the first step, either you choose i = 1 or i = 2, both will result "leEeetcode" to be reduced to "leetcode".

    Example 2:

    Input: s = "abBAcC"
    Output: ""
    Explanation: We have many possible scenarios, and all lead to the same answer. For example:
    "abBAcC" --> "aAcC" --> "cC" --> ""
    "abBAcC" --> "abBA" --> "aA" --> ""

    Example 3:

    Input: s = "s"
    Output: "s"

 
    Constraints:

    1 <= s.length <= 100
    s contains only lower and upper case English letters.

    """
    ### Canonical solution below ###
    result = []
    for c in s:
        if result and abs(ord(result[-1]) - ord(c)) == 32:
            result.pop()
        else:
            result.append(c)
    return "".join(result)




### Unit tests below ###
def check(candidate):
	assert candidate("Aa") == ""
	assert candidate("ZzPp") == ""
	assert candidate("Pp") == ""
	assert candidate("ab") == "ab"
	assert candidate(
    "abBAcC") == ""
	assert candidate("leEeetcode") == "leetcode"
	assert candidate("pP") == ""
	assert candidate("zZaA") == ""
	assert candidate(
    "pPZz") == ""
	assert candidate("aA") == ""
	assert candidate("Ab") == "Ab"
	assert candidate("aBa") == "aBa"
	assert candidate(
    "aAjJcCgGsSdDxXpP") == ""
	assert candidate("kk") == "kk"
	assert candidate("bb") == "bb"
	assert candidate("abBAcC") == ""
	assert candidate("ZzQq") == ""
	assert candidate("A") == "A"
	assert candidate("") == ""
	assert candidate("abBAc") == "c"
	assert candidate("QqZz") == ""
	assert candidate("abcCBA") == ""
	assert candidate("a") == "a"
	assert candidate("aa") == "aa"
	assert candidate("s") == "s"
	assert candidate("bB") == ""
	assert candidate("aAaA") == ""
	assert candidate("PpZz") == ""
	assert candidate("jJvV") == ""
	assert candidate("Bb") == ""
	assert candidate("bBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbB") == ""
	assert candidate("cc") == "cc"
	assert candidate("aAjJcCgGsSdDxXpP") == ""
	assert candidate("jJzzZZ") == ""
	assert candidate("AaA") == "A"
	assert candidate(
    "bBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbBbB") == ""
	assert candidate("abBA") == ""
	assert candidate("zzZZ") == ""
	assert candidate("aAbB") == ""
	assert candidate("fFfF") == ""
def test_check():
	check(make_good)
# Metadata Difficulty: Easy
# Metadata Topics: string,stack
# Metadata Coverage: 100
