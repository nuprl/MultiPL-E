def count_segments(s: str) -> int:
    """
    Given a string s, return the number of segments in the string.
    A segment is defined to be a contiguous sequence of non-space characters.
 
    Example 1:

    Input: s = "Hello, my name is John"
    Output: 5
    Explanation: The five segments are ["Hello,", "my", "name", "is", "John"]

    Example 2:

    Input: s = "Hello"
    Output: 1

 
    Constraints:

    0 <= s.length <= 300
    s consists of lowercase and uppercase English letters, digits, or one of the following characters "!@#$%^&*()_+-=',.:".
    The only space character in s is ' '.

    """
    ### Canonical solution below ###
    return len(s.split())




### Unit tests below ###
def check(candidate):
	assert candidate("a b c " + " " * 150) == 3
	assert candidate(" " * 300) == 0
	assert candidate("a" + " " + " " + "b") == 2
	assert candidate(" " * 150 + "a b c") == 3
	assert candidate(" a b ") == 2
	assert candidate(" " * 50 + "a" * 49 + " " + "b" * 49 + " " * 50) == 2
	assert candidate("a ") == 1
	assert candidate("This_sentence_has_underscores.") == 1
	assert candidate("!@#$%^&*()_+-=',.:" + " " * 295) == 1
	assert candidate("a b c") == 3
	assert candidate("a" * 150 + " " + "b" * 150) == 2
	assert candidate("You are my hero!") == 4
	assert candidate("!@#$%^&*()_+-=',.: ") == 1
	assert candidate("This is a test sentence.") == 5
	assert candidate(" ") == 0
	assert candidate("Starts with a space Hello") == 5
	assert candidate("This sentence has multiple     spaces.") == 5
	assert candidate("a" * 149 + " " + "b" * 149) == 2
	assert candidate("  Hello, my name is John") == 5
	assert candidate(" a b c ") == 3
	assert candidate("This sentence has a semicolon; like so.") == 7
	assert candidate("a b c ") == 3
	assert candidate("This,sentence,has,commas.") == 1
	assert candidate("   " * 300 + "Hello") == 1
	assert candidate("This! Sentence! Has! Exclamation! Points!") == 5
	assert candidate("Multiple     spaces") == 2
	assert candidate(" " + " " + " ") == 0
	assert candidate("This sentence has -minus- symbols.") == 5
	assert candidate("This  sentence  has  multiple  spaces.") == 5
	assert candidate("  Hello, my name is John  ") == 5
	assert candidate("a" * 149 + " " + "b" * 150 + " " + "c") == 3
	assert candidate(" " * 300 + "This sentence has multiple spaces.") == 5
	assert candidate("Hello") == 1
	assert candidate("This@sentence@has@atsymbols.") == 1
	assert candidate("Hello, my name is John") == 5
	assert candidate("This sentence has multiple... periods.") == 5
	assert candidate("b" + " " * 248 + " a") == 2
	assert candidate("a b ") == 2
	assert candidate("This sentence has +plus+ symbols.") == 5
	assert candidate("Hello ") == 1
	assert candidate(
    "a" * 150 + " " + "b" * 150 + " " + "c" + " " + "d" * 150) == 4
	assert candidate("b" + " " * 249) == 1
	assert candidate("  a  b  ") == 2
	assert candidate("a" * 300) == 1
	assert candidate("This sentence has a colon: like so.") == 7
	assert candidate(" a ") == 1
	assert candidate("a") == 1
	assert candidate(" Hello, my name is John") == 5
	assert candidate("Ends with a space ") == 4
	assert candidate("Just one word") == 3
	assert candidate("Hello, my name is John ") == 5
	assert candidate(" a") == 1
	assert candidate("") == 0
	assert candidate("Hello, my name is John  ") == 5
	assert candidate("I'm a superhero") == 3
def test_check():
	check(count_segments)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
