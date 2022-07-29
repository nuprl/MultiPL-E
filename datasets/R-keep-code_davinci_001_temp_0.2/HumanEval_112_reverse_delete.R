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
    if(!identical(candidate('abcde', 'ae'), list('bcd', FALSE))){quit('no', 1)}
    if(!identical(candidate('abcdef', 'b'), list('acdef', FALSE))){quit('no', 1)}
    if(!identical(candidate('abcdedcba', 'ab'), list('cdedc', TRUE))){quit('no', 1)}
    if(!identical(candidate('dwik', 'w'), list('dik', FALSE))){quit('no', 1)}
    if(!identical(candidate('a', 'a'), list('', TRUE))){quit('no', 1)}
    if(!identical(candidate('abcdedcba', ''), list('abcdedcba', TRUE))){quit('no', 1)}
    if(!identical(candidate('abcdedcba', 'v'), list('abcdedcba', TRUE))){quit('no', 1)}
    if(!identical(candidate('vabba', 'v'), list('abba', TRUE))){quit('no', 1)}
    if(!identical(candidate('mamma', 'mia'), list('', TRUE))){quit('no', 1)}
}
test_humaneval()