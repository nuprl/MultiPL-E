from typing import List


def word_subsets(words1: List[str], words2: List[str]) -> List[str]:
    """
    You are given two string arrays words1 and words2.
    A string b is a subset of string a if every letter in b occurs in a including multiplicity.

    For example, "wrr" is a subset of "warrior" but is not a subset of "world".

    A string a from words1 is universal if for every string b in words2, b is a subset of a.
    Return an array of all the universal strings in words1. You may return the answer in any order.
 
    Example 1:

    Input: words1 = ["amazon","apple","facebook","google","leetcode"], words2 = ["e","o"]
    Output: ["facebook","google","leetcode"]

    Example 2:

    Input: words1 = ["amazon","apple","facebook","google","leetcode"], words2 = ["l","e"]
    Output: ["apple","google","leetcode"]

 
    Constraints:

    1 <= words1.length, words2.length <= 104
    1 <= words1[i].length, words2[i].length <= 10
    words1[i] and words2[i] consist only of lowercase English letters.
    All the strings of words1 are unique.

    """
    ### Canonical solution below ###
    from collections import Counter
    max_chars = Counter()
    for word in words2:
        chars = Counter(word)
        for c, count in chars.items():
            max_chars[c] = max(max_chars[c], count)

    result = []
    for word in words1:
        word_chars = Counter(word)
        universal = all(word_chars[c] >= max_chars[c] for c in max_chars)
        if universal:
            result.append(word)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["g", "o"]) == ['google']
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["az", "on"]) == ['amazon']
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["ec", "oc", "ceo"]) == ['facebook', 'leetcode']
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["l", "e"]) == ['apple', 'google', 'leetcode']
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["fb", "fa"]) == ['facebook']
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["e", "o"]) == ['facebook', 'google', 'leetcode']
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["am", "az"]) == ['amazon']
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["fb", "az"]) == []
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["adc", "e"]) == []
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["b", "f"]) == ['facebook']
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["z", "oo"]) == []
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["am", "ma"]) == ['amazon']
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["m", "pa"]) == []
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["le", "ec"]) == ['leetcode']
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["y", "o"]) == []
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["go", "og"]) == ['google']
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["oo", "go"]) == ['google']
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["lo", "ap"]) == []
	assert candidate(["amazon", "apple", "facebook", "google", "leetcode"], ["a", "p", "l", "e", "o", "k", "m", "z"]) == []
def test_check():
	check(word_subsets)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,string
# Metadata Coverage: 100
