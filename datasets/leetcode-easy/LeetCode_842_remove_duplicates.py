def remove_duplicates(s: str) -> str:
    """
    You are given a string s consisting of lowercase English letters. A duplicate removal consists of choosing two adjacent and equal letters and removing them.
    We repeatedly make duplicate removals on s until we no longer can.
    Return the final string after all such duplicate removals have been made. It can be proven that the answer is unique.
 
    Example 1:

    Input: s = "abbaca"
    Output: "ca"
    Explanation: 
    For example, in "abbaca" we could remove "bb" since the letters are adjacent and equal, and this is the only possible move.  The result of this move is that the string is "aaca", of which only "aa" is possible, so the final string is "ca".

    Example 2:

    Input: s = "azxxzy"
    Output: "ay"

 
    Constraints:

    1 <= s.length <= 105
    s consists of lowercase English letters.

    """
    ### Canonical solution below ###
    stack = []
    for c in s:
        if stack and stack[-1] == c:
            stack.pop()
        else:
            stack.append(c)
    return "".join(stack)




### Unit tests below ###
def check(candidate):
	assert candidate("abcabcabcabc") == "abcabcabcabc"
	assert candidate("abbbc") == "abc"
	assert candidate(
    "abccbaabccbaabccbaabccbaabccbaabccbaabccbaabccbaabccbaabccbaabc"
) == "abc"
	assert candidate("abcabc") == "abcabc"
	assert candidate("abcabcabcabcabcabcabcabcabc") == "abcabcabcabcabcabcabcabcabc"
	assert candidate("abcabcabcabcabcabcabcabc") == "abcabcabcabcabcabcabcabc"
	assert candidate("aa") == ""
	assert candidate("ab") == "ab"
	assert candidate("abbaca") == "ca"
	assert candidate(
    "azxxzy"
) == "ay", "Removing 'xx' Forms 'azyy' which contains consecutive 'y'."
	assert candidate("aaabbbbb") == "ab"
	assert candidate("aba") == "aba"
	assert candidate("bbbaba") == "baba"
	assert candidate("aaab") == "ab"
	assert candidate("azxxzy") == "ay"
	assert candidate("") == ""
	assert candidate("bbbbb") == "b"
	assert candidate(
    "abbaca"
) == "ca", "Removing 'bb' Forms 'aaca' which contains consecutive 'a'."
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == "a"
	assert candidate("abbbbccaaaacccac") == "acac"
	assert candidate("abcabcabcabcabc") == "abcabcabcabcabc"
	assert candidate("abcabcabc") == "abcabcabc"
	assert candidate("abcabcabcabcabcabcabc") == "abcabcabcabcabcabcabc"
	assert candidate("a") == "a"
	assert candidate("abc") == "abc"
	assert candidate("abcabcabcabcabcabc") == "abcabcabcabcabcabc"
def test_check():
	check(remove_duplicates)
# Metadata Difficulty: Easy
# Metadata Topics: string,stack
# Metadata Coverage: 100
