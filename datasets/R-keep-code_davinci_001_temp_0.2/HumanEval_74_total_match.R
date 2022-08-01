# Write a function that accepts two lists of strings and returns the list that has 
# total number of chars in the all strings of the list less than the other list.
# if the two lists have the same number of chars, return the first list.
# Examples
# total_match([], []) ➞ []
# total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
# total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
# total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
# total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
total_match <- function(lst1, lst2) {
    if (sum(sapply(lst1, nchar)) < sum(sapply(lst2, nchar))) {
        return(lst1)
    } else if (sum(sapply(lst1, nchar)) > sum(sapply(lst2, nchar))) {
        return(lst2)
    } else {
        return(lst1)
    }
}
total_match([], [])
total_match(['hi', 'admin'], ['hI', 'Hi'])
total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project'])
total_match(['hi', 'admin'], ['hI', 'hi', 'hi'])
total_match(['4'], ['1', '2', '3', '4', '5'])


test_humaneval <- function() {
candidate <- total_match
    if(!identical(candidate(list(), list()), list())){quit('no', 1)}
    if(!identical(candidate(c('hi', 'admin'), c('hi', 'hi')), c('hi', 'hi'))){quit('no', 1)}
    if(!identical(candidate(c('hi', 'admin'), c('hi', 'hi', 'admin', 'project')), c('hi', 'admin'))){quit('no', 1)}
    if(!identical(candidate(c('4'), c('1', '2', '3', '4', '5')), c('4'))){quit('no', 1)}
    if(!identical(candidate(c('hi', 'admin'), c('hI', 'Hi')), c('hI', 'Hi'))){quit('no', 1)}
    if(!identical(candidate(c('hi', 'admin'), c('hI', 'hi', 'hi')), c('hI', 'hi', 'hi'))){quit('no', 1)}
    if(!identical(candidate(c('hi', 'admin'), c('hI', 'hi', 'hii')), c('hi', 'admin'))){quit('no', 1)}
    if(!identical(candidate(list(), c('this')), list())){quit('no', 1)}
    if(!identical(candidate(c('this'), list()), list())){quit('no', 1)}
}
test_humaneval()