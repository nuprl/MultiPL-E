from typing import List


def longest_word(words: List[str]) -> str:
    """
    Given an array of strings words representing an English Dictionary, return the longest word in words that can be built one character at a time by other words in words.
    If there is more than one possible answer, return the longest word with the smallest lexicographical order. If there is no answer, return the empty string.
    Note that the word should be built from left to right with each additional character being added to the end of a previous word. 
 
    Example 1:

    Input: words = ["w","wo","wor","worl","world"]
    Output: "world"
    Explanation: The word "world" can be built one character at a time by "w", "wo", "wor", and "worl".

    Example 2:

    Input: words = ["a","banana","app","appl","ap","apply","apple"]
    Output: "apple"
    Explanation: Both "apply" and "apple" can be built from other words in the dictionary. However, "apple" is lexicographically smaller than "apply".

 
    Constraints:

    1 <= words.length <= 1000
    1 <= words[i].length <= 30
    words[i] consists of lowercase English letters.

    """
    ### Canonical solution below ###
    built_words = set()
    result = ''

    for word in sorted(words):
        if len(word) == 1 or word[:-1] in built_words:
            if len(word) > len(result):
                result = word
            built_words.add(word)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate(["w", "wc", "wcr", "wcs", "wcsn"]) == "wcsn"
	assert candidate(["s", "si", "sin", "sing", "singe"]) == "singe"
	assert candidate(["t", "ty", "tyt", "tyty", "tytyt"]) == "tytyt"
	assert candidate(["g", "gw", "gwr", "gwru", "gwrun"]) == "gwrun"
	assert candidate(["b", "be", "bet", "bett", "bette"]) == "bette"
	assert candidate(["h", "ha", "hap", "happ", "happy"]) == "happy"
	assert candidate(["c", "ca", "cap", "capl", "capli"]) == "capli"
	assert candidate(["o", "of", "off", "offe", "offeq"]) == "offeq"
	assert candidate(["t", "te", "ted", "tedr", "tedre", "tedref", "tedrefg"]) == "tedrefg"
	assert candidate(["w", "wo", "wor", "worl", "world"]) == "world"
	assert candidate(["t", "te", "tet", "tett", "tette"]) == "tette"
	assert candidate(["e", "ed", "edg", "edgd", "edgdx"]) == "edgdx"
	assert candidate(["x", "xy", "xyz", "xyza", "xyzab"]) == "xyzab"
	assert candidate(["t", "tt", "ttt", "tttt", "ttttt"]) == "ttttt"
	assert candidate(["h", "hi", "hid", "hide", "hider"]) == "hider"
	assert candidate(["v", "vu", "vux", "vuxy", "vuxyz"]) == "vuxyz"
	assert candidate(["n", "nc", "ncl", "nclu", "nclut"]) == "nclut"
	assert candidate(["b", "bl", "blu", "bluc", "blucs"]) == "blucs"
	assert candidate(["c", "cd", "cde", "cdef", "cdefe"]) == "cdefe"
	assert candidate(["c", "ca", "cap", "car", "card"]) == "card"
	assert candidate(["a", "ab", "abc", "abcd", "abcde", "abcdef"]) == "abcdef"
	assert candidate(["b", "bo", "bor", "bors", "borsh"]) == "borsh"
	assert candidate(["g", "go", "goo", "good", "goode"]) == "goode"
	assert candidate(["h", "he", "heb", "hebe", "heber"]) == "heber"
	assert candidate(["g", "gf", "gft", "gfto", "gftoc"]) == "gftoc"
	assert candidate(["b", "be", "bee", "beer", "bear"]) == "beer"
	assert candidate(["y", "ye", "yes", "yesi", "yesit"]) == "yesit"
	assert candidate(["l", "li", "lin", "link", "linke"]) == "linke"
	assert candidate(["x", "xz", "xzy", "xzyi", "xzyit"]) == "xzyit"
	assert candidate(["a", "an", "and", "ands", "andso"]) == "andso"
	assert candidate(["x", "xo", "xox", "xoxo", "xoxox"]) == "xoxox"
	assert candidate(["m", "mh", "mhi", "mhix", "mhixx"]) == "mhixx"
	assert candidate(["t", "te", "ted", "tedr", "tedre"]) == "tedre"
	assert candidate(["z", "zl", "zly", "zlyo", "zlyov"]) == "zlyov"
	assert candidate(["w", "wx", "wxy", "wxyz", "wxyzi"]) == "wxyzi"
	assert candidate(["m", "mo", "mon", "mond", "monda"]) == "monda"
	assert candidate(["a", "an", "ann", "anno", "annou"]) == "annou"
	assert candidate(["b", "ba", "bac", "bace", "baced"]) == "baced"
	assert candidate(["l", "lo", "low", "lowe", "lower"]) == "lower"
	assert candidate(["b", "ba", "bat", "bats", "batsy"]) == "batsy"
	assert candidate(["h", "ha", "haa", "haaa", "haaaa"]) == "haaaa"
	assert candidate(["v", "vp", "vpm", "vpma", "vpmap"]) == "vpmap"
	assert candidate(["t", "tc", "tca", "tcal", "tcall"]) == "tcall"
	assert candidate(["g", "gg", "gge", "gget", "ggets"]) == "ggets"
	assert candidate(["e", "ea", "eas", "easy", "easyl"]) == "easyl"
	assert candidate(["f", "fa", "fal", "fall", "falle"]) == "falle"
	assert candidate(["t", "ta", "tab", "tabs", "tabsy"]) == "tabsy"
	assert candidate(["b", "bb", "bbb", "bbbb", "bbbbb"]) == "bbbbb"
	assert candidate(["e", "ef", "eff", "effe", "effed"]) == "effed"
	assert candidate(["b", "bo", "bob", "bobs", "bobss"]) == "bobss"
	assert candidate(["m", "mm", "mmm", "mmmm", "mmmmm"]) == "mmmmm"
	assert candidate(["n", "na", "nac", "nace", "naced"]) == "naced"
	assert candidate(["a", "banana", "app", "appl", "ap", "apply", "apple"]) == "apple"
	assert candidate(["n", "nu", "nub", "nubs", "nubsy"]) == "nubsy"
	assert candidate(["c", "cu", "cuz", "cuzl", "cuzly"]) == "cuzly"
	assert candidate(["a", "ab", "abc", "abcd", "abcde", "abcdef", "abcdefg"]) == "abcdefg"
	assert candidate(["j", "jo", "jop", "jope", "jopez"]) == "jopez"
	assert candidate(["b", "bd", "bds", "bdsk", "bdskn"]) == "bdskn"
	assert candidate(["f", "fv", "fw", "fwt", "fwn"]) == "fwn"
	assert candidate(["w", "wv", "wvs", "wvss", "wvsss"]) == "wvsss"
	assert candidate(["r", "rc", "rca", "rcal", "rcale"]) == "rcale"
	assert candidate(["g", "go", "gol", "golf", "golfe"]) == "golfe"
	assert candidate(["a", "ab", "abc", "abcd", "abcde"]) == "abcde"
	assert candidate(["t", "ty", "tys", "tysk", "tyska"]) == "tyska"
	assert candidate(["z", "zy", "zyx", "zyxw", "zyxwv"]) == "zyxwv"
	assert candidate(["t", "te", "ted", "tedd", "tedde"]) == "tedde"
	assert candidate(["t", "te", "ted", "tedr", "tedre", "tedref", "tedrefg", "tedrefgu"]) == "tedrefgu"
def test_check():
	check(longest_word)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,string,trie,sorting
# Metadata Coverage: 100
