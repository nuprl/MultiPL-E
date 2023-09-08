from typing import List


def is_alien_sorted(words: List[str], order: str) -> bool:
    """
    In an alien language, surprisingly, they also use English lowercase letters, but possibly in a different order. The order of the alphabet is some permutation of lowercase letters.
    Given a sequence of words written in the alien language, and the order of the alphabet, return true if and only if the given words are sorted lexicographically in this alien language.
 
    Example 1:

    Input: words = ["hello","leetcode"], order = "hlabcdefgijkmnopqrstuvwxyz"
    Output: true
    Explanation: As 'h' comes before 'l' in this language, then the sequence is sorted.

    Example 2:

    Input: words = ["word","world","row"], order = "worldabcefghijkmnpqstuvxyz"
    Output: false
    Explanation: As 'd' comes after 'l' in this language, then words[0] > words[1], hence the sequence is unsorted.

    Example 3:

    Input: words = ["apple","app"], order = "abcdefghijklmnopqrstuvwxyz"
    Output: false
    Explanation: The first three characters "app" match, and the second string is shorter (in size.) According to lexicographical rules "apple" > "app", because 'l' > '∅', where '∅' is defined as the blank character which is less than any other character (More info).

 
    Constraints:

    1 <= words.length <= 100
    1 <= words[i].length <= 20
    order.length == 26
    All characters in words[i] and order are English lowercase letters.

    """
    ### Canonical solution below ###
    alien_order = {char: i for i, char in enumerate(order)}

    for i in range(1, len(words)):
        for j in range(len(words[i - 1])):
            if j == len(words[i]):
                return False

            if words[i - 1][j] != words[i][j]:
                if alien_order[words[i - 1][j]] > alien_order[words[i][j]]:
                    return False
                break

    return True




### Unit tests below ###
def check(candidate):
	assert candidate(["word", "world", "row"], "worldabcefghijkmnopqrstuvxyz") == False
	assert candidate(["zzz", "zzz", "zzz"], "zyxwvutsrqponmlkjihgfedcba") == True
	assert candidate(["dvzkxt", "dvzskt", "dzvskt", "dzvkst", "dzvkts"], "dzvxtsk") == False
	assert candidate(["d", "de", "dee", "deg"], "zyxwvutsrqponmlkjihgfedcba") == False
	assert candidate(["xzy"], "xyzd") == True
	assert candidate(["w", "w"], "zyxwvutsrqponmlkjihgfedcba") == True
	assert candidate(["xzy", "yzx"], "xyzd") == True
	assert candidate(["z", "x"], "zyxwvutsrqponmlkjihgfedcba") == True
	assert candidate(["jwzmf", "giq"], "loxbzapnmstkhijfcuqdewyvrg") == True
	assert candidate(["zzz", "yyy", "xxx"], "abcdefghijklmnopqrstuvxyz") == False
	assert candidate(["apple", "app"], "abcdefghijklmnopqrstuvxyz") == False
	assert candidate(["xzy", "yxz", "yzx"], "xyzd") == True
	assert candidate(["word", "world", "row"], "worldabcefghijkmnpqstuvxyz") == False
	assert candidate(["zzz", "yyy", "xxx"], "abcdefghijklmnopqrstuvwxyz") == False
	assert candidate(["apple", "app"], "abcdefghijklmnopqrstuvwxyz") == False
	assert candidate(["w", "w"], "abcdefghijklmnopqrstuvxyz") == True
	assert candidate(["xxx", "xxy", "xyy", "yyy", "zza"], "zyxwvutsrqponmlkjihgfedcba") == False
	assert candidate(["abcd", "efgh", "ghi", "jkl"], "abdefghijklmnopqrstuvwxyz") == True
	assert candidate(["hello", "leetcode"], "hlabcdefgijkmnopqrstuvwxyz") == True
	assert candidate(["zzz", "yyy", "xxx"], "zyxwvutsrqponmlkjihgfedcba") == True
	assert candidate(["ugh", "uhh"], "abcdefghijklmnopqrstuvwxyz") == True
	assert candidate(["xww", "wxyz"], "abcdefghijklmnopqrstuvwxyz") == False
	assert candidate(["apple", "boy", "can", "dog", "egg", "food", "good", "ham"], "zyxwvutsrqponmlkjihgfedcba") == False
	assert candidate(["asd"], "qwertzuiopasdfghjklyxcvbnm") == True
	assert candidate(["a", "b", "c"], "abcdghifjk") == True
	assert candidate(["n", "m"], "qntgldrpyzhfjxbucimvsakwoe") == True
	assert candidate(["ghi", "gfhi", "ghia"], "abcdghifjk") == False
	assert candidate(["efgh", "ghi", "defg"], "zyxwvutsrqponmlkjihgfedcba") == False
	assert candidate(["kuvp", "q"], "ngxlkthsjuoqcpavbfdermiywz") == True
	assert candidate(["apple", "boy", "can", "dog", "egg", "food", "good", "ham"], "abcdefghijklmnopqrstuvwxyz") == True
	assert candidate(["a", "b", "c", "d"], "abcd") == True
def test_check():
	check(is_alien_sorted)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,string
# Metadata Coverage: 100
