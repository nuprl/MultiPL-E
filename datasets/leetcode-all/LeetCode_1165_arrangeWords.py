def arrangeWords(text: str) -> str:
    """
    Given a sentence text (A sentence is a string of space-separated words) in the following format:

    First letter is in upper case.
    Each word in text are separated by a single space.

    Your task is to rearrange the words in text such that all words are rearranged in an increasing order of their lengths. If two words have the same length, arrange them in their original order.
    Return the new text following the format shown above.
 
    Example 1:

    Input: text = "Leetcode is cool"
    Output: "Is cool leetcode"
    Explanation: There are 3 words, "Leetcode" of length 8, "is" of length 2 and "cool" of length 4.
    Output is ordered by length and the new first word starts with capital letter.

    Example 2:

    Input: text = "Keep calm and code on"
    Output: "On and keep calm code"
    Explanation: Output is ordered as follows:
    "On" 2 letters.
    "and" 3 letters.
    "keep" 4 letters in case of tie order by position in original text.
    "calm" 4 letters.
    "code" 4 letters.

    Example 3:

    Input: text = "To be or not to be"
    Output: "To be or to be not"

 
    Constraints:

    text begins with a capital letter and then contains lowercase letters and single space between words.
    1 <= text.length <= 10^5

    """
    ### Canonical solution below ###
    words = text.split()
    words[0] = words[0].lower()
    words.sort(key=len)
    words[0] = words[0].capitalize()
    return ' '.join(words)




### Unit tests below ###
def check(candidate):
	assert candidate("Writing unit tests can be very helpful") == "Be can unit very tests writing helpful"
	assert candidate("We are the champions") == "We are the champions"
	assert candidate("This is a simple test") == "A is this test simple"
	assert candidate("I love programming") == "I love programming"
	assert candidate("To be or not to be") == "To be or to be not"
	assert candidate("Leetcode is cool") == "Is cool leetcode"
	assert candidate(
    "Keep calm and code on") == "On and keep calm code"
	assert candidate("Keep calm and code on") == "On and keep calm code"
	assert candidate("I love Python programming") == "I love Python programming"
def test_check():
	check(arrangeWords)
# Metadata Difficulty: Medium
# Metadata Topics: string,sorting
# Metadata Coverage: 100
