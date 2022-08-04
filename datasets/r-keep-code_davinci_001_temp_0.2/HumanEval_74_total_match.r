# Write a function that accepts two lists of strings and returns the list that has 
# total number of chars in the all strings of the list less than the other list.
# if the two lists have the same number of chars, return the first list.
# Examples
# >>> total_match([], [])
# []
# >>> total_match(['hi', 'admin'], ['hI', 'Hi'])
# ['hI', 'Hi']
# >>> total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project'])
# ['hi', 'admin']
# >>> total_match(['hi', 'admin'], ['hI', 'hi', 'hi'])
# ['hI', 'hi', 'hi']
# >>> total_match(['4'], ['1', '2', '3', '4', '5'])
# ['4']
total_match <- function(lst1, lst2) {
    if (sum(nchar(lst1)) < sum(nchar(lst2))) {
        return(lst1)
    } else if (sum(nchar(lst1)) > sum(nchar(lst2))) {
        return(lst2)
    } else {
        return(lst1)
    }
}
total_match(c("hi", "admin"), c("hi", "hi", "admin", "project"))
total_match(c("hi", "admin"), c("hI", "hi", "hi"))
total_match(c("hi", "admin"), c("hi", "hi", "admin", "project"))
total_match(c("4"), c("1", "2", "3", "4", "5"))


test_humaneval <- function() {
candidate <- total_match
    if(!identical(candidate(c(), c()), list())){quit('no', 1)}
    if(!identical(candidate(c('hi', 'admin'), c('hi', 'hi')), list('hi', 'hi'))){quit('no', 1)}
    if(!identical(candidate(c('hi', 'admin'), c('hi', 'hi', 'admin', 'project')), list('hi', 'admin'))){quit('no', 1)}
    if(!identical(candidate(c('4'), c('1', '2', '3', '4', '5')), list('4'))){quit('no', 1)}
    if(!identical(candidate(c('hi', 'admin'), c('hI', 'Hi')), list('hI', 'Hi'))){quit('no', 1)}
    if(!identical(candidate(c('hi', 'admin'), c('hI', 'hi', 'hi')), list('hI', 'hi', 'hi'))){quit('no', 1)}
    if(!identical(candidate(c('hi', 'admin'), c('hI', 'hi', 'hii')), list('hi', 'admin'))){quit('no', 1)}
    if(!identical(candidate(c(), c('this')), list())){quit('no', 1)}
    if(!identical(candidate(c('this'), c()), list())){quit('no', 1)}
}
test_humaneval()