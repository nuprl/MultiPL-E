def gcd_of_strings(str1: str, str2: str) -> str:
    """
    For two strings s and t, we say "t divides s" if and only if s = t + ... + t (i.e., t is concatenated with itself one or more times).
    Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.
 
    Example 1:

    Input: str1 = "ABCABC", str2 = "ABC"
    Output: "ABC"

    Example 2:

    Input: str1 = "ABABAB", str2 = "ABAB"
    Output: "AB"

    Example 3:

    Input: str1 = "LEET", str2 = "CODE"
    Output: ""

 
    Constraints:

    1 <= str1.length, str2.length <= 1000
    str1 and str2 consist of English uppercase letters.

    """
    ### Canonical solution below ###
    if str1 + str2 != str2 + str1:
        return ''

    def gcd(a, b): return a if not b else gcd(b, a % b)
    return str1[:gcd(len(str1), len(str2))]




### Unit tests below ###
def check(candidate):
	assert candidate("A", "A") == "A"
	assert candidate("ABCABCABC", "ABC") == "ABC"
	assert candidate(
    "ABCABCABCABCABCABCABCABCABCABCABCABC", "ABCABCABCABCABCABCABCABCABCABC") == "ABCABC"
	assert candidate("ABABAB", "ABAB") == "AB"
	assert candidate("", "AAAAAAAAAAAAAAAAAA") == ""
	assert candidate("", "AAA") == ""
	assert candidate("A", "AAA") == "A"
	assert candidate("AAAA", "AA") == "AA"
	assert candidate("AAA", "A") == "A"
	assert candidate("ABC", "ABC") == "ABC"
	assert candidate("", "ABA") == ""
	assert candidate("ABABAB", "AB") == "AB"
	assert candidate("", "") == ""
	assert candidate(
    "ABCABCABCABCABCABCABCABCABCABCABC", "ABCABCABCABCABCABCABCABC") == "ABC"
	assert candidate("AAA", "AAA") == "AAA"
	assert candidate(
    "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
    "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
) == "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
	assert candidate("AAAAAAAAAAAABBBBBBBBBBBBBBCCCCCCCCCCCCCCC",
                      "AAAAAAAAAAAABBBBBBBBBBBBBBCCCCCCCCCCCCCCCABC") == ""
	assert candidate("ABCABC", "ABC") == "ABC"
	assert candidate(
    "AAAAAAAAAAAABBBBBBBBBBBBBBCCCCCCCCCCCCCCC", "AAAAAAAAAAAABBBBBBBBBBBBBBCCCCCCCCCCCCCCC") == "AAAAAAAAAAAABBBBBBBBBBBBBBCCCCCCCCCCCCCCC"
	assert candidate("", "A") == ""
	assert candidate("AAAAAAAAAAAAAAAAAA", "AAAAAAAAAAAAAAAAAA") == "AAAAAAAAAAAAAAAAAA"
	assert candidate("A", "B") == ""
	assert candidate(
    "ABCABCABCABCABCABCABCABCABCABCABCABC",
    "ABCCDD") == ""
	assert candidate("ABCABC", "ABCABC") == "ABCABC"
	assert candidate("LEET", "CODE") == ""
	assert candidate("ABCDEF", "ABC") == ""
	assert candidate("ABCD", "AB") == ""
	assert candidate(
    "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
    "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
) == "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
	assert candidate("AB", "B") == ""
def test_check():
	check(gcd_of_strings)
# Metadata Difficulty: Easy
# Metadata Topics: math,string
# Metadata Coverage: 100
