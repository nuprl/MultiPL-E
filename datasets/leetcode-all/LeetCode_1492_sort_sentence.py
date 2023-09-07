def sort_sentence(s: str) -> str:
    """
    A sentence is a list of words that are separated by a single space with no leading or trailing spaces. Each word consists of lowercase and uppercase English letters.
    A sentence can be shuffled by appending the 1-indexed word position to each word then rearranging the words in the sentence.

    For example, the sentence "This is a sentence" can be shuffled as "sentence4 a3 is2 This1" or "is2 sentence4 This1 a3".

    Given a shuffled sentence s containing no more than 9 words, reconstruct and return the original sentence.
 
    Example 1:

    Input: s = "is2 sentence4 This1 a3"
    Output: "This is a sentence"
    Explanation: Sort the words in s to their original positions "This1 is2 a3 sentence4", then remove the numbers.

    Example 2:

    Input: s = "Myself2 Me1 I4 and3"
    Output: "Me Myself and I"
    Explanation: Sort the words in s to their original positions "Me1 Myself2 and3 I4", then remove the numbers.

 
    Constraints:

    2 <= s.length <= 200
    s consists of lowercase and uppercase English letters, spaces, and digits from 1 to 9.
    The number of words in s is between 1 and 9.
    The words in s are separated by a single space.
    s contains no leading or trailing spaces.
    """
    ### Canonical solution below ###
    tokens = s.split()
    words = [''] * len(tokens)

    for token in tokens:
        pos = int(token[-1]) - 1
        words[pos] = token[:-1]

    return ' '.join(words)




### Unit tests below ###
def check(candidate):
	assert candidate("Coding1 is2 fun3") == "Coding is fun"
	assert candidate(
    "is2 sentence4 This1 a3"
) == "This is a sentence", "Negative indexing with number in the middle of word."
	assert candidate(
    "Myself2 Me1 I4 and3"
) == "Me Myself and I", "Negative indexing with number in the beginning of word."
	assert candidate("Python1 interpreters2 are3 available4 for5 many6 operating7 systems8") == "Python interpreters are available for many operating systems"
	assert candidate("Python1 is2 an3 interpreted4 high-level5 general-purpose6 programming7 language8") == "Python is an interpreted high-level general-purpose programming language"
	assert candidate("Python1 is2 dynamically3 typed4 and5 garbage6 collected7") == "Python is dynamically typed and garbage collected"
	assert candidate(
    "Myself2 Me1 I4 and3"
) == "Me Myself and I", "Do not mix the positions of the words. Try to understand how the sentences are sorted and emulate the same logic."
	assert candidate("is2 sentence4 This1 a3") == "This is a sentence"
	assert candidate(
    "a3 is2 This1 sentence4"
) == "This is a sentence", "Negative indexing with number in the middle of word."
	assert candidate("I1 am2 a3 Python4 programmer5") == "I am a Python programmer"
	assert candidate("Its1 design2 philosophy3 emphasizes4 code5 readability6") == "Its design philosophy emphasizes code readability"
	assert candidate(
    "is2 sentence4 a3 This1"
) == "This is a sentence", "Negative indexing with number in the middle of word."
	assert candidate(
    "is2 a3 This1 sentence4"
) == "This is a sentence", "Negative indexing with number in the beginning of word."
	assert candidate(("Myself2 Me1 I4 and3")) == "Me Myself and I"
	assert candidate(
    "Myself2 Me1 I4 and3"
) == "Me Myself and I", "Negative indexing with number in the end of word."
	assert candidate("This1 is2 a3 test4") == "This is a test"
	assert candidate(
    "sentence4 This1 a3 is2"
) == "This is a sentence", "Negative indexing with number in the end of word."
	assert candidate(
    "a3 sentence4 This1 is2"
) == "This is a sentence", "Negative indexing with number in the end of word."
	assert candidate(
    "sentence4 a3 is2 This1"
) == "This is a sentence", "Negative indexing with number in the beginning of word."
def test_check():
	check(sort_sentence)
# Metadata Difficulty: Easy
# Metadata Topics: string,sorting
# Metadata Coverage: 100
