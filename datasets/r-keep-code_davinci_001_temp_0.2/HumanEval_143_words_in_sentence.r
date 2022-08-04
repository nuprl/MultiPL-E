# You are given a string representing a sentence,
# the sentence contains some words separated by a space,
# and you have to return a string that contains the words from the original sentence,
# whose lengths are prime numbers,
# the order of the words in the new string should be the same as the original one.
# Example 1:
# >>> words_in_sentence("This is a test")
# "is"
# Example 2:
# >>> words_in_sentence("lets go for swimming")
# "go for"
# Constraints:
# * 1 <= len(sentence) <= 100
# * sentence contains only letters
words_in_sentence <- function(sentence) {
    words <- strsplit(sentence, " ")[[1]]
    prime_words <- words[sapply(words, is.prime)]
    paste(prime_words, collapse = " ")
}
words_in_sentence("This is a test")
words_in_sentence("lets go for swimming")


test_humaneval <- function() {
candidate <- words_in_sentence
    if(!identical(candidate('This is a test'), 'is')){quit('no', 1)}
    if(!identical(candidate('lets go for swimming'), 'go for')){quit('no', 1)}
    if(!identical(candidate('there is no place available here'), 'there is no place')){quit('no', 1)}
    if(!identical(candidate('Hi I am Hussein'), 'Hi am Hussein')){quit('no', 1)}
    if(!identical(candidate('go for it'), 'go for it')){quit('no', 1)}
    if(!identical(candidate('here'), '')){quit('no', 1)}
    if(!identical(candidate('here is'), 'is')){quit('no', 1)}
}
test_humaneval()