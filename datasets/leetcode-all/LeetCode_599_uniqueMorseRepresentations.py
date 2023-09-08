from typing import List


def uniqueMorseRepresentations(words: List[str]) -> int:
    """
    International Morse Code defines a standard encoding where each letter is mapped to a series of dots and dashes, as follows:

    'a' maps to ".-",
    'b' maps to "-...",
    'c' maps to "-.-.", and so on.

    For convenience, the full table for the 26 letters of the English alphabet is given below:

    [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    Given an array of strings words where each word can be written as a concatenation of the Morse code of each letter.

    For example, "cab" can be written as "-.-..--...", which is the concatenation of "-.-.", ".-", and "-...". We will call such a concatenation the transformation of a word.

    Return the number of different transformations among all words we have.
 
    Example 1:

    Input: words = ["gin","zen","gig","msg"]
    Output: 2
    Explanation: The transformation of each word is:
    "gin" -> "--...-."
    "zen" -> "--...-."
    "gig" -> "--...--."
    "msg" -> "--...--."
    There are 2 different transformations: "--...-." and "--...--.".

    Example 2:

    Input: words = ["a"]
    Output: 1

 
    Constraints:

    1 <= words.length <= 100
    1 <= words[i].length <= 12
    words[i] consists of lowercase English letters.

    """
    ### Canonical solution below ###
    morse = [".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--.."]
    transformations = set()

    for word in words:
        morseCode = ''.join(morse[ord(c) - ord('a')] for c in word)
        transformations.add(morseCode)

    return len(transformations)




### Unit tests below ###
def check(candidate):
	assert candidate(["hello", "world"]) == 2
	assert candidate(["python", "python"]) == 1
	assert candidate(["abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"]) == 1
	assert candidate(["a", "ab", "abc", "abcd", "abcde", "abcdef", "abcdefg", "abcdefgh", "abcdefghi", "abcdefghij"]) == 10
	assert candidate(["abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz"]) == 1
	assert candidate(["abc", "def", "ghi", "jkl", "mno", "pqr", "stu", "vwx", "yz"]) == 9
	assert candidate([]) == 0
	assert candidate(["abcdefghijklmnopqrstuvwxyz"]) == 1
	assert candidate(["abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc", "abc"]) == 1
	assert candidate(["gin", "zen", "gig", "msg"]) == 2
	assert candidate(["x", "y", "z"]) == 3
	assert candidate(["a", "aa", "aaa", "aaaa", "aaaaa", "aaaaaa", "aaaaaaa", "aaaaaaaa", "aaaaaaaaa", "aaaaaaaaaa"]) == 10
	assert candidate(["aaa", "bbb", "ccc", "ddd", "eee", "fff", "ggg", "hhh", "iii", "jjj", "kkk", "lll", "mmm", "nnn", "ooo", "ppp", "qqq", "rrr", "sss", "ttt", "uuu", "vvv", "www", "xxx", "yyy", "zzz"]) == 26
	assert candidate(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]) == 26
def test_check():
	check(uniqueMorseRepresentations)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,string
# Metadata Coverage: 100
