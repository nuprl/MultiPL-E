def repeat_limited_string(s: str, repeat_limit: int) -> str:
    """
    You are given a string s and an integer repeatLimit. Construct a new string repeatLimitedString using the characters of s such that no letter appears more than repeatLimit times in a row. You do not have to use all characters from s.
    Return the lexicographically largest repeatLimitedString possible.
    A string a is lexicographically larger than a string b if in the first position where a and b differ, string a has a letter that appears later in the alphabet than the corresponding letter in b. If the first min(a.length, b.length) characters do not differ, then the longer string is the lexicographically larger one.
 
    Example 1:

    Input: s = "cczazcc", repeatLimit = 3
    Output: "zzcccac"
    Explanation: We use all of the characters from s to construct the repeatLimitedString "zzcccac".
    The letter 'a' appears at most 1 time in a row.
    The letter 'c' appears at most 3 times in a row.
    The letter 'z' appears at most 2 times in a row.
    Hence, no letter appears more than repeatLimit times in a row and the string is a valid repeatLimitedString.
    The string is the lexicographically largest repeatLimitedString possible so we return "zzcccac".
    Note that the string "zzcccca" is lexicographically larger but the letter 'c' appears more than 3 times in a row, so it is not a valid repeatLimitedString.

    Example 2:

    Input: s = "aababab", repeatLimit = 2
    Output: "bbabaa"
    Explanation: We use only some of the characters from s to construct the repeatLimitedString "bbabaa". 
    The letter 'a' appears at most 2 times in a row.
    The letter 'b' appears at most 2 times in a row.
    Hence, no letter appears more than repeatLimit times in a row and the string is a valid repeatLimitedString.
    The string is the lexicographically largest repeatLimitedString possible so we return "bbabaa".
    Note that the string "bbabaaa" is lexicographically larger but the letter 'a' appears more than 2 times in a row, so it is not a valid repeatLimitedString.

 
    Constraints:

    1 <= repeatLimit <= s.length <= 105
    s consists of lowercase English letters.

    """
    ### Canonical solution below ###
    result = []
    sorted_s = sorted(s, reverse=True)

    for c in sorted_s:
        pos = result.count(c)

        if pos < repeat_limit:
            result.insert(pos, c)

    return "".join(result)




### Unit tests below ###
def check(candidate):
	assert candidate("aabababbbbbbbbbbbbbbbbbbbbbbababab", 1) == "ab"
	assert candidate("a", 1) == "a"
	assert candidate("ababab", 1) == "ab"
	assert candidate("a", 0) == ""
	assert candidate("aaabbbccc", 2) == "aabbcc"
	assert candidate("aaabbbccc", 3) == "aaabbbccc"
	assert candidate("ccccc", 5) == "ccccc"
	assert candidate(
    "aaaaaaaaaaaaaa", 5) == "aaaaa"
	assert candidate("aaabbbcccddd", 3) == "aaabbbcccddd"
	assert candidate("aabbccdd", 2) == "aabbccdd"
	assert candidate("aaa", 1) == "a"
	assert candidate("aa", 1) == "a"
	assert candidate("c", 3) == "c"
	assert candidate("ss", 2) == "ss"
	assert candidate("bbbb", 0) == ""
	assert candidate("bbbb", 6) == "bbbb"
	assert candidate("ccccc", 1) == "c"
	assert candidate(
    "zzzzzzzzzzzzzzzzzzzzzzzzzz", 3) == "zzz"
	assert candidate("s", 2) == "s"
	assert candidate("bbbb", 7) == "bbbb"
	assert candidate("sss", 2) == "ss"
	assert candidate("zzzzzzzzzzzzzzzzzz", 3) == "zzz"
	assert candidate("", 5) == ""
	assert candidate("aaabbbccc", 4) == "aaabbbccc"
	assert candidate("bbbb", 1) == "b"
	assert candidate("ccc", 3) == "ccc"
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", 1) == "a"
	assert candidate("aaabbbccccdddd", 1) == "abcd"
	assert candidate("bbbb", 3) == "bbb"
	assert candidate("abc", 0) == ""
	assert candidate("zzzzzzzzzzzzzzzzzzzzzzzzzz", 1) == "z"
	assert candidate("bbbb", 5) == "bbbb"
	assert candidate("aabbaabb", 1) == "ab"
	assert candidate(
    "aaaaaaaaaaaaaa", 1) == "a"
	assert candidate("bbbb", 4) == "bbbb"
def test_check():
	check(repeat_limited_string)
# Metadata Difficulty: Medium
# Metadata Topics: string,greedy,heap-priority-queue,counting
# Metadata Coverage: 100
