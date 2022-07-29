# You are given a string representing a sentence,
# the sentence contains some words separated by a space,
# and you have to return a string that contains the words from the original sentence,
# whose lengths are prime numbers,
# the order of the words in the new string should be the same as the original one.
# Example 1:
# Input: sentence = "This is a test"
# Output: "is"
# Example 2:
# Input: sentence = "lets go for swimming"
# Output: "go for"
# Constraints:
# * 1 <= len(sentence) <= 100
# * sentence contains only letters
words_in_sentence <- function(sentence) {
    words <- strsplit(sentence, " ")
    words <- unlist(words)
    words
}

is_prime <- function(n) {
    if (n == 2) {
        return(TRUE)
    }
    if (n %% 2 == 0) {
        return(FALSE)
    }
    for (i in 3:(sqrt(n) + 1)) {
        if (n %% i == 0) {
            return(FALSE)
        }
    }
    return(TRUE)
}

prime_words <- function(sentence) {
    words <- words_in_sentence(sentence)
    prime_words <- vector()
    for (word in words) {
        if (is_prime(length(word))) {
            prime_words <- c(prime_words, word)
        }
    }
    prime_words
}

sentence <- "This is a test"
prime_words(sentence)
sentence <- "lets go for swimming"
prime_words(sentence)


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