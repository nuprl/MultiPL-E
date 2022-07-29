# Filter given list of any python values only for integers
-- >>> filter_integers(['a', 3.14, 5])
-- [5]
-- >>> filter_integers([1, 2, 3, 'abc', {}, []])
-- [1, 2, 3]
filter_integers <- function(values)
    # YOUR CODE HERE
    return(values[sapply(values, is.integer)])
    # YOUR CODE HERE
    

test_humaneval <- function() {
candidate <- filter_integers
    if(!identical(candidate(c()), c())){quit('no', 1)}
    if(!identical(candidate(c(4, list(), c(), 23.2, 9, 'adasd')), c(4, 9))){quit('no', 1)}
    if(!identical(candidate(c(3, 'c', 3, 3, 'a', 'b')), c(3, 3, 3))){quit('no', 1)}
}