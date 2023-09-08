def truncateSentence(s: str, k: int) -> str:
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
    words = s.split()
    return " ".join(words[:k])




### Unit tests below ###
def check(candidate):
	assert candidate("The weather is nice today ", 1) == "The"
	assert candidate("I love to code in Python ", 5) == "I love to code in"
	assert candidate("chopper is not a tanuki ", 100) == "chopper is not a tanuki"
	assert candidate("I love to code in Python ", 1) == "I"
	assert candidate("I love to code in Python ", 4) == "I love to code"
	assert candidate("I am learning to write Python tests ", 1) == "I"
	assert candidate("I am learning to write Python tests ", 3) == "I am learning"
	assert candidate("chopper is not a tanuki ", 1) == "chopper"
	assert candidate("Python is an interpreted high-level programming language ", 1) == "Python"
	assert candidate("a ", 1) == "a"
	assert candidate("Python is an interpreted high-level programming language ", 5) == "Python is an interpreted high-level"
	assert candidate(
    "I am learning to write Python tests ", 1) == "I"
	assert candidate("The weather is nice today ", 4) == "The weather is nice"
	assert candidate("Python is an interpreted high-level programming language ", 11) == "Python is an interpreted high-level programming language"
	assert candidate("The quick brown fox jumps over the lazy dog ", 9) == "The quick brown fox jumps over the lazy dog"
	assert candidate("What is the solution to this problem ", 7) == "What is the solution to this problem"
	assert candidate("chopper is not a tanuki ", 5) == "chopper is not a tanuki"
	assert candidate("What is the solution to this problem ", 1) == "What"
	assert candidate("What is the solution to this problem ", 6) == "What is the solution to this"
	assert candidate("The weather is nice today ", 7) == "The weather is nice today"
	assert candidate("I am learning to write Python tests ", 6) == "I am learning to write Python"
	assert candidate("chopper is not a tanuki ", 10) == "chopper is not a tanuki"
	assert candidate("This is a longer sentence with many different words ", 7) == "This is a longer sentence with many"
	assert candidate("I love to code in Python ", 2) == "I love"
	assert candidate("Hello how are you Contestant ", 1) == "Hello"
	assert candidate("The quick brown fox jumps over the lazy dog ", 27) == "The quick brown fox jumps over the lazy dog"
	assert candidate("Hello how are you Contestant ", 4) == "Hello how are you"
	assert candidate("I love to code in Python ", 3) == "I love to"
	assert candidate("What is the solution to this problem ", 4) == "What is the solution"
	assert candidate("chopper is not a tanuki ", 6) == "chopper is not a tanuki"
	assert candidate("The quick brown fox jumps over the lazy dog ", 5) == "The quick brown fox jumps"
	assert candidate(
    "chopper is not a tanuki ", 10) == "chopper is not a tanuki"
	assert candidate("I am learning to write Python tests ", 5) == "I am learning to write"
	assert candidate("Python is an interpreted high-level programming language ", 6) == "Python is an interpreted high-level programming"
	assert candidate("The quick brown fox jumps over the lazy dog ", 10) == "The quick brown fox jumps over the lazy dog"
	assert candidate("The weather is nice today ", 5) == "The weather is nice today"
def test_check():
	check(truncateSentence)
# Metadata Difficulty: Easy
# Metadata Topics: array,string
# Metadata Coverage: 100
