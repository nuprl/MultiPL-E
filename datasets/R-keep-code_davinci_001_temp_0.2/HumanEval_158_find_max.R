# Write a function that accepts a list of strings.
# The list contains different words. Return the word with maximum number
# of unique characters. If multiple strings have maximum number of unique
# characters, return the one which comes first in lexicographical order.
# find_max(["name", "of", "string"]) == "string"
# find_max(["name", "enam", "game"]) == "enam"
# find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
find_max <- function(words) {
    max_len <- 0
    max_word <- ""
    for (word in words) {
        if (length(unique(word)) > max_len) {
            max_len <- length(unique(word))
            max_word <- word
        }
    }
    max_word
}
find_max(c("name", "of", "string"))
find_max(c("name", "enam", "game"))
find_max(c("aaaaaaa", "bb" ,"cc"))


test_humaneval <- function() {
candidate <- find_max
    if(!identical(candidate(c('name', 'of', 'string')), 'string')){quit('no', 1)}
    if(!identical(candidate(c('name', 'enam', 'game')), 'enam')){quit('no', 1)}
    if(!identical(candidate(c('aaaaaaa', 'bb', 'cc')), 'aaaaaaa')){quit('no', 1)}
    if(!identical(candidate(c('abc', 'cba')), 'abc')){quit('no', 1)}
    if(!identical(candidate(c('play', 'this', 'game', 'of', 'footbott')), 'footbott')){quit('no', 1)}
    if(!identical(candidate(c('we', 'are', 'gonna', 'rock')), 'gonna')){quit('no', 1)}
    if(!identical(candidate(c('we', 'are', 'a', 'mad', 'nation')), 'nation')){quit('no', 1)}
    if(!identical(candidate(c('this', 'is', 'a', 'prrk')), 'this')){quit('no', 1)}
    if(!identical(candidate(c('b')), 'b')){quit('no', 1)}
    if(!identical(candidate(c('play', 'play', 'play')), 'play')){quit('no', 1)}
}
test_humaneval()