def canConvertString(s: str, t: str, k: int) -> bool:
    """
    Given two strings s and t, your goal is to convert s into t in k moves or less.
    During the ith (1 <= i <= k) move you can:

    Choose any index j (1-indexed) from s, such that 1 <= j <= s.length and j has not been chosen in any previous move, and shift the character at that index i times.
    Do nothing.

    Shifting a character means replacing it by the next letter in the alphabet (wrapping around so that 'z' becomes 'a'). Shifting a character by i means applying the shift operations i times.
    Remember that any index j can be picked at most once.
    Return true if it's possible to convert s into t in no more than k moves, otherwise return false.
 
    Example 1:

    Input: s = "input", t = "ouput", k = 9
    Output: true
    Explanation: In the 6th move, we shift 'i' 6 times to get 'o'. And in the 7th move we shift 'n' to get 'u'.

    Example 2:

    Input: s = "abc", t = "bcd", k = 10
    Output: false
    Explanation: We need to shift each character in s one time to convert it into t. We can shift 'a' to 'b' during the 1st move. However, there is no way to shift the other characters in the remaining moves to obtain t from s.

    Example 3:

    Input: s = "aab", t = "bbb", k = 27
    Output: true
    Explanation: In the 1st move, we shift the first 'a' 1 time to get 'b'. In the 27th move, we shift the second 'a' 27 times to get 'b'.

 
    Constraints:

    1 <= s.length, t.length <= 10^5
    0 <= k <= 10^9
    s, t contain only lowercase English letters.

    """
    ### Canonical solution below ###
    if len(s) != len(t):
        return False
    count = [0] * 26
    for i in range(len(s)):
        diff = (ord(t[i]) - ord(s[i]) + 26) % 26
        if diff > 0:
            count[diff] += 1
    for i in range(1, 26):
        if count[i] > 0:
            if count[i] * 26 - 26 + i > k:
                return False
    return True




### Unit tests below ###
def check(candidate):
	assert candidate("abc", "bcd", 10) == False
	assert candidate("aab", "bba", 4) == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", 250) == True
	assert candidate("abcd", "cbd", 3) == False
	assert candidate("abcd", "efgh", 7) == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", "abcd", 7) == False
	assert candidate("abcd", "cbd", 1) == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", "cdefghijklmnopqrstuvwxyzab", 10) == False
	assert candidate("abcd", "efgh", 10) == False
	assert candidate("ab", "cd", 5) == False
	assert candidate("abcde", "bcdef", 15) == False
	assert candidate("input", "ouput", 9) == True
	assert candidate("abcdefghijklmnopqrstuvwxyz", "bcdefghijklmnopqrstuvwxyza", 50) == False
	assert candidate("abcdefghijklmn", "aijklmnopqrstuvw", 200) == False
	assert candidate("abcdefghijklm", "pqrstuvwxzyab", 50) == False
	assert candidate("", "", 0) == True
	assert candidate("abcdefghijklmnopqrstuvwxyz", "bcdefghijklmnopqrstuvwxyza", 40) == False
	assert candidate("abcde", "bceh", 40) == False
	assert candidate("abcd", "cd", 0) == False
	assert candidate("abcdefghij", "efghijklmn", 13) == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", "bcdefghijklmnopqrstuvwxyza", 47) == False
	assert candidate("abcdefghijklmn", "qrstuvwxyzabcd", 30) == False
	assert candidate("aab", "bbb", 4) == False
	assert candidate("abcdefghijklmnopq", "qrstuvwxyzabcde", 10) == False
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaabc", "aaaaaaaaaaaaaaaaaaaaaaabc", 10) == True
	assert candidate("abcdefghijklmno", "pqrstuvwxzyab", 170) == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", "bcdefghijklmnopqrstuvwxyza", 48) == False
	assert candidate("abcd", "ebcd", 3) == False
	assert candidate("abcd", "cbd", 2) == False
	assert candidate("abcdefghijklmn", "abcdefghijklmn", 0) == True
	assert candidate("abcdefghijk", "lmnopqrstuv", 110) == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", "cdefghijklmnopqrstuvwxyzab", 1) == False
	assert candidate("abcdefghijklmnop", "qrstuvwxyzabcd", 30) == False
	assert candidate("abcdefghijklmnopq", "qrstuvwxyzabcdef", 10) == False
	assert candidate("abcd", "cdef", 1) == False
	assert candidate("abcdefghijklmnopqr", "pqrstuvwxyzabcdefghij", 200) == False
	assert candidate("abcdefghij", "klmnopqrst", 95) == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", "zyxwvutsrqponmlkjihgfedcba", 10000) == True
	assert candidate("abcdefgh", "ijklmnop", 65) == False
	assert candidate("abcdefghijklm", "nopqrstuvwxzy", 140) == False
	assert candidate("abcdefghijklmnopqrst", "pqrstuvwxyzabcdefghijk", 200) == False
	assert candidate("abcdefghijkl", "mnopqrstuvwx", 125) == False
	assert candidate("aab", "bbb", 27) == True
	assert candidate("abc", "bcd", 20) == False
	assert candidate("abcdefghij", "lmnopqrstuv", 2000) == False
	assert candidate("abcdefghijklmnop", "hijklmnopqrstuvwx", 85) == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", 0) == True
	assert candidate("abcdefghijklmn", "qrstuvwxyzabc", 345) == False
	assert candidate("abcdefg", "hijklmn", 50) == False
	assert candidate("abcdefghijkl", "ghijklmnopqr", 17) == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", "bcdefghijklmnopqrstuvwxyza", 45) == False
	assert candidate("abcdefghijklmnopqrstu", "pqrstuvwxyzabcdefghijk", 200) == False
	assert candidate("abcdefghijklmn", "opqrstuvwxzya", 155) == False
	assert candidate("abcdefghi", "jklmnopqr", 80) == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", "bcdefghijklmnopqrstuvwxyza", 49) == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", "cdefghijklmnopqrstuvwxyzab", 11) == False
	assert candidate("abcd", "efab", 1) == False
	assert candidate("abcd", "abcd", 0) == True
	assert candidate("abcdefghijklmnopqrstuvwxyz", "bcdefghijklmnopqrstuvwxyza", 46) == False
	assert candidate("abcd", "cbde", 1) == False
	assert candidate("abcdefghijklmnop", "aijklmnopqrstuvwxyz", 200) == False
	assert candidate("ab", "ba", 20) == False
	assert candidate("abc", "bcd", 1) == False
	assert candidate("abcd", "cdef", 3) == False
def test_check():
	check(canConvertString)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
