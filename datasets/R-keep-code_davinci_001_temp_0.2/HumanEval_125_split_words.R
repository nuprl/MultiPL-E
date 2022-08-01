# Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
# should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
# alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
# Examples
# split_words("Hello world!") ➞ ["Hello", "world!"]
# split_words("Hello,world!") ➞ ["Hello", "world!"]
# split_words("abcdef") == 3
split_words <- function(txt) {
    if (grepl(" ", txt)) {
        return(strsplit(txt, " "))
    } else if (grepl(",", txt)) {
        return(strsplit(txt, ","))
    } else {
        return(sum(c(1:26) %% 2 != 0))
    }
}


test_humaneval <- function() {
candidate <- split_words
    if(!identical(candidate('Hello world!'), c('Hello', 'world!'))){quit('no', 1)}
    if(!identical(candidate('Hello,world!'), c('Hello', 'world!'))){quit('no', 1)}
    if(!identical(candidate('Hello world,!'), c('Hello', 'world,!'))){quit('no', 1)}
    if(!identical(candidate('Hello,Hello,world !'), c('Hello,Hello,world', '!'))){quit('no', 1)}
    if(!identical(candidate('abcdef'), 3)){quit('no', 1)}
    if(!identical(candidate('aaabb'), 2)){quit('no', 1)}
    if(!identical(candidate('aaaBb'), 1)){quit('no', 1)}
    if(!identical(candidate(''), 0)){quit('no', 1)}
}
test_humaneval()