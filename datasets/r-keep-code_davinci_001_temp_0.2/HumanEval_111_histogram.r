# Given a string representing a space separated lowercase letters, return a dictionary
# of the letter with the most repetition and containing the corresponding count.
# If several letters have the same occurrence, return all of them.
# Example:
# >>> histogram('a b c')
# {'a': 1, 'b': 1, 'c': 1}
# >>> histogram('a b b a')
# {'a': 2, 'b': 2}
# >>> histogram('a b c a b')
# {'a': 2, 'b': 2}
# >>> histogram('b b b b a')
# {'b': 4}
# >>> histogram('')
# {}
histogram <- function(test) {
    # your code here
}


test_humaneval <- function() {
candidate <- histogram
    if(!identical(candidate('a b b a'), list('a' = 2, 'b' = 2))){quit('no', 1)}
    if(!identical(candidate('a b c a b'), list('a' = 2, 'b' = 2))){quit('no', 1)}
    if(!identical(candidate('a b c d g'), list('a' = 1, 'b' = 1, 'c' = 1, 'd' = 1, 'g' = 1))){quit('no', 1)}
    if(!identical(candidate('r t g'), list('r' = 1, 't' = 1, 'g' = 1))){quit('no', 1)}
    if(!identical(candidate('b b b b a'), list('b' = 4))){quit('no', 1)}
    if(!identical(candidate('r t g'), list('r' = 1, 't' = 1, 'g' = 1))){quit('no', 1)}
    if(!identical(candidate(''), list())){quit('no', 1)}
    if(!identical(candidate('a'), list('a' = 1))){quit('no', 1)}
}
test_humaneval()