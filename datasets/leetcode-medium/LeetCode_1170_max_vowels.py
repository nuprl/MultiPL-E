def max_vowels(s: str, k: int) -> int:
    """
    Given a string s and an integer k, return the maximum number of vowel letters in any substring of s with length k.
    Vowel letters in English are 'a', 'e', 'i', 'o', and 'u'.
 
    Example 1:

    Input: s = "abciiidef", k = 3
    Output: 3
    Explanation: The substring "iii" contains 3 vowel letters.

    Example 2:

    Input: s = "aeiou", k = 2
    Output: 2
    Explanation: Any substring of length 2 contains 2 vowels.

    Example 3:

    Input: s = "leetcode", k = 3
    Output: 2
    Explanation: "lee", "eet" and "ode" contain 2 vowels.

 
    Constraints:

    1 <= s.length <= 105
    s consists of lowercase English letters.
    1 <= k <= s.length

    """
    ### Canonical solution below ###
    max_count = count = 0
    for i, c in enumerate(s):
        count += int(c in 'aeiou')
        if i >= k:
            count -= int(s[i - k] in 'aeiou')
        max_count = max(max_count, count)
    return max_count




### Unit tests below ###
def check(candidate):
	assert candidate(("aaaaeio"*100)[:-1], 50) == 50
	assert candidate("leetcode", 3) == 2
	assert candidate(("aeiou"*100)+"b", 100) == 100
	assert candidate("hello world", 5) == 2
	assert candidate("aeiou"*100, 0) == 0
	assert candidate("aaa"*100, 100) == 100
	assert candidate("bae", 2) == 2
	assert candidate("aeiou", 5) == 5
	assert candidate("aeiou"*100, 250) == 250
	assert candidate("a"*10000 + "aeiou"*5000, 10) == 10
	assert candidate("a", 1) == 1
	assert candidate("aeiouaeiouaeiou"*100, 15) == 15
	assert candidate("aeioubcdef", 5) == 5
	assert candidate("a"*5000 + "aeiou"*5000, 5) == 5
	assert candidate("aei"*100, 100) == 100
	assert candidate("aeiou"*100, 200) == 200
	assert candidate("abciiidef", 3) == 3
	assert candidate("bae", 3) == 2
	assert candidate(("a"*1000000)+"b"*100, 100) == 100
	assert candidate("aeiou"*100, 100) == 100
	assert candidate("bae"*100, 2) == 2
	assert candidate("aeiou"*100, 1) == 1
	assert candidate("aeiouaeiouaaeiouaeiou"*100, 100) == 100
	assert candidate("b"*100, 2) == 0
	assert candidate("a"*1000 + "aeiou"*5000 + "a", 10) == 10
	assert candidate("aeiou", 2) == 2
	assert candidate("xyzb", 3) == 0
	assert candidate("a"*100, 2) == 2
	assert candidate("aeioua"*100, 100) == 100
	assert candidate("aeiou"*100, 10) == 10
	assert candidate("ae", 1) == 1
	assert candidate("ae", 2) == 2
	assert candidate("aeiouaeiouaeiou"*100, 5) == 5
	assert candidate("a"*50, 20) == 20
	assert candidate("b"*100, 100) == 0
	assert candidate("b", 1) == 0
	assert candidate("aeiouaeiouaeiou"*100, 10) == 10
	assert candidate("a"*5000 + "aeiou"*5000 + "a"*5000, 10) == 10
	assert candidate("aaaaeio"*100, 50) == 50
	assert candidate("aei"*100, 10) == 10
	assert candidate(("aeiou"*100) + "xyz"*100, 100) == 100
	assert candidate("aeiou"*100, 500) == 500
	assert candidate("b"*100, 1) == 0
def test_check():
	check(max_vowels)
# Metadata Difficulty: Medium
# Metadata Topics: string,sliding-window
# Metadata Coverage: 100
