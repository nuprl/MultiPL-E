def make_fancy_string(s: str) -> str:
    """
    A fancy string is a string where no three consecutive characters are equal.
    Given a string s, delete the minimum possible number of characters from s to make it fancy.
    Return the final string after the deletion. It can be shown that the answer will always be unique.
 
    Example 1:

    Input: s = "leeetcode"
    Output: "leetcode"
    Explanation:
    Remove an 'e' from the first group of 'e's to create "leetcode".
    No three consecutive characters are equal, so return "leetcode".

    Example 2:

    Input: s = "aaabaaaa"
    Output: "aabaa"
    Explanation:
    Remove an 'a' from the first group of 'a's to create "aabaaaa".
    Remove two 'a's from the second group of 'a's to create "aabaa".
    No three consecutive characters are equal, so return "aabaa".

    Example 3:

    Input: s = "aab"
    Output: "aab"
    Explanation: No three consecutive characters are equal, so return "aab".

 
    Constraints:

    1 <= s.length <= 105
    s consists only of lowercase English letters.

    """
    ### Canonical solution below ###
    result = [s[0]]
    count = 1

    for i in range(1, len(s)):
        if s[i] == s[i - 1]:
            count += 1
        else:
            count = 1
        if count < 3:
            result.append(s[i])

    return ''.join(result)




### Unit tests below ###
def check(candidate):
	assert candidate("abcdddddef") == "abcddef"
	assert candidate("x") == "x"
	assert candidate("c") == "c"
	assert candidate("aabbbc") == "aabbc"
	assert candidate("aabb") == "aabb", "No characters are removed."
	assert candidate("aaabaaaa") == "aabaa"
	assert candidate(
    "aaabaaaa") == "aabaa", "Expected 'aabaa', got '" + candidate("aaabaaaa") + "'"
	assert candidate(
    "aab"
) == "aab"
	assert candidate(
    "aaabaaaa"
) == "aabaa"
	assert candidate("abc") == "abc"
	assert candidate("abcd") == "abcd"
	assert candidate(
    "aaabaaaa"
) == "aabaa", "The first, second, and third groups should all be deleted, leaving just a single 'a'."
	assert candidate("aa") == "aa"
	assert candidate("aabbaaa") == "aabbaa"
	assert candidate("abaaaa") == "abaa", "The last group of 'a's should be removed."
	assert candidate("aabbcc") == "aabbcc"
	assert candidate("leeeeeetcode") == "leetcode"
	assert candidate("ba") == "ba", "There are no characters that appear three times consecutively."
def test_check():
	check(make_fancy_string)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
