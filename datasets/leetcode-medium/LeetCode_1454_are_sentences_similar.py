def are_sentences_similar(sentence1: str, sentence2: str) -> bool:
    """
    A sentence is a list of words that are separated by a single space with no leading or trailing spaces. For example, "Hello World", "HELLO", "hello world hello world" are all sentences. Words consist of only uppercase and lowercase English letters.
    Two sentences sentence1 and sentence2 are similar if it is possible to insert an arbitrary sentence (possibly empty) inside one of these sentences such that the two sentences become equal. For example, sentence1 = "Hello my name is Jane" and sentence2 = "Hello Jane" can be made equal by inserting "my name is" between "Hello" and "Jane" in sentence2.
    Given two sentences sentence1 and sentence2, return true if sentence1 and sentence2 are similar. Otherwise, return false.
 
    Example 1:

    Input: sentence1 = "My name is Haley", sentence2 = "My Haley"
    Output: true
    Explanation: sentence2 can be turned to sentence1 by inserting "name is" between "My" and "Haley".

    Example 2:

    Input: sentence1 = "of", sentence2 = "A lot of words"
    Output: false
    Explanation: No single sentence can be inserted inside one of the sentences to make it equal to the other.

    Example 3:

    Input: sentence1 = "Eating right now", sentence2 = "Eating"
    Output: true
    Explanation: sentence2 can be turned to sentence1 by inserting "right now" at the end of the sentence.

 
    Constraints:

    1 <= sentence1.length, sentence2.length <= 100
    sentence1 and sentence2 consist of lowercase and uppercase English letters and spaces.
    The words in sentence1 and sentence2 are separated by a single space.

    """
    ### Canonical solution below ###
    words1 = sentence1.split()
    words2 = sentence2.split()

    while words1 and words2 and words1[0] == words2[0]:
        words1.pop(0)
        words2.pop(0)

    while words1 and words2 and words1[-1] == words2[-1]:
        words1.pop()
        words2.pop()

    return not words1 or not words2




### Unit tests below ###
def check(candidate):
	assert candidate("Hello world", "Hello world") == True
	assert candidate("I love coding in Python", "I love coding in Python") == True
	assert candidate(
    "I love coding",
    "I love coding so much that I am doing it for hours",
) == True
	assert candidate(
    "This is a test",
    "This is a different test",
) == True
	assert candidate("I love coding", "I love coding too") == True
	assert candidate("I love coding", "coding I love") == False
	assert candidate(
    "I love coding in Python", "I love coding in Python too"
) == True
	assert candidate("I love coding", "I love coding so much") == True
	assert candidate(
    "I love coding in Java", "I love coding in Java and Python"
) == True
	assert candidate("I love to code", "I love to write code") == True
	assert candidate("The dog is running", "The dog is running") == True
	assert candidate(
    "The quick brown fox jumps over the lazy dog",
    "The quick brown fox jumps over the dog",
) == True
	assert candidate(
    "I love coding in Python", "I love coding in Python and Java"
) == True
	assert candidate("I love coding in Python", "I love coding in Java") == False
	assert candidate("A dog is a type of a pet", "A dog is a pet") == True
	assert candidate("This is a test", "This is a test") == True
	assert candidate("Dog is man's best friend", "Dog is man's best friend") == True
	assert candidate("I love coding in Java", "I love coding in Java") == True
	assert candidate("I love coding", "I love coding in Python") == True
	assert candidate(
    "This is a test", "This is a different test, it's another test"
) == True
	assert candidate("This is awesome", "This is awesome") == True
	assert candidate("I love coding", "Do you love coding?") == False
	assert candidate("Python is great", "Java is great") == False
	assert candidate("Hello world", "Hello there") == False
	assert candidate("I love coding in Python", "I love Python") == True
	assert candidate("This is a test", "This is a different test") == True
	assert candidate("I love coding in Python", "Python is what I love to code in") == False
	assert candidate("I love coding", "I love code") == False
	assert candidate("Python is great", "Python is great") == True
	assert candidate("Dog is man's best friend", "Dog is your best friend") == False
	assert candidate(
    "This is a test", "This is a test with more words") == True
	assert candidate("I love dogs", "I love dogs") == True
	assert candidate("I love coding in Java", "I love coding in Java and Python") == True
	assert candidate("I love coding", "I just love coding") == True
	assert candidate("The sun is blue", "Sun is very blue") == False
	assert candidate("Python is great", "Python is great for data science") == True
	assert candidate("I love coding", "I love to code") == False
def test_check():
	check(are_sentences_similar)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,string
# Metadata Coverage: 100
