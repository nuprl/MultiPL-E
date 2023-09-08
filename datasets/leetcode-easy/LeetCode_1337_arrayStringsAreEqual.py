from typing import List


def arrayStringsAreEqual(word1: List[str], word2: List[str]) -> bool:
    """
    Given two string arrays word1 and word2, return true if the two arrays represent the same string, and false otherwise.
    A string is represented by an array if the array elements concatenated in order forms the string.
 
    Example 1:

    Input: word1 = ["ab", "c"], word2 = ["a", "bc"]
    Output: true
    Explanation:
    word1 represents string "ab" + "c" -> "abc"
    word2 represents string "a" + "bc" -> "abc"
    The strings are the same, so return true.
    Example 2:

    Input: word1 = ["a", "cb"], word2 = ["ab", "c"]
    Output: false

    Example 3:

    Input: word1  = ["abc", "d", "defg"], word2 = ["abcddefg"]
    Output: true

 
    Constraints:

    1 <= word1.length, word2.length <= 103
    1 <= word1[i].length, word2[i].length <= 103
    1 <= sum(word1[i].length), sum(word2[i].length) <= 103
    word1[i] and word2[i] consist of lowercase letters.

    """
    ### Canonical solution below ###
    return "".join(word1) == "".join(word2)




### Unit tests below ###
def check(candidate):
	assert candidate(["abc", "defg"], ["abcdef"]) == False
	assert candidate(["abc", "def"], ["abcdef"]) == True
	assert candidate(["abcdef"], ["abc", "def"]) == True
	assert candidate(["abcde"], ["abcd", "e"]) == True
	assert candidate(["abcd", "ef"], ["abcdef"]) == True
	assert candidate(["", "abc", "def"], ["abcdef"]) == True
	assert candidate(["a", "b", "c", "d", "e", "f"], ["abcdef"]) == True
	assert candidate(["ab", "cd", "ef"], ["abcdef"]) == True
	assert candidate(["abcde"], ["a", "bcde"]) == True
	assert candidate(["abcd", "e"], ["abcde"]) == True
	assert candidate(["a", "b", "cdef"], ["abcdef"]) == True
	assert candidate(["ab", "c"], ["a", "bc"]) == True
	assert candidate(["abcd", ""], ["abcdef"]) == False
	assert candidate(["abcddefg"], ["ab", "c", "def"]) == False
	assert candidate(["a", "b", "c", "d", "e"], ["a", "b", "c", "d", "e"]) == True
	assert candidate(["abc", "def", ""], ["abcdef"]) == True
	assert candidate(["abcd"], ["abcd"]) == True
	assert candidate(["a", "b", "cd"], ["abc"]) == False
	assert candidate(["a", "b", "c", "d"], ["a", "b", "c", "d"]) == True
	assert candidate(["abcd"], ["a", "b", "c", "d"]) == True
	assert candidate(["abc", "d", "def"], ["abcddefg"]) == False
	assert candidate(["abcd", "e"], ["abcd", "e"]) == True
	assert candidate(["a", "b", "c", "d"], ["abc"]) == False
	assert candidate(["abc", "d", "defg"], ["abcddefg"]) == True
	assert candidate(["abcddefg"], ["abcddefg"]) == True
	assert candidate(["abc", "", "def"], ["abcdef"]) == True
	assert candidate(["ab", "cde", "f"], ["abcdef"]) == True
	assert candidate(["ab", "cd"], ["abcd"]) == True
	assert candidate(["abc", "def"], ["a", "b", "c", "d", "e", "f"]) == True
	assert candidate(["abc", "d", "ef"], ["abcddefg"]) == False
	assert candidate(["", "a", "b", "c", "d", "e", "f"], ["abcdef"]) == True
	assert candidate(["abcdef"], ["abcdef"]) == True
	assert candidate(["abc", "def"], ["abc", "def"]) == True
	assert candidate(["abcd", "ef"], ["abcd", "ef"]) == True
	assert candidate(["abcd", "e"], ["a", "b", "c", "d", "e"]) == True
	assert candidate(["abcde"], ["abc", "de"]) == True
	assert candidate(["abcd", "efgh"], ["abcdefg"]) == False
	assert candidate(["a", "bcd"], ["a", "bcd"]) == True
	assert candidate(["a", "b", "c", "d", "e", "f"], ["a", "b", "c", "d", "e", "f"]) == True
	assert candidate(["abcde", "fg"], ["abcdefg"]) == True
	assert candidate(["ab", "cd", "ef"], ["a", "b", "c", "d", "e", "f"]) == True
	assert candidate(["a", "bcdef"], ["abcdef"]) == True
	assert candidate(["a", "b", "cde", "f"], ["a", "bcdefg"]) == False
	assert candidate(["abc", "def"], ["ab", "c", "def"]) == True
	assert candidate(["abc", "d", "ef"], ["abcdef"]) == True
	assert candidate(["a", "b", "c", "d"], ["abc", "d"]) == True
	assert candidate(["abc", "de", "f"], ["abcdef"]) == True
	assert candidate(["ab", "cd", "ef"], ["abcddefg"]) == False
	assert candidate(["ab", "c", "def"], ["abcdef"]) == True
	assert candidate(["abc", "d"], ["a", "b", "c", "d"]) == True
	assert candidate(["ab", "cd", "ef"], ["abcd", "ef"]) == True
	assert candidate(["abc", "def"], ["abcdefg"]) == False
	assert candidate(["abcdefg"], ["abcdefg"]) == True
def test_check():
	check(arrayStringsAreEqual)
# Metadata Difficulty: Easy
# Metadata Topics: array,string
# Metadata Coverage: 100
