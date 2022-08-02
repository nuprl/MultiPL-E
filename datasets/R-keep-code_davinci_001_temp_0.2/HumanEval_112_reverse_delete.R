# Task
# We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
# then check if the result string is palindrome.
# A string is called palindrome if it reads the same backward as forward.
# You should return a tuple containing the result string and True/False for the check.
# Example
# For s = "abcde", c = "ae", the result should be ('bcd',False)
# For s = "abcdef", c = "b"  the result should be ('acdef',False)
# For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
reverse_delete <- function(s, c) {
    # your code here
    return(s)
}


test_humaneval <- function() {
candidate <- reverse_delete
    if(!identical(candidate('abcde', 'ae'), c('bcd', FALSE))){quit('no', 1)}
    if(!identical(candidate('abcdef', 'b'), c('acdef', FALSE))){quit('no', 1)}
    if(!identical(candidate('abcdedcba', 'ab'), c('cdedc', TRUE))){quit('no', 1)}
    if(!identical(candidate('dwik', 'w'), c('dik', FALSE))){quit('no', 1)}
    if(!identical(candidate('a', 'a'), c('', TRUE))){quit('no', 1)}
    if(!identical(candidate('abcdedcba', ''), c('abcdedcba', TRUE))){quit('no', 1)}
    if(!identical(candidate('abcdedcba', 'v'), c('abcdedcba', TRUE))){quit('no', 1)}
    if(!identical(candidate('vabba', 'v'), c('abba', TRUE))){quit('no', 1)}
    if(!identical(candidate('mamma', 'mia'), c('', TRUE))){quit('no', 1)}
}
test_humaneval()