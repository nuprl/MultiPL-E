def decodeString(s: str) -> str:
    """
    Given an encoded string, return its decoded string.
    The encoding rule is: k[encoded_string], where the encoded_string inside the square brackets is being repeated exactly k times. Note that k is guaranteed to be a positive integer.
    You may assume that the input string is always valid; there are no extra white spaces, square brackets are well-formed, etc. Furthermore, you may assume that the original data does not contain any digits and that digits are only for those repeat numbers, k. For example, there will not be input like 3a or 2[4].
    The test cases are generated so that the length of the output will never exceed 105.
 
    Example 1:

    Input: s = "3[a]2[bc]"
    Output: "aaabcbc"

    Example 2:

    Input: s = "3[a2[c]]"
    Output: "accaccacc"

    Example 3:

    Input: s = "2[abc]3[cd]ef"
    Output: "abcabccdcdcdef"

 
    Constraints:

    1 <= s.length <= 30
    s consists of lowercase English letters, digits, and square brackets '[]'.
    s is guaranteed to be a valid input.
    All the integers in s are in the range [1, 300].

    """
    ### Canonical solution below ###
    counts = []
    results = []
    current = ""
    ptr = 0

    while ptr < len(s):
        if s[ptr].isdigit():
            count = 0
            while s[ptr].isdigit():
                count = count * 10 + int(s[ptr])
                ptr += 1
            counts.append(count)
        elif s[ptr] == '[':
            results.append(current)
            current = ""
            ptr += 1
        elif s[ptr] == ']':
            prev = results.pop()
            count = counts.pop()
            current = prev + current * count
            ptr += 1
        else:
            current += s[ptr]
            ptr += 1

    return current




### Unit tests below ###
def check(candidate):
	assert candidate("3[t2[u]]") == "tuutuutuu"
	assert candidate("2[3[j]]") == "jjjjjj"
	assert candidate("2[2[a]]") == "aaaa"
	assert candidate("2[3[o]]") == "oooooo"
	assert candidate("1[n1[o]e0[a]]") == "noe"
	assert candidate("1[m2[n]]") == "mnn"
	assert candidate("3[m2[l]]") == "mllmllmll"
	assert candidate("2[3[a]]") == "aaaaaa"
	assert candidate("100[1[b]]") == "b" * 100
	assert candidate("2[x3[y]z]") == "xyyyzxyyyz"
	assert candidate("3[2[a]]") == "aaaaaa"
	assert candidate("3[a]2[bc]") == "aaabcbc"
	assert candidate("3[z2[v]]") == "zvvzvvzvv"
	assert candidate("3[v2[w]]") == "vwwvwwvww"
	assert candidate("1[a]") == "a"
	assert candidate("1[a2[b]]") == "abb"
	assert candidate("2[abc]3[cd]ef") == "abcabccdcdcdef"
	assert candidate("2[r3[s]t]") == "rssstrssst"
	assert candidate("3[a2[c]]") == "accaccacc"
def test_check():
	check(decodeString)
# Metadata Difficulty: Medium
# Metadata Topics: string,stack,recursion
# Metadata Coverage: 100
