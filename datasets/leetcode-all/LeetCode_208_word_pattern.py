def word_pattern(pattern: str, s: str) -> bool:
    """
    Given a pattern and a string s, find if s follows the same pattern.
    Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in s.
 
    Example 1:

    Input: pattern = "abba", s = "dog cat cat dog"
    Output: true

    Example 2:

    Input: pattern = "abba", s = "dog cat cat fish"
    Output: false

    Example 3:

    Input: pattern = "aaaa", s = "dog cat cat dog"
    Output: false

 
    Constraints:

    1 <= pattern.length <= 300
    pattern contains only lower-case English letters.
    1 <= s.length <= 3000
    s contains only lowercase English letters and spaces ' '.
    s does not contain any leading or trailing spaces.
    All the words in s are separated by a single space.

    """
    ### Canonical solution below ###
    words = s.split()
    if len(pattern) != len(words):
        return False

    char_map, word_map = {}, {}
    for c, word in zip(pattern, words):
        if c not in char_map and word not in word_map:
            char_map[c] = word
            word_map[word] = c
        else:
            if char_map.get(c) != word or word_map.get(word) != c:
                return False

    return True




### Unit tests below ###
def check(candidate):
	assert candidate("abcde", "dog cat bird fish cow") == True
	assert candidate("abcabc", "dog cat fish dog cat fish") == True
	assert candidate("abcd", "dog cat fish bird") == True
	assert candidate("abba", "cat cat cat cat") == False
	assert candidate("abab", "dog cat dog dog") == False
	assert candidate("aaaaaa", "dog dog dog dog dog dog") == True
	assert candidate("abcab", "dog dog dog dog dog dog") == False
	assert candidate("abcdabcd", "dog cat bird fish dog cat bird fish") == True
	assert candidate("abcd", "dog cat bird fish") == True
	assert candidate("abc", "dog cat dog cat") == False
	assert candidate("aba", "dog dog dog") == False
	assert candidate("ab", "cat dog") == True
	assert candidate("abba", "dog cat dog dog") == False
	assert candidate("abc", "dog cat fish") == True
	assert candidate("aabb", "dog dog cat cat") == True
	assert candidate("abcdef", "dog dog dog dog dog dog") == False
	assert candidate("abc", "dog dog dog dog") == False
	assert candidate(
    "aaaaaa", "cat cat cat cat cat cat cat cat cat cat cat cat cat cat cat cat"
) == False
	assert candidate("abcde", "dog cat cow fish dog") == False
	assert candidate("aaa", "cat cat cat") == True
	assert candidate("abc", "dog cat cat") == False
	assert candidate("aba", "cat cat cat") == False
	assert candidate(
    "aaaa", "dog dog dog dog dog dog dog dog dog dog dog dog dog dog dog dog dog dog"
) == False
	assert candidate("aaaa", "dog cat cat dog") == False
	assert candidate("abcdefgh", "dog cat bird fish cow duck elephant frog") == True
	assert candidate("abcdef", "dog cat bird fish cow duck") == True
	assert candidate("abcd", "dog cat cat fish") == False
	assert candidate("abba", "dog dog dog") == False
	assert candidate("abba", "dog dog dog dog") == False
	assert candidate("abcabc", "dog cat bird dog cat fish") == False
	assert candidate("abbba", "dog cat dog dog cat") == False
	assert candidate("abcabc", "dog cat fish dog cat bird") == False
	assert candidate("aaa", "dog dog dog") == True
	assert candidate("abba", "dog cat cat fish") == False
	assert candidate(
    "aaaaaa", "dog cat cat cat cat cat cat cat cat cat cat cat cat cat cat cat cat"
) == False
	assert candidate("abcddd", "dog cat dog cat dog dog") == False
	assert candidate("abba", "dog cat cat dog") == True
	assert candidate("abab", "dog cat dog cat") == True
	assert candidate("abcde", "dog cat cow fish bird") == True
	assert candidate("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxy") == False
	assert candidate("abab", "dog cat cat dog") == False
	assert candidate("abbba", "cat cat cat cat cat") == False
	assert candidate("abc", "dog cat dog") == False
	assert candidate("aaaabb", "dog dog dog dog dog dog dog") == False
	assert candidate("aa", "dog cat") == False
	assert candidate("aaabb", "dog dog dog dog dog") == False
	assert candidate("aa", "cat cat") == True
	assert candidate("abc", "dog dog dog") == False
	assert candidate("abcdefg", "dog cat bird fish cow duck elephant") == True
	assert candidate("abbbbbbbbbb", "dog dog dog dog dog dog dog dog dog dog dog dog") == False
def test_check():
	check(word_pattern)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
