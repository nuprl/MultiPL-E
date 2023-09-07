def detectCapitalUse(word: str) -> bool:
    """
    We define the usage of capitals in a word to be right when one of the following cases holds:

    All letters in this word are capitals, like "USA".
    All letters in this word are not capitals, like "leetcode".
    Only the first letter in this word is capital, like "Google".

    Given a string word, return true if the usage of capitals in it is right.
 
    Example 1:
    Input: word = "USA"
    Output: true
    Example 2:
    Input: word = "FlaG"
    Output: false

 
    Constraints:

    1 <= word.length <= 100
    word consists of lowercase and uppercase English letters.

    """
    ### Canonical solution below ###
    numCapital = sum(1 for c in word if c.isupper())
    return numCapital == 0 or numCapital == len(word) or (numCapital == 1 and word[0].isupper())




### Unit tests below ###
def check(candidate):
	assert candidate(
    "GooGLE") == False, "First letter must be uppercase if all letters are uppercase"
	assert candidate("up") == True, "! Wrong answer !, Should be True"
	assert candidate("BA") == True
	assert candidate("U") == True
	assert candidate("FflFl") == False
	assert candidate("Google") == True
	assert candidate("lowercasefollowedbyuppercase") == True
	assert candidate("sINGLElOWER") == False
	assert candidate("f") == True
	assert candidate("u") == True
	assert candidate("USA") == True
	assert candidate("uP") == False
	assert candidate("fl") == True
	assert candidate(
    "UPPERCASE") == True, "! Wrong answer !, Should be True"
	assert candidate("FLFL") == True
	assert candidate("mIxEdCaSe") == False
	assert candidate("bAA") == False
	assert candidate("Mixedcase") == True
	assert candidate("firstLOWER") == False
	assert candidate(
    "BaAj") == False
	assert candidate("USA") == True, "! Wrong answer !, Should be True"
	assert candidate("FlaG") == False
	assert candidate("ALLUPPER") == True
	assert candidate(
    "USAisAGreatCountry") == False, "If all letters are not uppercase, the first letter must not be uppercase"
	assert candidate("Up") == True
	assert candidate("Ba") == True, "! Wrong answer !, Should be True"
	assert candidate("b") == True
	assert candidate("BaA") == False
	assert candidate("UP") == True
	assert candidate(
    "mORElOWERCASELETTERS") == False
	assert candidate("Lowercasefollowedbyuppercase") == True
	assert candidate(
    "lowerUPPER") == False, "This is a test case to see if the candidate function works when the string does not start with an uppercase letter."
	assert candidate("up") == True
	assert candidate("USaa") == False
	assert candidate("UPPERCASE") == True
	assert candidate("bA") == False
	assert candidate("uPPERfIRSTlOWERrEST") == False
	assert candidate(
    "USA") == True, "! Wrong answer !, Should be True"
	assert candidate(
    "UPPERlower") == False, "This is a test case to see if the candidate function works when the string does not end with an uppercase letter."
	assert candidate("FLfl") == False
	assert candidate("F") == True
	assert candidate("B") == True
	assert candidate(
    "uSaisAGreatCountry") == False, "The first letter must be uppercase if only the first letter is uppercase"
	assert candidate(
    "USA") == True, "First letter must be uppercase if all letters are uppercase"
	assert candidate("MiXedCAPS") == False
	assert candidate("alllower") == True
	assert candidate(
    "USaisAGreatCountry") == False, "The first letter must be uppercase if only the first letter is uppercase"
	assert candidate(
    "UPPERCASEFOLLOWEDBYLOWERCASE") == True, "! Wrong answer !, Should be True"
	assert candidate("lowercase") == True, "! Wrong answer !, Should be True"
	assert candidate("BAA") == True
	assert candidate(
    "GooglE") == False, "If all letters are not uppercase, the first letter must not be uppercase"
	assert candidate(
    "uSA") == False, "If all letters are not uppercase, the first letter must not be uppercase"
	assert candidate(
    "GoOgle") == False
	assert candidate("Capitalized") == True
	assert candidate("Fl") == True
	assert candidate("uPPERcASEfOLLOWedbYlOWERcASE") == False
	assert candidate("Baa") == True
	assert candidate("UPPERCASEFOLLOWEDBYLOWERCASE") == True, "! Wrong answer !, Should be True"
	assert candidate("FLf") == False
	assert candidate("CAPS") == True
	assert candidate("Lowercase") == True, "! Wrong answer !, Should be True"
	assert candidate("flfl") == True
	assert candidate("UPPERCASEFOLLOWEDBYLOWERCASE") == True
	assert candidate("lower") == True
	assert candidate("fLFl") == False
	assert candidate("UPPERfIRSTlOWERrEST") == False
	assert candidate("bAa") == False
	assert candidate("MULTIPLEuPPER") == False
	assert candidate(
    "Google") == True, "Other letters can be either uppercase or lowercase"
	assert candidate("Up") == True, "! Wrong answer !, Should be True"
	assert candidate("uPPERCASE") == False, "! Wrong answer !, Should be False"
	assert candidate("firstCapital") == False
	assert candidate("Ba") == True
	assert candidate("leetcode") == True
	assert candidate(
    "G") == True, "! Wrong answer !, Should be True"
	assert candidate("U") == True, "! Wrong answer !, Should be True"
def test_check():
	check(detectCapitalUse)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
