def reorder_spaces(text: str) -> str:
    """
    You are given a string text of words that are placed among some number of spaces. Each word consists of one or more lowercase English letters and are separated by at least one space. It's guaranteed that text contains at least one word.
    Rearrange the spaces so that there is an equal number of spaces between every pair of adjacent words and that number is maximized. If you cannot redistribute all the spaces equally, place the extra spaces at the end, meaning the returned string should be the same length as text.
    Return the string after rearranging the spaces.
 
    Example 1:

    Input: text = "  this   is  a sentence "
    Output: "this   is   a   sentence"
    Explanation: There are a total of 9 spaces and 4 words. We can evenly divide the 9 spaces between the words: 9 / (4-1) = 3 spaces.

    Example 2:

    Input: text = " practice   makes   perfect"
    Output: "practice   makes   perfect "
    Explanation: There are a total of 7 spaces and 3 words. 7 / (3-1) = 3 spaces plus 1 extra space. We place this extra space at the end of the string.

 
    Constraints:

    1 <= text.length <= 100
    text consists of lowercase English letters and ' '.
    text contains at least one word.

    """
    ### Canonical solution below ###
    spaces = text.count(' ')
    words = text.split()

    if len(words) == 1:
        return words[0] + ' ' * spaces

    space_between_words = spaces // (len(words) - 1)
    extra_spaces = spaces % (len(words) - 1)
    result = ''

    for i, word in enumerate(words):
        result += word
        if i < len(words) - 1:
            result += ' ' * space_between_words

    result += ' ' * extra_spaces

    return result




### Unit tests below ###
def check(candidate):
	assert candidate("Python     ") == "Python     "
	assert candidate("    Python") == "Python    "
	assert candidate("thequickbrownfoxjumpsoverthelazydog") == "thequickbrownfoxjumpsoverthelazydog"
	assert candidate("Python is a great language") == "Python is a great language"
	assert candidate(
    "  this   is  a sentence "
) == "this   is   a   sentence"
	assert candidate("Python   is   a   great   language   ") == "Python   is   a   great   language   "
	assert candidate("practice makes perfect") == "practice makes perfect"
	assert candidate("   Python is    a great   language   ") == "Python   is   a   great   language   "
	assert candidate(" practice   makes   perfect") == "practice   makes   perfect "
	assert candidate("Python") == "Python"
def test_check():
	check(reorder_spaces)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
