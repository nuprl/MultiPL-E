def is_prefix_of_word(sentence: str, search_word: str) -> int:
    """
    Given a sentence that consists of some words separated by a single space, and a searchWord, check if searchWord is a prefix of any word in sentence.
    Return the index of the word in sentence (1-indexed) where searchWord is a prefix of this word. If searchWord is a prefix of more than one word, return the index of the first word (minimum index). If there is no such word return -1.
    A prefix of a string s is any leading contiguous substring of s.
 
    Example 1:

    Input: sentence = "i love eating burger", searchWord = "burg"
    Output: 4
    Explanation: "burg" is prefix of "burger" which is the 4th word in the sentence.

    Example 2:

    Input: sentence = "this problem is an easy problem", searchWord = "pro"
    Output: 2
    Explanation: "pro" is prefix of "problem" which is the 2nd and the 6th word in the sentence, but we return 2 as it's the minimal index.

    Example 3:

    Input: sentence = "i am tired", searchWord = "you"
    Output: -1
    Explanation: "you" is not a prefix of any word in the sentence.

 
    Constraints:

    1 <= sentence.length <= 100
    1 <= searchWord.length <= 10
    sentence consists of lowercase English letters and spaces.
    searchWord consists of lowercase English letters.

    """
    ### Canonical solution below ###
    words = sentence.split(' ')
    for index, word in enumerate(words, start=1):
        if word.startswith(search_word):
            return index
    return -1




### Unit tests below ###
def check(candidate):
	assert candidate("Python is awesome", "awe") == 3
	assert candidate("this problem is an easy problem", "problem") == 2
	assert candidate(
    "This is a test. This is a test. Test test test.", "is") == 2
	assert candidate(
    "This is a test.", "This is a test.") == -1
	assert candidate(
    "This is a test.", "This is a test!") == -1
	assert candidate("Python is awesome", "a") == 3
	assert candidate("Python is awesome", "awesome!") == -1
	assert candidate("Python is awesome", "Python") == 1
	assert candidate("i love eating burger", "burg") == 4
	assert candidate("This is a test.", "a") == 3
	assert candidate("i am tired", "you") == -1
	assert candidate("This is a test.", "test. ") == -1
	assert candidate(
    "This is a test.", "This is a test") == -1
	assert candidate(
    "This is a test. This is a test. Test test test.", "This is a test. This is a test. Test test test.") == -1
	assert candidate("sentence search", "sentence") == 1
	assert candidate("this problem is an easy problem", "pro") == 2
	assert candidate("This is a test.", "test.") == 4
	assert candidate("Hello World!", "Hello World") == -1
	assert candidate("i love eating burger", "i") == 1
	assert candidate("sentence search", "sent") == 1
	assert candidate("sentence search", "not") == -1
	assert candidate(
    "This is a test. This is a test. Test test test.", "This") == 1
	assert candidate("This is a test.", "T") == 1
	assert candidate("i love eating burger", "eating") == 3
	assert candidate("Python is awesome", "!") == -1
	assert candidate("Hello World!", "World") == 2
	assert candidate("Hello World!", "Hell") == 1
	assert candidate("sentence search", "search") == 2
	assert candidate("Python is awesome", "Python is awesome!") == -1
	assert candidate("Hello World!", "!") == -1
	assert candidate("sentence search", " ") == -1
	assert candidate("sentence search", "sentence search") == -1
	assert candidate("Python is awesome", "Python is awesome") == -1
	assert candidate(
    "This is a test.", "This is a test. ") == -1
	assert candidate("Hello World!", "") == 1
	assert candidate("i love eating burger", "love") == 2
	assert candidate(
    "This is a test. This is a test. Test test test.", "test") == 4
	assert candidate(
    "this problem is an easy problem", "this problem is an easy problem") == -1
	assert candidate("this problem is an easy problem", "this") == 1
	assert candidate("i love eating burger", " ") == -1
	assert candidate("This is a test.", "This is a test!") == -1
	assert candidate("Hello World!", "Hello World!") == -1
	assert candidate("Python is awesome", "awesome") == 3
	assert candidate("i love eating burger", "burger") == 4
	assert candidate("this problem is an easy problem", " ") == -1
	assert candidate("This is a test.", "is") == 2
	assert candidate(
    "This is a test. This is a test. Test test test.", "a") == 3
	assert candidate("This is a test.", "This is a test") == -1
	assert candidate("This is a test.", "test") == 4
	assert candidate("sentence search", "s") == 1
	assert candidate("Python is awesome", "") == 1
	assert candidate("Hello World!", " ") == -1
	assert candidate("Hello World!", "Hello") == 1
	assert candidate("Python is awesome", "is") == 2
	assert candidate(
    "sentence search", "s") == 1
	assert candidate("sentence search", "sentence search!") == -1
	assert candidate("Python is awesome", " ") == -1
	assert candidate("This is a test.", " ") == -1
	assert candidate("This is a test.", ".") == -1
def test_check():
	check(is_prefix_of_word)
# Metadata Difficulty: Easy
# Metadata Topics: string,string-matching
# Metadata Coverage: 100
