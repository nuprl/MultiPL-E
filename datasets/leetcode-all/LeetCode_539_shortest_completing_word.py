from typing import List


def shortest_completing_word(license_plate: str, words: List[str]) -> str:
    """
    Given a string licensePlate and an array of strings words, find the shortest completing word in words.
    A completing word is a word that contains all the letters in licensePlate. Ignore numbers and spaces in licensePlate, and treat letters as case insensitive. If a letter appears more than once in licensePlate, then it must appear in the word the same number of times or more.
    For example, if licensePlate = "aBc 12c", then it contains letters 'a', 'b' (ignoring case), and 'c' twice. Possible completing words are "abccdef", "caaacab", and "cbca".
    Return the shortest completing word in words. It is guaranteed an answer exists. If there are multiple shortest completing words, return the first one that occurs in words.
 
    Example 1:

    Input: licensePlate = "1s3 PSt", words = ["step","steps","stripe","stepple"]
    Output: "steps"
    Explanation: licensePlate contains letters 's', 'p', 's' (ignoring case), and 't'.
    "step" contains 't' and 'p', but only contains 1 's'.
    "steps" contains 't', 'p', and both 's' characters.
    "stripe" is missing an 's'.
    "stepple" is missing an 's'.
    Since "steps" is the only word containing all the letters, that is the answer.

    Example 2:

    Input: licensePlate = "1s3 456", words = ["looks","pest","stew","show"]
    Output: "pest"
    Explanation: licensePlate only contains the letter 's'. All the words contain 's', but among these "pest", "stew", and "show" are shortest. The answer is "pest" because it is the word that appears earliest of the 3.

 
    Constraints:

    1 <= licensePlate.length <= 7
    licensePlate contains digits, letters (uppercase or lowercase), or space ' '.
    1 <= words.length <= 1000
    1 <= words[i].length <= 15
    words[i] consists of lower case English letters.

    """
    ### Canonical solution below ###
    target = [0] * 26
    for c in license_plate:
        if c.isalpha():
            target[ord(c.lower()) - ord('a')] += 1

    result = ""
    for word in words:
        current = [0] * 26
        for c in word:
            if c.isalpha():
                current[ord(c.lower()) - ord('a')] += 1

        if all(a <= b for a, b in zip(target, current)) and (not result or len(word) < len(result)):
            result = word

    return result




### Unit tests below ###
def check(candidate):
	assert candidate("Ah71752", ["suggest","letter","of","husband","easy","education","drug","prevent","writer","old"]) == "husband"
	assert candidate("1s3 456", ["looks","pest","stew","show"]) == "pest"
	assert candidate("1s3 PSt", ["step", "steps", "stripe", "stepple"]) == "steps"
	assert candidate("iMSlpe4", ["claim","consumer","student","camera","public","never","wonder","simple","thought","use"]) == "simple"
	assert candidate("iMSlpe4", ["consumer","student","effort","simple","thought","use"]) == "simple"
	assert candidate("Lt08461", ["letter","better","mention","structure","industry","available","figure","watch","define","level","middle","choose","letter","glass","answer"]) == "letter"
	assert candidate("1s3 456", ["looks", "pest", "stew", "show"]) == "pest"
	assert candidate("OgEu755", ["enough","these","play","wide","wonder","box","arrive","money","tax","thus"]) == "enough"
	assert candidate("G98316nOu", ["kind","report","enough","government","level","possible","provide","effect","enough","yet","line","produce","stay","my","experience"]) == "enough"
def test_check():
	check(shortest_completing_word)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,string
# Metadata Coverage: 100
