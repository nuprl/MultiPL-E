def to_goat_latin(sentence: str) -> str:
    """
    You are given a string sentence that consist of words separated by spaces. Each word consists of lowercase and uppercase letters only.
    We would like to convert the sentence to "Goat Latin" (a made-up language similar to Pig Latin.) The rules of Goat Latin are as follows:

    If a word begins with a vowel ('a', 'e', 'i', 'o', or 'u'), append "ma" to the end of the word.


    For example, the word "apple" becomes "applema".


    If a word begins with a consonant (i.e., not a vowel), remove the first letter and append it to the end, then add "ma".

    For example, the word "goat" becomes "oatgma".


    Add one letter 'a' to the end of each word per its word index in the sentence, starting with 1.

    For example, the first word gets "a" added to the end, the second word gets "aa" added to the end, and so on.



    Return the final sentence representing the conversion from sentence to Goat Latin.
 
    Example 1:
    Input: sentence = "I speak Goat Latin"
    Output: "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"
    Example 2:
    Input: sentence = "The quick brown fox jumped over the lazy dog"
    Output: "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa umpedjmaaaaaa overmaaaaaaa hetmaaaaaaaa azylmaaaaaaaaa ogdmaaaaaaaaaa"

 
    Constraints:

    1 <= sentence.length <= 150
    sentence consists of English letters and spaces.
    sentence has no leading or trailing spaces.
    All the words in sentence are separated by a single space.

    """
    ### Canonical solution below ###
    words = sentence.split()
    vowels = set("AEIOUaeiou")
    result = []

    for i, word in enumerate(words):
        if word[0] not in vowels:
            word = word[1:] + word[0]
        result.append(word + "ma" + "a" * (i + 1))

    return ' '.join(result)




### Unit tests below ###
def check(candidate):
	assert candidate("Data Science") == "ataDmaa cienceSmaaa"
	assert candidate("Google") == "oogleGmaa"
	assert candidate("I speak Goat Latin") == "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"
	assert candidate("Hello World") == "elloHmaa orldWmaaa"
	assert candidate("Deep Learning") == "eepDmaa earningLmaaa"
	assert candidate(
    "I speak Goat Latin"
) == "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"
	assert candidate("Computer Vision") == "omputerCmaa isionVmaaa"
	assert candidate(
    "The quick brown fox jumped over the lazy dog"
) == "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa umpedjmaaaaaa overmaaaaaaa hetmaaaaaaaa azylmaaaaaaaaa ogdmaaaaaaaaaa"
	assert candidate("The quick brown fox jumped over the lazy dog") == "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa umpedjmaaaaaa overmaaaaaaa hetmaaaaaaaa azylmaaaaaaaaa ogdmaaaaaaaaaa"
	assert candidate("Big Data") == "igBmaa ataDmaaa"
	assert candidate("Neural Networks") == "euralNmaa etworksNmaaa"
	assert candidate("Internet of Things") == "Internetmaa ofmaaa hingsTmaaaa"
	assert candidate("Machine Learning") == "achineMmaa earningLmaaa"
	assert candidate(
    "I speak Goat Latin") == "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"
	assert candidate("Natural Language Processing") == "aturalNmaa anguageLmaaa rocessingPmaaaa"
	assert candidate("Information Retrieval") == "Informationmaa etrievalRmaaa"
	assert candidate(
    "The quick brown fox jumped over the lazy dog") == "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa umpedjmaaaaaa overmaaaaaaa hetmaaaaaaaa azylmaaaaaaaaa ogdmaaaaaaaaaa"
	assert candidate("The quick brown fox") == "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa"
	assert candidate("Cloud Computing") == "loudCmaa omputingCmaaa"
def test_check():
	check(to_goat_latin)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
