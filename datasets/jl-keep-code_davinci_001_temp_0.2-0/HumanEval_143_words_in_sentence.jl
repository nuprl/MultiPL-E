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
function words_in_sentence(sentence::String)::String 
    words = split(sentence, " ")
    prime_words = filter(is_prime, map(length, words))
    return join(words[i] for i in prime_words)
end

using Test

@testset begin

candidate = words_in_sentence;
	@test(candidate("This is a test") == "is")
	@test(candidate("lets go for swimming") == "go for")
	@test(candidate("there is no place available here") == "there is no place")
	@test(candidate("Hi I am Hussein") == "Hi am Hussein")
	@test(candidate("go for it") == "go for it")
	@test(candidate("here") == "")
	@test(candidate("here is") == "is")
end
