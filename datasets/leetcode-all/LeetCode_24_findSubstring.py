from typing import List


def findSubstring(s: str, words: List[str]) -> List[int]:
    """
    You are given a string s and an array of strings words. All the strings of words are of the same length.
    A concatenated substring in s is a substring that contains all the strings of any permutation of words concatenated.

    For example, if words = ["ab","cd","ef"], then "abcdef", "abefcd", "cdabef", "cdefab", "efabcd", and "efcdab" are all concatenated strings. "acdbef" is not a concatenated substring because it is not the concatenation of any permutation of words.

    Return the starting indices of all the concatenated substrings in s. You can return the answer in any order.
 
    Example 1:

    Input: s = "barfoothefoobarman", words = ["foo","bar"]
    Output: [0,9]
    Explanation: Since words.length == 2 and words[i].length == 3, the concatenated substring has to be of length 6.
    The substring starting at 0 is "barfoo". It is the concatenation of ["bar","foo"] which is a permutation of words.
    The substring starting at 9 is "foobar". It is the concatenation of ["foo","bar"] which is a permutation of words.
    The output order does not matter. Returning [9,0] is fine too.

    Example 2:

    Input: s = "wordgoodgoodgoodbestword", words = ["word","good","best","word"]
    Output: []
    Explanation: Since words.length == 4 and words[i].length == 4, the concatenated substring has to be of length 16.
    There is no substring of length 16 in s that is equal to the concatenation of any permutation of words.
    We return an empty array.

    Example 3:

    Input: s = "barfoofoobarthefoobarman", words = ["bar","foo","the"]
    Output: [6,9,12]
    Explanation: Since words.length == 3 and words[i].length == 3, the concatenated substring has to be of length 9.
    The substring starting at 6 is "foobarthe". It is the concatenation of ["foo","bar","the"] which is a permutation of words.
    The substring starting at 9 is "barthefoo". It is the concatenation of ["bar","the","foo"] which is a permutation of words.
    The substring starting at 12 is "thefoobar". It is the concatenation of ["the","foo","bar"] which is a permutation of words.

 
    Constraints:

    1 <= s.length <= 104
    1 <= words.length <= 5000
    1 <= words[i].length <= 30
    s and words[i] consist of lowercase English letters.

    """
    ### Canonical solution below ###
    from collections import Counter
    if not s or not words:
        return []

    word_count = Counter(words)
    word_length = len(words[0])
    total_words = len(words)
    total_length = word_length * total_words
    result = []

    for i in range(len(s) - total_length + 1):
        temp_word_count = Counter()
        for j in range(total_words):
            current_word = s[i + j * word_length:i + (j + 1) * word_length]
            if current_word not in word_count:
                break
            temp_word_count[current_word] += 1
            if temp_word_count[current_word] > word_count[current_word]:
                break
            if j + 1 == total_words:
                result.append(i)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate("abcd", ["ab", "cd", "ef"]) == []
	assert candidate("wordgoodgoodgoodbestword", ["word", "good", "best", "word", "good", "best", "word"]) == []
	assert candidate("abcdabdc", ["ab", "cd", "cd"]) == []
	assert candidate("", [""]) == []
	assert candidate("wordgoodgoodgoodbestword", []) == []
	assert candidate("a", ["a"]) == [0]
	assert candidate("", ["a"]) == []
	assert candidate("aaa", ["a", "b"]) == []
	assert candidate("lingmindraboofooowingdingbarrwingmonkeypoundcake", ["fooo", "barr", "wing", "ding", "wing"]) == [13]
	assert candidate("barfoofoobarthefoobarman", ["bar", "foo", "the"]) == [6, 9, 12]
	assert candidate("barfoothefoobarman", ["foo", "bar", "man"]) == [9]
	assert candidate("barfoofoobarthefoobarman", ["bar", "foo", "the", "man"]) == [12]
	assert candidate("a", ["b"]) == []
	assert candidate("wordgoodgoodgoodbestword", ["word", "good", "best", "word", "word"]) == []
	assert candidate("barfoothefoobarman", ["foo", "bar", "man", "foo"]) == []
	assert candidate("wordgoodgoodgoodbestword", ["word", "good", "best", "word", "good"]) == []
	assert candidate("foobarfoobar", ["foo", "bar"]) == [0, 3, 6]
	assert candidate("wordgoodgoodgoodbestword", ["word", "good", "best", "word"]) == []
	assert candidate("ababababab", ["a", "b", "a"]) == [0, 2, 4, 6]
	assert candidate("", ["a", "b", "c", "ab", "ac", "bc"]) == []
	assert candidate("aaa", ["a", "a", "a"]) == [0]
	assert candidate("", ["word", "good", "best", "word"]) == []
	assert candidate("aa", ["a", "a"]) == [0]
	assert candidate("wordgoodgoodgoodbestword", ["word", "good", "best", "best"]) == []
	assert candidate("barfoothefoobarman", ["foo", "bar"]) == [0, 9]
	assert candidate("aaa", ["a", "a", "a", "a"]) == []
	assert candidate("aa", ["aa"]) == [0]
def test_check():
	check(findSubstring)
# Metadata Difficulty: Hard
# Metadata Topics: hash-table,string,sliding-window
# Metadata Coverage: 100
