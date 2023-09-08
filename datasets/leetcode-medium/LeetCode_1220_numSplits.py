def numSplits(s: str) -> int:
    """
    You are given a string s.
    A split is called good if you can split s into two non-empty strings sleft and sright where their concatenation is equal to s (i.e., sleft + sright = s) and the number of distinct letters in sleft and sright is the same.
    Return the number of good splits you can make in s.
 
    Example 1:

    Input: s = "aacaba"
    Output: 2
    Explanation: There are 5 ways to split "aacaba" and 2 of them are good. 
    ("a", "acaba") Left string and right string contains 1 and 3 different letters respectively.
    ("aa", "caba") Left string and right string contains 1 and 3 different letters respectively.
    ("aac", "aba") Left string and right string contains 2 and 2 different letters respectively (good split).
    ("aaca", "ba") Left string and right string contains 2 and 2 different letters respectively (good split).
    ("aacab", "a") Left string and right string contains 3 and 1 different letters respectively.

    Example 2:

    Input: s = "abcd"
    Output: 1
    Explanation: Split the string as follows ("ab", "cd").

 
    Constraints:

    1 <= s.length <= 105
    s consists of only lowercase English letters.

    """
    ### Canonical solution below ###
    left_set, right_set = set(), set()
    left, right = [0] * len(s), [0] * len(s)
    count = 0

    for i, char in enumerate(s):
        left_set.add(char)
        left[i] = len(left_set)

    for i in range(len(s) - 1, 0, -1):
        right_set.add(s[i])
        right[i] = len(right_set)

    for i in range(len(s) - 1):
        if left[i] == right[i + 1]:
            count += 1

    return count




### Unit tests below ###
def check(candidate):
	assert candidate("aaaa"
                 ) == 3
	assert candidate("abcd"
                 ) == 1
	assert candidate(
    "acaba"
) == 2
	assert candidate("aacaba"
                 ) == 2
	assert candidate("aaaaa") == 4
	assert candidate(
    "acaca"
) == 2, "This is because ['aca', 'aca'], ['a', 'caca'] are valid splits."
	assert candidate("abbbbb") == 1
	assert candidate("aacaba") == 2
	assert candidate(
    "acabacab") == 2, "String with all the same letters can be split into 2 good splits"
	assert candidate("abcd") == 1
	assert candidate(
    "abcdefghijklmnopqrstuvwxy"
) == 0
	assert candidate("aaaabbbb") == 1
	assert candidate("a") == 0
	assert candidate("ab") == 1
def test_check():
	check(numSplits)
# Metadata Difficulty: Medium
# Metadata Topics: string,dynamic-programming,bit-manipulation
# Metadata Coverage: 100
