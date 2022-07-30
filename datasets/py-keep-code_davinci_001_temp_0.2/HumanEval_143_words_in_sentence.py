def words_in_sentence(sentence: str) -> str:
    """
    You are given a string representing a sentence,
    the sentence contains some words separated by a space,
    and you have to return a string that contains the words from the original sentence,
    whose lengths are prime numbers,
    the order of the words in the new string should be the same as the original one.

    Example 1:
        Input: sentence = "This is a test"
        Output: "is"

    Example 2:
        Input: sentence = "lets go for swimming"
        Output: "go for"

    Constraints:
        * 1 <= len(sentence) <= 100
        * sentence contains only letters
    """
    words = sentence.split()
    primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    return ' '.join([word for word in words if len(word) in primes])



def check(candidate):
    assert candidate('This is a test') == 'is'
    assert candidate('lets go for swimming') == 'go for'
    assert candidate('there is no place available here') == 'there is no place'
    assert candidate('Hi I am Hussein') == 'Hi am Hussein'
    assert candidate('go for it') == 'go for it'
    assert candidate('here') == ''
    assert candidate('here is') == 'is'

def test_check():
    check(words_in_sentence)

test_check()
