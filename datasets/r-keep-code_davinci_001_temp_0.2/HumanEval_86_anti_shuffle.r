# Write a function that takes a string and returns an ordered version of it.
# Ordered version of string, is a string where all words (separated by space)
# are replaced by a new word where all the characters arranged in
# ascending order based on ascii value.
# Note: You should keep the order of words and blank spaces in the sentence.
# For example:
# anti_shuffle('Hi') returns 'Hi'
# anti_shuffle('hello') returns 'ehllo'
# anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
anti_shuffle <- function(s) {
    # your code here
}


test_humaneval <- function() {
candidate <- anti_shuffle
    if(!identical(candidate('Hi'), 'Hi')){quit('no', 1)}
    if(!identical(candidate('hello'), 'ehllo')){quit('no', 1)}
    if(!identical(candidate('number'), 'bemnru')){quit('no', 1)}
    if(!identical(candidate('abcd'), 'abcd')){quit('no', 1)}
    if(!identical(candidate('Hello World!!!'), 'Hello !!!Wdlor')){quit('no', 1)}
    if(!identical(candidate(''), '')){quit('no', 1)}
    if(!identical(candidate('Hi. My name is Mister Robot. How are you?'), '.Hi My aemn is Meirst .Rboot How aer ?ouy')){quit('no', 1)}
}
test_humaneval()