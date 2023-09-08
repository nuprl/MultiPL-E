def mergeAlternately(word1: str, word2: str) -> str:
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
    result = []
    i, j = 0, 0
    while i < len(word1) and j < len(word2):
        result.append(word1[i])
        result.append(word2[j])
        i += 1
        j += 1
    result += word1[i:]
    result += word2[j:]
    return "".join(result)




### Unit tests below ###
def check(candidate):
	assert candidate("abc", "pqr") == "apbqcr"
	assert candidate("", "pqrs") == "pqrs"
	assert candidate("rst", "uvw") == "rusvtw"
	assert candidate("uvwxy", "z") == "uzvwxy"
	assert candidate("abc", "") == "abc"
	assert candidate("def", "ghi") == "dgehfi"
	assert candidate(
    "q", "xy") == "qxy"
	assert candidate("abc", "pq") == "apbqc"
	assert candidate("yz", "abc") == "yazbc"
	assert candidate(
    "abcd", "pq"
) == "apbqcd"
	assert candidate(
    "c", "xqas") == "cxqas"
	assert candidate("", "p") == "p"
	assert candidate("ab", "") == "ab"
	assert candidate("abcd", "") == "abcd"
	assert candidate("abcd", "pq") == "apbqcd"
	assert candidate("abcd", "efgh") == "aebfcgdh"
	assert candidate("a", "p") == "ap"
	assert candidate("ab", "pqrs") == "apbqrs"
	assert candidate("", "pqrstuv") == "pqrstuv"
	assert candidate("ab", "pqr") == "apbqr"
	assert candidate("", "pqr") == "pqr"
	assert candidate("g", "hijkl") == "ghijkl"
	assert candidate("ab", "pq") == "apbq"
	assert candidate("", "") == ""
def test_check():
	check(mergeAlternately)
# Metadata Difficulty: Easy
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100
