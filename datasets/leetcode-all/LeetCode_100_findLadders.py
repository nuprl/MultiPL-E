from typing import List


def findLadders(beginWord: str, endWord: str, wordList: List[str]) -> List[List[str]]:
    """
    A transformation sequence from word beginWord to word endWord using a dictionary wordList is a sequence of words beginWord -> s1 -> s2 -> ... -> sk such that:

    Every adjacent pair of words differs by a single letter.
    Every si for 1 <= i <= k is in wordList. Note that beginWord does not need to be in wordList.
    sk == endWord

    Given two words, beginWord and endWord, and a dictionary wordList, return all the shortest transformation sequences from beginWord to endWord, or an empty list if no such sequence exists. Each sequence should be returned as a list of the words [beginWord, s1, s2, ..., sk].
 
    Example 1:

    Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log","cog"]
    Output: [["hit","hot","dot","dog","cog"],["hit","hot","lot","log","cog"]]
    Explanation: There are 2 shortest transformation sequences:
    "hit" -> "hot" -> "dot" -> "dog" -> "cog"
    "hit" -> "hot" -> "lot" -> "log" -> "cog"

    Example 2:

    Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log"]
    Output: []
    Explanation: The endWord "cog" is not in wordList, therefore there is no valid transformation sequence.

 
    Constraints:

    1 <= beginWord.length <= 5
    endWord.length == beginWord.length
    1 <= wordList.length <= 500
    wordList[i].length == beginWord.length
    beginWord, endWord, and wordList[i] consist of lowercase English letters.
    beginWord != endWord
    All the words in wordList are unique.
    The sum of all shortest transformation sequences does not exceed 105.

    """
    ### Canonical solution below ###
    from collections import defaultdict, deque
    wordList = set(wordList)
    if endWord not in wordList:
        return []

    adjacent = defaultdict(list)
    distance = defaultdict(int)
    queue = deque([beginWord])
    distance[beginWord] = 0

    def neighbors(word):
        for i in range(len(word)):
            for j in range(ord('a'), ord('z') + 1):
                yield word[:i] + chr(j) + word[i + 1:]

    while queue:
        current = queue.popleft()
        if current == endWord:
            break
        for neighbor in neighbors(current):
            if neighbor not in wordList:
                continue
            if neighbor not in distance:
                distance[neighbor] = distance[current] + 1
                queue.append(neighbor)
            if distance[neighbor] == distance[current] + 1:
                adjacent[current].append(neighbor)

    result = []
    path = [beginWord]

    def backtrack(word):
        if word == endWord:
            result.append(path[:])
        else:
            for next_word in adjacent[word]:
                path.append(next_word)
                backtrack(next_word)
                path.pop()

    backtrack(beginWord)
    return result




### Unit tests below ###
def check(candidate):
	assert candidate("qaaz", "qazz", ["qazz"]) == [["qaaz", "qazz"]]
	assert candidate("abc", "def", ["abc", "bbc", "dbc", "dec"]) == []
	assert candidate("abc", "def", ["def"]) == []
	assert candidate("hit", "cog", ["hot", "dot", "dog", "lot", "log"]) == []
	assert candidate("a", "d", ["a", "b", "c"]) == []
	assert candidate("aaa", "bbb", ["aaa", "aab", "abb", "bbb"]) == [["aaa", "aab", "abb", "bbb"]]
	assert candidate("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"]) == [["hit", "hot", "dot", "dog", "cog"], ["hit", "hot", "lot", "log", "cog"]]
	assert candidate("hot", "dog", ["hot", "dot", "dog", "lot", "log"]) == [["hot", "dot", "dog"]]
	assert candidate("ant", "act", ["ant","act","tct"]) == [["ant","act"]]
	assert candidate("a", "c", ["a", "b", "c"]) == [["a", "c"]]
	assert candidate("hot", "dot", ["hot", "dot", "dog", "lot", "log", "cog"]) == [["hot", "dot"]]
	assert candidate("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"]) == [
    ["hit", "hot", "dot", "dog", "cog"],
    ["hit", "hot", "lot", "log", "cog"],
]
	assert candidate("abc", "abc", ["abc"]) == [["abc"]]
	assert candidate("hot", "dog", ["hot", "dog", "dot"]) == [["hot", "dot", "dog"]]
	assert candidate("hot", "dog", ["hot", "dot", "dog", "lot", "log", "cog"]) == [["hot", "dot", "dog"]]
def test_check():
	check(findLadders)
# Metadata Difficulty: Hard
# Metadata Topics: hash-table,string,backtracking,breadth-first-search
# Metadata Coverage: 100
