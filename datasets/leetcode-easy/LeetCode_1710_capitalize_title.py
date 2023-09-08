def capitalize_title(title: str) -> str:
    """
    You are given a string title consisting of one or more words separated by a single space, where each word consists of English letters. Capitalize the string by changing the capitalization of each word such that:

    If the length of the word is 1 or 2 letters, change all letters to lowercase.
    Otherwise, change the first letter to uppercase and the remaining letters to lowercase.

    Return the capitalized title.
 
    Example 1:

    Input: title = "capiTalIze tHe titLe"
    Output: "Capitalize The Title"
    Explanation:
    Since all the words have a length of at least 3, the first letter of each word is uppercase, and the remaining letters are lowercase.

    Example 2:

    Input: title = "First leTTeR of EACH Word"
    Output: "First Letter of Each Word"
    Explanation:
    The word "of" has length 2, so it is all lowercase.
    The remaining words have a length of at least 3, so the first letter of each remaining word is uppercase, and the remaining letters are lowercase.

    Example 3:

    Input: title = "i lOve leetcode"
    Output: "i Love Leetcode"
    Explanation:
    The word "i" has length 1, so it is lowercase.
    The remaining words have a length of at least 3, so the first letter of each remaining word is uppercase, and the remaining letters are lowercase.

 
    Constraints:

    1 <= title.length <= 100
    title consists of words separated by a single space without any leading or trailing spaces.
    Each word consists of uppercase and lowercase English letters and is non-empty.

    """
    ### Canonical solution below ###
    return ' '.join([word.capitalize() for word in title.split(' ')])




### Unit tests below ###
def check(candidate):
	assert candidate("yet another test case") == "Yet Another Test Case"
	assert candidate("not every word") == "Not Every Word"
	assert candidate("eight letter word") == "Eight Letter Word"
	assert candidate("first second third") == "First Second Third"
	assert candidate("python programming") == "Python Programming"
	assert candidate("makes my tests pass") == "Makes My Tests Pass"
	assert candidate("title capitalization") == "Title Capitalization"
	assert candidate("how are you") == "How Are You"
	assert candidate("first") == "First"
	assert candidate(
    "sentence with a single word") == "Sentence With A Single Word"
	assert candidate(
    "first second third") == "First Second Third"
	assert candidate("very first letter should be capitalized") == "Very First Letter Should Be Capitalized"
	assert candidate(
    "all caps WORDS and lowercase words") == "All Caps Words And Lowercase Words"
	assert candidate("why is this not working") == "Why Is This Not Working"
	assert candidate(
    "this is a title") == "This Is A Title"
	assert candidate("make sure to capitalize every word") == "Make Sure To Capitalize Every Word"
	assert candidate("one two three four five six seven") == "One Two Three Four Five Six Seven"
	assert candidate("fifth") == "Fifth"
	assert candidate("one two three four five") == "One Two Three Four Five"
	assert candidate("second") == "Second"
	assert candidate("one word is written") == "One Word Is Written"
	assert candidate(
    "another test case") == "Another Test Case"
	assert candidate("should be capitalized") == "Should Be Capitalized"
	assert candidate("fourth") == "Fourth"
	assert candidate("capitalize this word") == "Capitalize This Word"
	assert candidate("capitalize every word") == "Capitalize Every Word"
	assert candidate("the first letter of word should be capitalized") == "The First Letter Of Word Should Be Capitalized"
	assert candidate("multiple words in one case") == "Multiple Words In One Case"
	assert candidate("final test case") == "Final Test Case"
	assert candidate("this is a title") == "This Is A Title"
	assert candidate("capiTalIze tHe titLe") == "Capitalize The Title"
	assert candidate("one word") == "One Word"
	assert candidate("third") == "Third"
	assert candidate("first letter should be capitalized") == "First Letter Should Be Capitalized"
	assert candidate(
    "test case involving multiple words") == "Test Case Involving Multiple Words"
	assert candidate(
    "yet another test case") == "Yet Another Test Case"
	assert candidate(
    "how to capitalize every word in a string") == "How To Capitalize Every Word In A String"
	assert candidate("capitalize the first word") == "Capitalize The First Word"
	assert candidate(
    "this is only one word so it should be capitalized") == "This Is Only One Word So It Should Be Capitalized"
	assert candidate("one more test case") == "One More Test Case"
	assert candidate(
    "one more test case with multiple words in it") == "One More Test Case With Multiple Words In It"
	assert candidate("first letter") == "First Letter"
	assert candidate("hello world") == "Hello World"
	assert candidate("is this finally working?") == "Is This Finally Working?"
	assert candidate("one") == "One"
	assert candidate(
    "final test case") == "Final Test Case"
	assert candidate("i lOve leetcode") == "I Love Leetcode"
	assert candidate("testing multiple words") == "Testing Multiple Words"
	assert candidate("words words") == "Words Words"
	assert candidate("Title Case String") == "Title Case String"
	assert candidate("one two three four five six") == "One Two Three Four Five Six"
	assert candidate(
    "one more test case with multiple small words") == "One More Test Case With Multiple Small Words"
	assert candidate("words") == "Words"
	assert candidate("random test cases") == "Random Test Cases"
	assert candidate("test case") == "Test Case"
	assert candidate(
    "all words should be capitalized") == "All Words Should Be Capitalized"
	assert candidate(
    "one more test case") == "One More Test Case"
	assert candidate("two words") == "Two Words"
	assert candidate(
    "first second and third") == "First Second And Third"
	assert candidate("Capitalize This Word") == "Capitalize This Word"
	assert candidate("let us see how this works") == "Let Us See How This Works"
	assert candidate("title case test") == "Title Case Test"
	assert candidate("") == ""
	assert candidate("dash separated words") == "Dash Separated Words"
	assert candidate(
    "title with multiple small words and another word") == "Title With Multiple Small Words And Another Word"
	assert candidate(
    "this is a title with multiple words in it") == "This Is A Title With Multiple Words In It"
	assert candidate("the first letter should be capitalized") == "The First Letter Should Be Capitalized"
	assert candidate(
    "test case with an extraordinarily long sentence") == "Test Case With An Extraordinarily Long Sentence"
	assert candidate(
    "capitalize the first word of each sentence") == "Capitalize The First Word Of Each Sentence"
	assert candidate("another test case") == "Another Test Case"
def test_check():
	check(capitalize_title)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
