def modifyString(s: str) -> str:
    """
    Given a string s containing only lowercase English letters and the '?' character, convert all the '?' characters into lowercase letters such that the final string does not contain any consecutive repeating characters. You cannot modify the non '?' characters.
    It is guaranteed that there are no consecutive repeating characters in the given string except for '?'.
    Return the final string after all the conversions (possibly zero) have been made. If there is more than one solution, return any of them. It can be shown that an answer is always possible with the given constraints.
 
    Example 1:

    Input: s = "?zs"
    Output: "azs"
    Explanation: There are 25 solutions for this problem. From "azs" to "yzs", all are valid. Only "z" is an invalid modification as the string will consist of consecutive repeating characters in "zzs".

    Example 2:

    Input: s = "ubv?w"
    Output: "ubvaw"
    Explanation: There are 24 solutions for this problem. Only "v" and "w" are invalid modifications as the strings will consist of consecutive repeating characters in "ubvvw" and "ubvww".

 
    Constraints:

    1 <= s.length <= 100
    s consist of lowercase English letters and '?'.

    """
    ### Canonical solution below ###
    s = list(s)
    for i in range(len(s)):
        if s[i] == '?':
            for c in range(ord('a'), ord('z') + 1):
                if (i - 1 < 0 or s[i - 1] != chr(c)) and (i + 1 >= len(s) or s[i + 1] != chr(c)):
                    s[i] = chr(c)
                    break
    return ''.join(s)




### Unit tests below ###
def check(candidate):
	assert candidate("a") == "a"
	assert candidate(
    "?zs") == "azs"
	assert candidate("aabbaba") == "aabbaba"
	assert candidate("abcdefg") == "abcdefg"
	assert candidate("ubv?w") == "ubvaw"
	assert candidate(
    "ubv?w") == "ubvaw"
def test_check():
	check(modifyString)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
