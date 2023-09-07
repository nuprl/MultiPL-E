from typing import List


def commonChars(words: List[str]) -> List[str]:
    """
    Given a string array words, return an array of all characters that show up in all strings within the words (including duplicates). You may return the answer in any order.
 
    Example 1:
    Input: words = ["bella","label","roller"]
    Output: ["e","l","l"]
    Example 2:
    Input: words = ["cool","lock","cook"]
    Output: ["c","o"]

 
    Constraints:

    1 <= words.length <= 100
    1 <= words[i].length <= 100
    words[i] consists of lowercase English letters.

    """
    ### Canonical solution below ###
    from collections import Counter
    merged = Counter()
    for word in words:
        word_count = Counter(word)
        if not merged:
            merged = word_count
        else:
            for char in merged:
                merged[char] = min(merged[char], word_count[char])

    result = []
    for char, count in merged.items():
        result.extend([char] * count)
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(["python","java","csharp"]) == []
	assert candidate(["pizza","sandwich","pasta"]) == ['a']
	assert candidate(["hello","world","python"]) == ['o']
	assert candidate(["bella","label","roller"]) == ['e', 'l', 'l']
	assert candidate(["chinese","japanese","marathi"]) == []
	assert candidate(["apple","orange","banana"]) == ['a']
	assert candidate(["pizza","sandwich","pasta","salad"]) == ['a']
	assert candidate(["kid","kidsss"]) == ['k', 'i', 'd']
	assert candidate(["abc","def"]) == []
	assert candidate(["chinese","japanese","malayalam"]) == []
	assert candidate(["cool","lock","cook"]) == ['c', 'o']
	assert candidate(["and","find","common"]) == ['n']
	assert candidate(["code","code","code"]) == ['c', 'o', 'd', 'e']
	assert candidate(["chinese","japanese","gujarati"]) == []
	assert candidate(["python","pythonista","pythonic"]) == ['p', 'y', 't', 'h', 'o', 'n']
	assert candidate(["so","we","test"]) == []
	assert candidate(["kid","kids"]) == ['k', 'i', 'd']
	assert candidate(["a","ab","abc"]) == ['a']
def test_check():
	check(commonChars)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,string
# Metadata Coverage: 100
