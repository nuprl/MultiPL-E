def isScramble(s1: str, s2: str) -> bool:
    """
    We can scramble a string s to get a string t using the following algorithm:

    If the length of the string is 1, stop.
    If the length of the string is > 1, do the following:

    Split the string into two non-empty substrings at a random index, i.e., if the string is s, divide it to x and y where s = x + y.
    Randomly decide to swap the two substrings or to keep them in the same order. i.e., after this step, s may become s = x + y or s = y + x.
    Apply step 1 recursively on each of the two substrings x and y.



    Given two strings s1 and s2 of the same length, return true if s2 is a scrambled string of s1, otherwise, return false.
 
    Example 1:

    Input: s1 = "great", s2 = "rgeat"
    Output: true
    Explanation: One possible scenario applied on s1 is:
    "great" --> "gr/eat" // divide at random index.
    "gr/eat" --> "gr/eat" // random decision is not to swap the two substrings and keep them in order.
    "gr/eat" --> "g/r / e/at" // apply the same algorithm recursively on both substrings. divide at random index each of them.
    "g/r / e/at" --> "r/g / e/at" // random decision was to swap the first substring and to keep the second substring in the same order.
    "r/g / e/at" --> "r/g / e/ a/t" // again apply the algorithm recursively, divide "at" to "a/t".
    "r/g / e/ a/t" --> "r/g / e/ a/t" // random decision is to keep both substrings in the same order.
    The algorithm stops now, and the result string is "rgeat" which is s2.
    As one possible scenario led s1 to be scrambled to s2, we return true.

    Example 2:

    Input: s1 = "abcde", s2 = "caebd"
    Output: false

    Example 3:

    Input: s1 = "a", s2 = "a"
    Output: true

 
    Constraints:

    s1.length == s2.length
    1 <= s1.length <= 30
    s1 and s2 consist of lowercase English letters.

    """
    ### Canonical solution below ###
    if s1 == s2:
        return True
    if len(s1) != len(s2) or sorted(s1) != sorted(s2):
        return False

    for i in range(1, len(s1)):
        if (isScramble(s1[:i], s2[:i]) and isScramble(s1[i:], s2[i:])) or \
           (isScramble(s1[:i], s2[-i:]) and isScramble(s1[i:], s2[:-i])):
            return True
    return False




### Unit tests below ###
def check(candidate):
	assert candidate("aaaa", "aaa") == False
	assert candidate("abcde", "ebcda") == True
	assert candidate("abb", "bba") == True
	assert candidate("web", "bwe") == True
	assert candidate("bac", "bca") == True
	assert candidate("datastructure", "tastructureda") == True
	assert candidate("rat", "tar") == True
	assert candidate("t", "t") == True
	assert candidate("asd", "dsa") == True
	assert candidate("abbc", "acbb") == True
	assert candidate("documentation", "entationdocum") == True
	assert candidate("aabbc", "aabc") == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", "zxywvutsrqponmlkjihgfedcba") == True
	assert candidate("language", "uagelagn") == True
	assert candidate("performance", "rmanceperfo") == True
	assert candidate("dbs", "sdb") == True
	assert candidate("", "a") == False
	assert candidate("algorithm", "gorithmal") == True
	assert candidate("ab", "ab") == True
	assert candidate("optimization", "izationoptim") == True
	assert candidate("abcd", "cbad") == True
	assert candidate("great", "rgeat") == True
	assert candidate("abcdefghij", "efghijcadb") == False
	assert candidate("javascript", "tjavascrip") == True
	assert candidate("abcde", "caebd") == False
	assert candidate("hello", "ohlel") == True
	assert candidate("internet", "terninet") == True
	assert candidate("anagram", "nagaram") == True
	assert candidate("tpg", "pgt") == True
	assert candidate("abc", "cba") == True
	assert candidate("integration", "grationinte") == True
	assert candidate("bcdefg", "fcbegda") == False
	assert candidate("testing", "gintest") == True
	assert candidate("tt", "ttt") == False
	assert candidate("aaa", "aab") == False
	assert candidate("asd", "das") == True
	assert candidate("database", "basedata") == True
	assert candidate("babb", "bbab") == True
	assert candidate("javascript", "riptjavasc") == True
	assert candidate("a", "b") == False
	assert candidate("a", "") == False
	assert candidate("computer", "putercom") == True
	assert candidate("xyxyxyzz", "xxyyzzzx") == False
	assert candidate("design", "sgined") == True
	assert candidate("physics", "fysicep") == False
	assert candidate("deployment", "mentdeploy") == True
	assert candidate("specification", "cationfispeci") == True
	assert candidate("bca", "bca") == True
	assert candidate("python", "ythonp") == True
	assert candidate("tt", "tt") == True
	assert candidate("aacde", "deeca") == False
	assert candidate("javascript", "jvascripted") == False
	assert candidate("security", "uritysec") == True
	assert candidate("maintenance", "enancemaint") == True
	assert candidate("implementation", "ationimplement") == True
	assert candidate("world", "rldwo") == True
	assert candidate("abcd", "abcd") == True
	assert candidate("tt", "t") == False
	assert candidate("debugging", "uggingdeb") == True
	assert candidate("abcd", "dacb") == True
	assert candidate("network", "worknet") == True
	assert candidate("a", "a") == True
	assert candidate("", "") == True
	assert candidate("banana", "ananab") == True
	assert candidate("asd", "dab") == False
	assert candidate("abcd", "badc") == True
	assert candidate("lk", "ll") == False
	assert candidate("javascript", "pseudojack") == False
	assert candidate("javascript", "javascript") == True
	assert candidate("abcd", "dcba") == True
	assert candidate("abcd", "abdc") == True
	assert candidate("programming", "mingprogram") == True
	assert candidate("visualization", "tionvisualiza") == True
	assert candidate("abcd", "cdba") == True
	assert candidate("ttt", "tt") == False
	assert candidate("asd", "ads") == True
	assert candidate("javascript", "javasript") == False
	assert candidate("abc", "ac") == False
	assert candidate("ab", "ba") == True
	assert candidate("development", "opmentdevel") == True
	assert candidate("abcdefg", "fbegcda") == False
	assert candidate("abcdd", "abddc") == True
def test_check():
	check(isScramble)
# Metadata Difficulty: Hard
# Metadata Topics: string,dynamic-programming
# Metadata Coverage: 100
