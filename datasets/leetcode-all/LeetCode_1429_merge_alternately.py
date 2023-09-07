def merge_alternately(word1: str, word2: str) -> str:
    """
    You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.
    Return the merged string.
 
    Example 1:

    Input: word1 = "abc", word2 = "pqr"
    Output: "apbqcr"
    Explanation: The merged string will be merged as so:
    word1:  a   b   c
    word2:    p   q   r
    merged: a p b q c r

    Example 2:

    Input: word1 = "ab", word2 = "pqrs"
    Output: "apbqrs"
    Explanation: Notice that as word2 is longer, "rs" is appended to the end.
    word1:  a   b 
    word2:    p   q   r   s
    merged: a p b q   r   s

    Example 3:

    Input: word1 = "abcd", word2 = "pq"
    Output: "apbqcd"
    Explanation: Notice that as word1 is longer, "cd" is appended to the end.
    word1:  a   b   c   d
    word2:    p   q 
    merged: a p b q c   d

 
    Constraints:

    1 <= word1.length, word2.length <= 100
    word1 and word2 consist of lowercase English letters.
    """
    ### Canonical solution below ###
    merged = []
    i, j = 0, 0
    while i < len(word1) or j < len(word2):
        if i < len(word1):
            merged.append(word1[i])
            i += 1
        if j < len(word2):
            merged.append(word2[j])
            j += 1
    return "".join(merged)




### Unit tests below ###
def check(candidate):
	assert candidate("123", "") == "123"
	assert candidate("abcd", "efgh") == "aebfcgdh"
	assert candidate("abcd", "") == "abcd"
	assert candidate("123", "abcd") == "1a2b3cd"
	assert candidate("ab", "d") == "adb"
	assert candidate("1234", "56") == "152634"
	assert candidate("1", "abc") == "1abc"
	assert candidate("abc", "de") == "adbec"
	assert candidate("1", "abcdef") == "1abcdef"
	assert candidate("ab", "12345") == "a1b2345"
	assert candidate("", "def") == "def"
	assert candidate("12345", "abcd") == "1a2b3c4d5"
	assert candidate("abc", "123") == "a1b2c3"
	assert candidate("ab", "12") == "a1b2"
	assert candidate("1234", "abc") == "1a2b3c4"
	assert candidate("12", "abcdefghijklm") == "1a2bcdefghijklm"
	assert candidate("12", "abcd") == "1a2bcd"
	assert candidate("12", "34") == "1324"
	assert candidate("abc", "1234") == "a1b2c34"
	assert candidate("12", "ab") == "1a2b"
	assert candidate("123", "efg") == "1e2f3g"
	assert candidate("a", "def") == "adef"
	assert candidate("123", "abc") == "1a2b3c"
	assert candidate("abcde", "12") == "a1b2cde"
	assert candidate("123", "ef") == "1e2f3"
	assert candidate("123456", "ab") == "1a2b3456"
	assert candidate("123", "456") == "142536"
	assert candidate("abcd", "1") == "a1bcd"
	assert candidate("ab", "1234") == "a1b234"
	assert candidate("1", "abcd") == "1abcd"
	assert candidate("1234", "5678") == "15263748"
	assert candidate("ab", "123") == "a1b23"
	assert candidate("abcd", "123") == "a1b2c3d"
	assert candidate("1234", "56789") == "152637489"
	assert candidate("abcd", "1234") == "a1b2c3d4"
	assert candidate("123", "ab") == "1a2b3"
	assert candidate("abcd", "123456") == "a1b2c3d456"
	assert candidate("abcd", "e") == "aebcd"
	assert candidate("abcd", "12345") == "a1b2c3d45"
	assert candidate("abcd", "efg") == "aebfcgd"
	assert candidate("abcd", "12") == "a1b2cd"
	assert candidate("abcde", "123456") == "a1b2c3d4e56"
	assert candidate("abc", "") == "abc"
	assert candidate("1", "ab") == "1ab"
	assert candidate("abcd", "efghijkl") == "aebfcgdhijkl"
	assert candidate("", "") == ""
	assert candidate("ab", "ef") == "aebf"
	assert candidate("123", "def") == "1d2e3f"
	assert candidate("abc", "def") == "adbecf"
	assert candidate("", "abcd") == "abcd"
	assert candidate("123", "abcdef") == "1a2b3cdef"
	assert candidate("ab", "1") == "a1b"
	assert candidate("abc", "efghi") == "aebfcghi"
	assert candidate("1234", "567") == "1526374"
	assert candidate("abcde", "12345") == "a1b2c3d4e5"
	assert candidate("abcde", "123") == "a1b2c3de"
	assert candidate("abcd", "123efgh") == "a1b2c3defgh"
def test_check():
	check(merge_alternately)
# Metadata Difficulty: Easy
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100
