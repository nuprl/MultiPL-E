# Given a string s and a natural number n, you have been tasked to implement 
# a function that returns a list of all words from string s that contain exactly 
# n consonants, in order these words appear in the string s.
# If the string s is empty then the function should return an empty list.
# Note: you may assume the input string contains only letters and spaces.
# Examples:
# select_words("Mary had a little lamb", 4) ==> ["little"]
# select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
# select_words("simple white space", 2) ==> []
# select_words("Hello world", 4) ==> ["world"]
# select_words("Uncle sam", 3) ==> ["Uncle"]
select_words <- function(s, n) {
    # your code here
}


test_humaneval <- function() {
candidate <- select_words
    if(!identical(candidate('Mary had a little lamb', 4), c('little'))){quit('no', 1)}
    if(!identical(candidate('Mary had a little lamb', 3), c('Mary', 'lamb'))){quit('no', 1)}
    if(!identical(candidate('simple white space', 2), list())){quit('no', 1)}
    if(!identical(candidate('Hello world', 4), c('world'))){quit('no', 1)}
    if(!identical(candidate('Uncle sam', 3), c('Uncle'))){quit('no', 1)}
    if(!identical(candidate('', 4), list())){quit('no', 1)}
    if(!identical(candidate('a b c d e f', 1), c('b', 'c', 'd', 'f'))){quit('no', 1)}
}
test_humaneval()