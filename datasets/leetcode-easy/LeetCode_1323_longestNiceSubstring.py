def longestNiceSubstring(s: str) -> str:
    """
    A string s is nice if, for every letter of the alphabet that s contains, it appears both in uppercase and lowercase. For example, "abABB" is nice because 'A' and 'a' appear, and 'B' and 'b' appear. However, "abA" is not because 'b' appears, but 'B' does not.
    Given a string s, return the longest substring of s that is nice. If there are multiple, return the substring of the earliest occurrence. If there are none, return an empty string.
 
    Example 1:

    Input: s = "YazaAay"
    Output: "aAa"
    Explanation: "aAa" is a nice string because 'A/a' is the only letter of the alphabet in s, and both 'A' and 'a' appear.
    "aAa" is the longest nice substring.

    Example 2:

    Input: s = "Bb"
    Output: "Bb"
    Explanation: "Bb" is a nice string because both 'B' and 'b' appear. The whole string is a substring.

    Example 3:

    Input: s = "c"
    Output: ""
    Explanation: There are no nice substrings.

 
    Constraints:

    1 <= s.length <= 100
    s consists of uppercase and lowercase English letters.

    """
    ### Canonical solution below ###
    n = len(s)
    result = ""
    for i in range(n):
        for j in range(i + 1, n):
            is_nice = True
            for ch in range(ord('A'), ord('Z') + 1):
                upper = chr(ch) in s[i:j+1]
                lower = chr(ch + 32) in s[i:j+1]
                if (upper and not lower) or (not upper and lower):
                    is_nice = False
                    break
            if is_nice and j - i + 1 > len(result):
                result = s[i:j+1]
    return result




### Unit tests below ###
def check(candidate):
	assert candidate("A") == ""
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA"
) == "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA"
	assert candidate("aaaAa") == "aaaAa"
	assert candidate("aBcD") == ""
	assert candidate("abABB") == "abABB"
	assert candidate("AaAa") == "AaAa"
	assert candidate("AaBb") == "AaBb"
	assert candidate("Bb") == "Bb"
	assert candidate("PYTHON") == ""
	assert candidate("a") == ""
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA") == \
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA"
	assert candidate("c") == ""
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaAa") == \
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaAa"
	assert candidate("Python") == ""
	assert candidate("AaBbC") == "AaBb"
	assert candidate(
    "MDdxAaBbCcC") == "AaBbCcC", "Should match 'AaBbCcC' instead of 'AaBbC'"
	assert candidate("AaBbCc") == "AaBbCc"
	assert candidate("aA") == "aA"
	assert candidate("JAVA") == ""
	assert candidate("Java") == ""
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaAa"
) == "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaAa"
	assert candidate("YazaAay") == "aAa"
def test_check():
	check(longestNiceSubstring)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string,divide-and-conquer,bit-manipulation,sliding-window
# Metadata Coverage: 100
