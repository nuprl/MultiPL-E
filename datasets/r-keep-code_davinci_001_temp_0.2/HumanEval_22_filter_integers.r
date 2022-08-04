# Filter given list of any python values only for integers
# >>> filter_integers(['a', 3.14, 5])
# [5]
# >>> filter_integers([1, 2, 3, 'abc', {}, []])
# [1, 2, 3]
filter_integers <- function(values) {
    return(list(filter(is.integer, values)))
}
filter_integers(c(1, 2, 3, 4, 5))
filter_integers(c(1, 2, 3, 'abc', {}, []))


test_humaneval <- function() {
candidate <- filter_integers
    if(!identical(candidate(list()), list())){quit('no', 1)}
    if(!identical(candidate(list(4, list(), list(), 23.2, 9, 'adasd')), list(4, 9))){quit('no', 1)}
    if(!identical(candidate(list(3, 'c', 3, 3, 'a', 'b')), list(3, 3, 3))){quit('no', 1)}
}
test_humaneval()