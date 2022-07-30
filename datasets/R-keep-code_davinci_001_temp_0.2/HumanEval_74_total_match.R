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
    if(!identical(candidate(list('hi', 'admin'), list('hi', 'hi')), list('hi', 'hi'))){quit('no', 1)}
    if(!identical(candidate(list('hi', 'admin'), list('hi', 'hi', 'admin', 'project')), list('hi', 'admin'))){quit('no', 1)}
    if(!identical(candidate(list('4'), list('1', '2', '3', '4', '5')), list('4'))){quit('no', 1)}
    if(!identical(candidate(list('hi', 'admin'), list('hI', 'Hi')), list('hI', 'Hi'))){quit('no', 1)}
    if(!identical(candidate(list('hi', 'admin'), list('hI', 'hi', 'hi')), list('hI', 'hi', 'hi'))){quit('no', 1)}
    if(!identical(candidate(list('hi', 'admin'), list('hI', 'hi', 'hii')), list('hi', 'admin'))){quit('no', 1)}
    if(!identical(candidate(list(), list('this')), list())){quit('no', 1)}
    if(!identical(candidate(list('this'), list()), list())){quit('no', 1)}
}
test_humaneval()