from typing import Union, List


def can_construct(ransom_note: Union[List[str], str], magazine: Union[List[str], str]) -> bool:
    """
    Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.
    Each letter in magazine can only be used once in ransomNote.
 
    Example 1:
    Input: ransomNote = "a", magazine = "b"
    Output: false
    Example 2:
    Input: ransomNote = "aa", magazine = "ab"
    Output: false
    Example 3:
    Input: ransomNote = "aa", magazine = "aab"
    Output: true

 
    Constraints:

    1 <= ransomNote.length, magazine.length <= 105
    ransomNote and magazine consist of lowercase English letters.

    """
    ### Canonical solution below ###
    letter_count = {}

    for c in magazine:
        letter_count[c] = letter_count.get(c, 0) + 1

    for c in ransom_note:
        if c not in letter_count or letter_count[c] == 0:
            return False
        letter_count[c] -= 1

    return True




### Unit tests below ###
def check(candidate):
	assert candidate("ababababab", "bababababa") == True
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("ab"*52, "ba"*52) == True
	assert candidate("aa", "a") == False
	assert candidate(["a"], ["a"]) == True
	assert candidate("aaabbb", "baababb") == True
	assert candidate("abcde", "aabcde") == True
	assert candidate("a"*52+"b"*52, "c"*104) == False
	assert candidate(["a"], ["a" , "b"]) == True
	assert candidate("abc", "cba") == True
	assert candidate("ab"*52+"c", "c"+"ba"*52) == True
	assert candidate("abc"*35, "bca"*35) == True
	assert candidate("abc"*35, "cba"*35) == True
	assert candidate("a"*1, "a"*105) == True
	assert candidate("ab", "ba") == True
	assert candidate("abc", "acb") == True
	assert candidate("a"*52+"b"*52, "b"*52+"a"*51) == False
	assert candidate(["a"], ["b"]) == False
	assert candidate("abcde", "edcb") == False
	assert candidate("a"*105, "a"*105) == True
	assert candidate("aaa", "aaaa") == True
	assert candidate("a", "") == False
	assert candidate("baaaa", "abbbb") == False
	assert candidate("aaaaaaaaaaaaaaab", "aaaaaaaaaaaaaaa") == False
	assert candidate("abcde", "edcba") == True
	assert candidate("abbbb", "baaaa") == False
	assert candidate("abc"*35, "cba"*34) == False
	assert candidate("aa", "ab") == False
	assert candidate("abc", "abcdef") == True
	assert candidate("abcabcabcabcabc", "abcabcabcabcabc") == True
	assert candidate("aa", "aa") == True
	assert candidate("bababababa", "ababababab") == True
	assert candidate("a"*105, "a"*104) == False
	assert candidate("abcdef", "fabcde") == True
	assert candidate("a"*105, "a"*104+"b") == False
	assert candidate("abc"*35, "def"*35) == False
	assert candidate("bbbbbaaaaa", "aaabbbbbaaaaaabbbbaa") == True
	assert candidate("aaaaaaaaaaaaaaa", "aaaaaaaaaaaaaaa") == True
	assert candidate("aaa", "aa") == False
	assert candidate(
    "ababababababababababababababababababababa"*5,
    "ababababababababababababababababababababa"*4+"ba",
) == False
	assert candidate("a"*52+"b"*52, "b"*52+"a"*52) == True
	assert candidate("abcde", "baaaed") == False
	assert candidate("abcdef", "aabcdef") == True
	assert candidate("aaaaaaaaaaaaaab", "aaaaaaaaaaaaaaa") == False
	assert candidate("aaaaa", "aaa") == False
	assert candidate("abc"*35, "abc"*34+"abd") == False
	assert candidate("a"*52+"b"*52, "a"*103) == False
	assert candidate("aa"*52+"b"*52, "a"*51+"b"*51) == False
	assert candidate(["a", "b", "a"], ["a", "a", "b"]) == True
	assert candidate("aaaaaaaaaaaaaaa", "aaaaaaaaaaaaaa") == False
	assert candidate("a", "b") == False
	assert candidate("abc", "def") == False
	assert candidate("abcabcabcabcabcd", "abcabcabcabcabc") == False
	assert candidate("a", "a") == True
	assert candidate("baaaab", "aaabb") == False
	assert candidate("abcde"*52, "abcde"*52) == True
	assert candidate("ab"*52, "ba"*51) == False
	assert candidate("a"*52+"b", "a"*52+"b") == True
	assert candidate("abcdef", "abcdef") == True
	assert candidate("aaa", "ababab") == True
	assert candidate("abc", "cba"*35) == True
	assert candidate("ab", "aa") == False
	assert candidate("aa", "aab") == True
def test_check():
	check(can_construct)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string,counting
# Metadata Coverage: 100
