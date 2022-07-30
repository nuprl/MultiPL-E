// You are given a string representing a sentence,
// the sentence contains some words separated by a space,
// and you have to return a string that contains the words from the original sentence,
// whose lengths are prime numbers,
// the order of the words in the new string should be the same as the original one.
// Example 1:
// Input: sentence = "This is a test"
// Output: "is"
// Example 2:
// Input: sentence = "lets go for swimming"
// Output: "go for"
// Constraints:
// * 1 <= len(sentence) <= 100
// * sentence contains only letters
func words_in_sentence(sentence: String) -> String {
	fatalError("unimplemented")

}

assert(words_in_sentence(sentence: This is a test) == is)
assert(words_in_sentence(sentence: lets go for swimming) == go for)
assert(words_in_sentence(sentence: there is no place available here) == there is no place)
assert(words_in_sentence(sentence: Hi I am Hussein) == Hi am Hussein)
assert(words_in_sentence(sentence: go for it) == go for it)
assert(words_in_sentence(sentence: here) == )
assert(words_in_sentence(sentence: here is) == is)