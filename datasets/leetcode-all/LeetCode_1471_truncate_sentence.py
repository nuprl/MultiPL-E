def truncate_sentence(s: str, k: int) -> str:
    """
    A sentence is a list of words that are separated by a single space with no leading or trailing spaces. Each of the words consists of only uppercase and lowercase English letters (no punctuation).

    For example, "Hello World", "HELLO", and "hello world hello world" are all sentences.

    You are given a sentence s​​​​​​ and an integer k​​​​​​. You want to truncate s​​​​​​ such that it contains only the first k​​​​​​ words. Return s​​​​​​ after truncating it.
 
    Example 1:

    Input: s = "Hello how are you Contestant", k = 4
    Output: "Hello how are you"
    Explanation:
    The words in s are ["Hello", "how" "are", "you", "Contestant"].
    The first 4 words are ["Hello", "how", "are", "you"].
    Hence, you should return "Hello how are you".

    Example 2:

    Input: s = "What is the solution to this problem", k = 4
    Output: "What is the solution"
    Explanation:
    The words in s are ["What", "is" "the", "solution", "to", "this", "problem"].
    The first 4 words are ["What", "is", "the", "solution"].
    Hence, you should return "What is the solution".
    Example 3:

    Input: s = "chopper is not a tanuki", k = 5
    Output: "chopper is not a tanuki"

 
    Constraints:

    1 <= s.length <= 500
    k is in the range [1, the number of words in s].
    s consist of only lowercase and uppercase English letters and spaces.
    The words in s are separated by a single space.
    There are no leading or trailing spaces.

    """
    ### Canonical solution below ###
    words = s.split(' ')
    return ' '.join(words[:k])




### Unit tests below ###
def check(candidate):
	assert candidate("Truncate this sentence", 2) == "Truncate this"
	assert candidate("Python is a great programming language", 5) == "Python is a great programming"
	assert candidate("Hello world", 1) == "Hello"
	assert candidate("The quick brown fox jumps over the lazy dog", 9) == "The quick brown fox jumps over the lazy dog"
	assert candidate("This is a short sentence", 4) == "This is a short"
	assert candidate("This is even longer", 2) == "This is"
	assert candidate("The value of k determines how many words are kept", 7) == "The value of k determines how many"
	assert candidate("This function is working correctly", 5) == "This function is working correctly"
	assert candidate("Sometimes, less is more", 3) == "Sometimes, less is"
	assert candidate("I love to code", 3) == "I love to"
	assert candidate("Let's try to break your code, shall we?", 5) == "Let's try to break your"
	assert candidate("Hello world, my name is Joe", 5) == "Hello world, my name is"
	assert candidate("This is a test sentence", 4) == "This is a test"
	assert candidate(
    "When will the next episode of Samurai Jack be released", 12) == "When will the next episode of Samurai Jack be released"
	assert candidate("I love programming", 2) == "I love"
	assert candidate("Unit tests help in finding bugs", 5) == "Unit tests help in finding"
	assert candidate("This sentence will be truncated", 1) == "This"
	assert candidate("This is not a very long sentence", 7) == "This is not a very long sentence"
	assert candidate("I think it is safe to assume that no one likes Mondays", 2) == "I think"
	assert candidate("Truncate this sentence to four words", 4) == "Truncate this sentence to"
	assert candidate("The quick brown fox jumps over the lazy dog", 27) == "The quick brown fox jumps over the lazy dog"
	assert candidate("I like to code in Python", 6) == "I like to code in Python"
	assert candidate(
    "Hello there, my name is Donald Trump. What can I do for you today?", 7) == "Hello there, my name is Donald Trump."
	assert candidate("Python is fun", 2) == "Python is"
	assert candidate("This is a short sentence", 5) == "This is a short sentence"
	assert candidate("The length of the sentence after truncation depends on k", 8) == "The length of the sentence after truncation depends"
	assert candidate("I am learning to write unit tests", 6) == "I am learning to write unit"
def test_check():
	check(truncate_sentence)
# Metadata Difficulty: Easy
# Metadata Topics: array,string
# Metadata Coverage: 100
