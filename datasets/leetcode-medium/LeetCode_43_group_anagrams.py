from typing import List


def group_anagrams(strs: List[str]) -> List[List[str]]:
    """
    Given an array of strings strs, group the anagrams together. You can return the answer in any order.
    An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
 
    Example 1:
    Input: strs = ["eat","tea","tan","ate","nat","bat"]
    Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
    Example 2:
    Input: strs = [""]
    Output: [[""]]
    Example 3:
    Input: strs = ["a"]
    Output: [["a"]]

 
    Constraints:

    1 <= strs.length <= 104
    0 <= strs[i].length <= 100
    strs[i] consists of lowercase English letters.

    """
    ### Canonical solution below ###
    from collections import defaultdict
    anagram_map = defaultdict(list)

    for s in strs:
        key = ''.join(sorted(s))
        anagram_map[key].append(s)

    return list(anagram_map.values())




### Unit tests below ###
def check(candidate):
	assert candidate(["kkkk","cccc","cccc","aaaa","aaaa","dddd"]) == [['kkkk'], ['cccc', 'cccc'], ['aaaa', 'aaaa'], ['dddd']]
	assert candidate(["ab", "cd", "ef", "gh", "ij", "kl"]) == [['ab'], ['cd'], ['ef'], ['gh'], ['ij'], ['kl']]
	assert candidate(["a","b","c","d","e","f"]) == [['a'], ['b'], ['c'], ['d'], ['e'], ['f']]
	assert candidate(["abcd", "bcda", "cdab", "abdc", "dcba", "abcd", "bcda", "cdab", "abcd", "bcda", "cdab"]) == [['abcd', 'bcda', 'cdab', 'abdc', 'dcba', 'abcd', 'bcda', 'cdab', 'abcd', 'bcda', 'cdab']]
	assert candidate(["ab", "cd", "ef", "gh", "ij", "kl", "ab", "cd", "ef", "gh", "ij", "kl"]) == [['ab', 'ab'], ['cd', 'cd'], ['ef', 'ef'], ['gh', 'gh'], ['ij', 'ij'], ['kl', 'kl']]
	assert candidate(["eat","tea","tan","ate","nat","bat"]) == [['eat', 'tea', 'ate'], ['tan', 'nat'], ['bat']]
	assert candidate(["a"]) == [["a"]]
	assert candidate(["abc","acb","bac","bca","cab","cba"]) == [['abc', 'acb', 'bac', 'bca', 'cab', 'cba']]
	assert candidate(["abcd","dcab","bcad","abdc","bacd","cdab","bacd","cdab","cbad"]) == [['abcd', 'dcab', 'bcad', 'abdc', 'bacd', 'cdab', 'bacd', 'cdab', 'cbad']]
	assert candidate([""]) == [[""]]
	assert candidate(["kkkk","aaaa","bbbb"]) == [["kkkk"], ["aaaa"], ["bbbb"]]
	assert candidate(["ab","ba"]) == [['ab', 'ba']]
	assert candidate(["abcd", "bcda", "cdab", "dabc", "abcd", "bcda", "cdab", "dabc"]) == [['abcd', 'bcda', 'cdab', 'dabc', 'abcd', 'bcda', 'cdab', 'dabc']]
	assert candidate(["abc","acb","cba"]) == [['abc', 'acb', 'cba']]
	assert candidate(["abcd", "bcda", "cdba"]) == [["abcd", "bcda", "cdba"]]
	assert candidate(["abcd", "bcda", "cdab", "dcba"]) == [["abcd", "bcda", "cdab", "dcba"]]
	assert candidate(["ab", "ba", "cd", "dc", "ef", "fe", "ab", "ba", "cd", "dc", "ef", "fe"]) == [['ab', 'ba', 'ab', 'ba'], ['cd', 'dc', 'cd', 'dc'], ['ef', 'fe', 'ef', 'fe']]
	assert candidate(["abc", "def", "ghi"]) == [['abc'], ['def'], ['ghi']]
	assert candidate(["abc", "cba", "def", "fed", "ghi", "ihg"]) == [['abc', 'cba'], ['def', 'fed'], ['ghi', 'ihg']]
	assert candidate(["ab", "ba", "cd", "dc", "ef", "fe"]) == [['ab', 'ba'], ['cd', 'dc'], ['ef', 'fe']]
	assert candidate(["ab", "ba", "abc", "cab", "bca", "bac"]) == [['ab', 'ba'], ['abc', 'cab', 'bca', 'bac']]
def test_check():
	check(group_anagrams)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,string,sorting
# Metadata Coverage: 100
