# In this problem, you will implement a function that takes two lists of numbers,
# and determines whether it is possible to perform an exchange of elements
# between them to make lst1 a list of only even numbers.
# There is no limit on the number of exchanged elements between lst1 and lst2.
# If it is possible to exchange elements between the lst1 and lst2 to make
# all the elements of lst1 to be even, return "YES".
# Otherwise, return "NO".
# For example:
# >>> exchange([1, 2, 3, 4], [1, 2, 3, 4])
# "YES"
# >>> exchange([1, 2, 3, 4], [1, 5, 3, 4])
# "NO"
# It is assumed that the input lists will be non-empty.
exchange <- function(lst1, lst2) {
    # YOUR CODE HERE
    stop('Not implemented.')
}

test_humaneval <- function() {
candidate <- exchange
    if(!identical(candidate(c(1, 2, 3, 4), c(1, 2, 3, 4)), 'YES')){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 4), c(1, 5, 3, 4)), 'NO')){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 4), c(2, 1, 4, 3)), 'YES')){quit('no', 1)}
    if(!identical(candidate(c(5, 7, 3), c(2, 6, 4)), 'YES')){quit('no', 1)}
    if(!identical(candidate(c(5, 7, 3), c(2, 6, 3)), 'NO')){quit('no', 1)}
    if(!identical(candidate(c(3, 2, 6, 1, 8, 9), c(3, 5, 5, 1, 1, 1)), 'NO')){quit('no', 1)}
    if(!identical(candidate(c(100, 200), c(200, 200)), 'YES')){quit('no', 1)}
}
test_humaneval()