from typing import List


def ladderLength(beginWord: str, endWord: str, wordList: List[str]) -> int:
    """
    A transformation sequence from word beginWord to word endWord using a dictionary wordList is a sequence of words beginWord -> s1 -> s2 -> ... -> sk such that:

    Every adjacent pair of words differs by a single letter.
    Every si for 1 <= i <= k is in wordList. Note that beginWord does not need to be in wordList.
    sk == endWord

    Given two words, beginWord and endWord, and a dictionary wordList, return the number of words in the shortest transformation sequence from beginWord to endWord, or 0 if no such sequence exists.
 
    Example 1:

    Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log","cog"]
    Output: 5
    Explanation: One shortest transformation sequence is "hit" -> "hot" -> "dot" -> "dog" -> cog", which is 5 words long.

    Example 2:

    Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log"]
    Output: 0
    Explanation: The endWord "cog" is not in wordList, therefore there is no valid transformation sequence.

 
    Constraints:

    1 <= beginWord.length <= 10
    endWord.length == beginWord.length
    1 <= wordList.length <= 5000
    wordList[i].length == beginWord.length
    beginWord, endWord, and wordList[i] consist of lowercase English letters.
    beginWord != endWord
    All the words in wordList are unique.

    """
    ### Canonical solution below ###
    from collections import deque
    word_set = set(wordList)
    if endWord not in word_set:
        return 0

    q = deque([beginWord])
    steps = 1

    while q:
        size = len(q)
        current_level = set()

        for _ in range(size):
            current_word = q.popleft()
            if current_word == endWord:
                return steps

            word_chars = list(current_word)
            for i in range(len(word_chars)):
                original_char = word_chars[i]
                for j in range(26):
                    word_chars[i] = chr(ord('a') + j)
                    new_word = ''.join(word_chars)
                    if new_word in word_set:
                        q.append(new_word)
                        current_level.add(new_word)

                word_chars[i] = original_char

        word_set -= current_level
        steps += 1

    return 0




### Unit tests below ###
def check(candidate):
	assert candidate("hot", "dot", ["hot", "dot", "dog", "lot", "log"]) == 2
	assert candidate("hot", "dog", ["hot", "cog", "dot"]) == 0
	assert candidate("hot", "dog", ["hot", "dot", "dog", "cog"]) == 3
	assert candidate("a", "c", ["a", "b"]) == 0
	assert candidate("hot", "dog", ["hot", "dot", "dog", "lot", "log"]) == 3
	assert candidate("hot", "dog", ["hot", "dot", "dog", "cog", "lot", "log"]) == 3
	assert candidate("hot", "dog", ["hot", "dot", "dog", "cog", "lot", "log", "bog"]) == 3
	assert candidate("hit", "hot", ["hot", "dot", "dog", "cog", "lot", "log"]) == 2
	assert candidate("banana", "banani", ["banana", "banani", "banane"]) == 2
	assert candidate("hot", "dog", ["hot", "dot", "dog", "lot", "log", "cog"]) == 3
	assert candidate("hot", "dot", ["hot", "dot", "dog", "lot", "log", "cog"]) == 2
	assert candidate("hot", "cog", ["hot", "dot", "dog", "cog", "lot", "log"]) == 4
	assert candidate("hot", "dog", ["hot", "dog", "dot"]) == 3
	assert candidate("drain", "boat", ["sail", "boat", "sacre", "coat", "dot", "crab", "crot", "brag", "cog"]) == 0
	assert candidate("hit", "cog", ["hot", "dot", "dog", "cog", "lot", "log"]) == 5
	assert candidate("a", "b", ["b"]) == 2
	assert candidate("hot", "cog", ["hot", "dot", "dog", "cog"]) == 4
	assert candidate("hot", "dot", ["hot", "dot", "dog", "cog", "lot", "log"]) == 2
	assert candidate("hit", "cog", ["hot", "dot", "dog", "lot", "log"]) == 0
	assert candidate("hit", "lot", ["hot", "dot", "dog", "cog", "lot", "log"]) == 3
	assert candidate("hot", "cog", ["hot", "dot", "dog", "lot", "log", "cog"]) == 4
	assert candidate("hit", "dot", ["hot", "dot", "dog", "cog", "lot", "log"]) == 3
	assert candidate("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"]) == 5
	assert candidate("hot", "dot", ["hot", "dot", "dog"]) == 2
def test_check():
	check(ladderLength)
# Metadata Difficulty: Hard
# Metadata Topics: hash-table,string,breadth-first-search
# Metadata Coverage: 100
