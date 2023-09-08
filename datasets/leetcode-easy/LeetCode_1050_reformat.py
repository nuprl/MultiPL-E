def reformat(s: str) -> str:
    """
    You are given an alphanumeric string s. (Alphanumeric string is a string consisting of lowercase English letters and digits).
    You have to find a permutation of the string where no letter is followed by another letter and no digit is followed by another digit. That is, no two adjacent characters have the same type.
    Return the reformatted string or return an empty string if it is impossible to reformat the string.
 
    Example 1:

    Input: s = "a0b1c2"
    Output: "0a1b2c"
    Explanation: No two adjacent characters have the same type in "0a1b2c". "a0b1c2", "0a1b2c", "0c2a1b" are also valid permutations.

    Example 2:

    Input: s = "leetcode"
    Output: ""
    Explanation: "leetcode" has only characters so we cannot separate them by digits.

    Example 3:

    Input: s = "1229857369"
    Output: ""
    Explanation: "1229857369" has only digits so we cannot separate them by characters.

 
    Constraints:

    1 <= s.length <= 500
    s consists of only lowercase English letters and/or digits.

    """
    ### Canonical solution below ###
    from collections import deque
    letters, digits = deque(), deque()

    for c in s:
        if c.isalpha():
            letters.append(c)
        else:
            digits.append(c)

    if abs(len(letters) - len(digits)) > 1:
        return ""

    result = []
    use_letter = len(letters) > len(digits)

    while letters or digits:
        if use_letter:
            result.append(letters.popleft())
        else:
            result.append(digits.popleft())
        use_letter = not use_letter

    return ''.join(result)




### Unit tests below ###
def check(candidate):
	assert candidate("leetcode") == ""
	assert candidate("1a") == "1a"
	assert candidate(
    "covid2019") == "c2o0v1i9d"
	assert candidate("1229857369") == ""
	assert candidate("123") == ""
	assert candidate("abc") == ""
	assert candidate("ab123") == "1a2b3"
def test_check():
	check(reformat)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
