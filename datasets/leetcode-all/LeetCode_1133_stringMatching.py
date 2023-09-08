from typing import List


def stringMatching(words: List[str]) -> List[str]:
    """
    Given an array of string words, return all strings in words that is a substring of another word. You can return the answer in any order.
    A substring is a contiguous sequence of characters within a string
 
    Example 1:

    Input: words = ["mass","as","hero","superhero"]
    Output: ["as","hero"]
    Explanation: "as" is substring of "mass" and "hero" is substring of "superhero".
    ["hero","as"] is also a valid answer.

    Example 2:

    Input: words = ["leetcode","et","code"]
    Output: ["et","code"]
    Explanation: "et", "code" are substring of "leetcode".

    Example 3:

    Input: words = ["blue","green","bu"]
    Output: []
    Explanation: No string of words is substring of another string.

 
    Constraints:

    1 <= words.length <= 100
    1 <= words[i].length <= 30
    words[i] contains only lowercase English letters.
    All the strings of words are unique.

    """
    ### Canonical solution below ###
    result = []
    for word1 in words:
        for word2 in words:
            if word1 != word2 and word1 in word2:
                result.append(word1)
                break
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(["css","c","ss","css"]) == ["c","ss"]
	assert candidate(["dart","dar","art","dart"]) == ["dar","art"]
	assert candidate(["css","c","ss"]) == ["c","ss"]
	assert candidate(["c","cc","ccc"]) == ["c","cc"]
	assert candidate(["aaaa","a","b","ab"]) == ["a","b"]
	assert candidate(["leetcode","et","code"]) == ["et","code"]
	assert candidate(["regex","re","gex","regex"]) == ["re","gex"]
	assert candidate(["csharp","c","sharp","cs"]) == ["c","sharp","cs"]
	assert candidate(["kotlin","kot","lin","kotlin"]) == ["kot","lin"]
	assert candidate(["test","testcase","case"]) == ["test","case"]
	assert candidate(["html","html","h","t","htm"]) == ["h","t","htm"]
	assert candidate(["javascript","js","j","ava","avaj"]) == ["j","ava"]
	assert candidate(["javascript","java","script","js"]) == ["java","script"]
	assert candidate(["java","av","java","va"]) == ["av","va"]
	assert candidate(["swift","sw","ift","swi"]) == ["sw","ift","swi"]
	assert candidate(["sql","sql","ql","q"]) == ["ql","q"]
	assert candidate(["testcase","test","case","abc","a"]) == ["test","case","a"]
	assert candidate(["ab","ba","a","b"]) == ["a","b"]
	assert candidate(["php","p","h","hp"]) == ["p","h","hp"]
	assert candidate(["swift","swi","ift","swift"]) == ["swi","ift"]
	assert candidate(["hello","hell","he","llo"]) == ["hell","he","llo"]
	assert candidate(["lua","u","lua"]) == ["u"]
	assert candidate(["aaaa","a","aa","aaa"]) == ["a","aa","aaa"]
	assert candidate(["rub","r","b","uby"]) == ["r","b"]
	assert candidate(["python","on","py","thon"]) == ["on","py","thon"]
	assert candidate(["code","od","e","code"]) == ["od","e"]
	assert candidate(["css","css","c","ss"]) == ["c","ss"]
	assert candidate(["matlab","mat","lab"]) == ["mat","lab"]
	assert candidate(["apple","pp","app","le","ap"]) == ["pp","app","le","ap"]
	assert candidate(["html","ht","tml","html"]) == ["ht","tml"]
	assert candidate(["ruby","rub","ub","ruby"]) == ["rub","ub"]
	assert candidate(["css","cs","css","s"]) == ["cs","s"]
	assert candidate(["java","av","ja","avaj"]) == ["av","ja"]
	assert candidate(["code","c","o","code"]) == ["c","o"]
	assert candidate(["perl","per","erl","perl"]) == ["per","erl"]
	assert candidate(["html","html"]) == []
	assert candidate(["sql","sq","l","sql"]) == ["sq","l"]
	assert candidate(["blue","green","bu"]) == []
	assert candidate(["a","b","c","d","e"]) == []
	assert candidate(["mass","as","hero","superhero"]) == ["as","hero"]
	assert candidate(["abba","a","b","a","b","abba"]) == ["a","b","a","b"]
def test_check():
	check(stringMatching)
# Metadata Difficulty: Easy
# Metadata Topics: array,string,string-matching
# Metadata Coverage: 100
