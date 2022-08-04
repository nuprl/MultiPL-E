# Task
# We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
# then check if the result string is palindrome.
# A string is called palindrome if it reads the same backward as forward.
# You should return a tuple containing the result string and True/False for the check.
# Example
# >>> reverse_delete("abcde", "ae")
# ('bcd',False)
# >>> reverse_delete("abcdef", "b")
# ('acdef',False)
# >>> reverse_delete("abcdedcba", "ab")
# ('cdedc',True)
reverse_delete <- function(s, c) {
    s <- gsub(c, '', s)
    if (tolower(s) == tolower(str_reverse(s))) {
        return(c(s, TRUE))
    } else {
        return(c(s, FALSE))
    }
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