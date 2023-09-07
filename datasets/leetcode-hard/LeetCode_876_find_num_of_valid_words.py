from typing import List


def find_num_of_valid_words(words: List[str], puzzles: List[str]) -> List[int]:
    """
    With respect to a given puzzle string, a word is valid if both the following conditions are satisfied:

    word contains the first letter of puzzle.
    For each letter in word, that letter is in puzzle.

    For example, if the puzzle is "abcdefg", then valid words are "faced", "cabbage", and "baggage", while
    invalid words are "beefed" (does not include 'a') and "based" (includes 's' which is not in the puzzle).



    Return an array answer, where answer[i] is the number of words in the given word list words that is valid with respect to the puzzle puzzles[i].
 
    Example 1:

    Input: words = ["aaaa","asas","able","ability","actt","actor","access"], puzzles = ["aboveyz","abrodyz","abslute","absoryz","actresz","gaswxyz"]
    Output: [1,1,3,2,4,0]
    Explanation: 
    1 valid word for "aboveyz" : "aaaa" 
    1 valid word for "abrodyz" : "aaaa"
    3 valid words for "abslute" : "aaaa", "asas", "able"
    2 valid words for "absoryz" : "aaaa", "asas"
    4 valid words for "actresz" : "aaaa", "asas", "actt", "access"
    There are no valid words for "gaswxyz" cause none of the words in the list contains letter 'g'.

    Example 2:

    Input: words = ["apple","pleas","please"], puzzles = ["aelwxyz","aelpxyz","aelpsxy","saelpxy","xaelpsy"]
    Output: [0,1,3,2,0]

 
    Constraints:

    1 <= words.length <= 105
    4 <= words[i].length <= 50
    1 <= puzzles.length <= 104
    puzzles[i].length == 7
    words[i] and puzzles[i] consist of lowercase English letters.
    Each puzzles[i] does not contain repeated characters.

    """
    ### Canonical solution below ###
    result = []
    for puzzle in puzzles:
        count = 0
        puzzle_set = set(puzzle)
        for word in words:
            if puzzle[0] in word:
                if all(c in puzzle_set for c in word):
                    count += 1
        result.append(count)
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(["a", "b", "c", "d"], ["abcd", "dcba", "badc", "cdab", "e"]) == [1,1,1,1,0]
	assert candidate(["apple", "pleas", "please"], ["aelwxyz", "dcba", "dcba", "dcba", "dcba", "dcba", "dcba", "dcba", "dcba", "dcba", "dcba", "dcba", "dcba", "dcba", "dcba", "dcba", "dcba", "dcba", "dcba", "dcba"]) == [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
	assert candidate(["ab", "cd", "ef", "gh"], ["abcdefg", "abcdefgh", "badcfehg", "hgfedcba"]) == [1,1,1,1]
	assert candidate(["aaaa", "asas", "able", "ability", "actt", "actor", "access"], ["aboveyz"]) == [1]
	assert candidate(["aaaa", "asas", "able", "ability", "actt", "actor", "access"], ["aboveyz", "abrodyz", "abslute", "absoryz", "actresz", "gaswxyz"]) == [1,1,3,2,4,0]
	assert candidate(["apple", "pleas", "please"], ["aelwxyz", "aelpxyz", "aelpsxy", "saelpxy", "xaelpsy"]) == [0,1,3,2,0]
	assert candidate(["apple", "pleas", "please"], ["aelwxyz"]) == [0]
	assert candidate(["apple"], ["apple", "pleas", "please"]) == [1,1,1]
	assert candidate(["a", "b", "c", "d"], ["abcd", "dcba", "badc", "cdab"]) == [1,1,1,1]
def test_check():
	check(find_num_of_valid_words)
# Metadata Difficulty: Hard
# Metadata Topics: array,hash-table,string,bit-manipulation,trie
# Metadata Coverage: 100
