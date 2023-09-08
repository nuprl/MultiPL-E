def is_anagram(s: str, t: str) -> bool:
    """
    Given two strings s and t, return true if t is an anagram of s, and false otherwise.
    An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
 
    Example 1:
    Input: s = "anagram", t = "nagaram"
    Output: true
    Example 2:
    Input: s = "rat", t = "car"
    Output: false

 
    Constraints:

    1 <= s.length, t.length <= 5 * 104
    s and t consist of lowercase English letters.

 
    Follow up: What if the inputs contain Unicode characters? How would you adapt your solution to such a case?
    """
    ### Canonical solution below ###
    if len(s) != len(t):
        return False

    counts = {}
    for c in s:
        if c in counts:
            counts[c] += 1
        else:
            counts[c] = 1

    for c in t:
        if c not in counts or counts[c] == 0:
            return False
        counts[c] -= 1

    return True




### Unit tests below ###
def check(candidate):
	assert candidate("ab", "aab") == False
	assert candidate("aaaaaaaaaaaaaaa", "aaaaaaaaaaaaaaa") == True
	assert candidate("abcd", "badc") == True
	assert candidate("test", "") == False
	assert candidate("abcd", "dbca") == True
	assert candidate(
    "abcd", "dcba") == True
	assert candidate("pythonista", "pythonistb") == False
	assert candidate("listen", "silent") == True
	assert candidate("rat", "car") == False
	assert candidate("galea", "protein") == False
	assert candidate("aad", "daa") == True
	assert candidate("test", "ttst") == False
	assert candidate("ab", "ab") == True
	assert candidate("abcde", "edcba") == True
	assert candidate(
    "abababababababababababababababababababababababababababababababababababababababa",
    "aabb",
) == False
	assert candidate("test", "estt") == True
	assert candidate("aaaaaaaaaaaaaaa", "aaaaaaaaaaaaaa") == False
	assert candidate("python", "python") == True
	assert candidate("test", "ttse") == True
	assert candidate("test", "sett") == True
	assert candidate("aab", "bba") == False
	assert candidate(
    "abababababbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
    "baababababbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbba",
) == False
	assert candidate("rat", "tar") == True
	assert candidate("a", "a") == True
	assert candidate("abcd", "bacd") == True
	assert candidate(
    "galea", "protein") == False
	assert candidate(
    "abababababababababababababababababababababababababababababababababababababababa",
    "aa",
) == False
	assert candidate("aad", "add") == False
	assert candidate("aab", "baa") == True
	assert candidate("", "") == True
	assert candidate("abcdefghijklmnop", "abcdefghijklmnop") == True
	assert candidate("aabb", "bbaa") == True
	assert candidate("aab", "abb") == False
	assert candidate("ab", "a") == False
	assert candidate("test", "tste") == True
	assert candidate("aad", "aad") == True
	assert candidate("elvis", "lives") == True
	assert candidate("python", "typhon") == True
	assert candidate("ab", "bb") == False
	assert candidate("aab", "aba") == True
	assert candidate("abc", "abcd") == False
	assert candidate("test", "tset") == True
	assert candidate("anagram", "nagaram") == True
	assert candidate("ab", "b") == False
	assert candidate("car", "ra") == False
	assert candidate("test", "test") == True
	assert candidate("ab", "ba") == True
	assert candidate(
    "abcd", "dbca") == True
	assert candidate("a", "b") == False
	assert candidate("test", "tess") == False
	assert candidate("hello", "world") == False
	assert candidate("abcd", "abcd") == True
	assert candidate("bacdc", "cbadc") == True
	assert candidate("test", "tets") == True
	assert candidate("test", "tost") == False
	assert candidate("aaaaaaaaaaaaaaa", "aaaaaaaaaaaaaaaa") == False
	assert candidate("test", "est") == False
def test_check():
	check(is_anagram)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string,sorting
# Metadata Coverage: 100
