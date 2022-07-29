# Return list with elements incremented by 1.
-- >>> incr_list([1, 2, 3])
-- [2, 3, 4]
-- >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
-- [6, 4, 6, 3, 4, 4, 10, 1, 124]
incr_list <- function(l)
{
    # YOUR CODE HERE
    return(l + 1)
}

test_humaneval <- function() {
candidate <- incr_list
    if(!identical(candidate(c()), c())){quit('no', 1)}
    if(!identical(candidate(c(3, 2, 1)), c(4, 3, 2))){quit('no', 1)}
    if(!identical(candidate(c(5, 2, 5, 2, 3, 3, 9, 0, 123)), c(6, 3, 6, 3, 4, 4, 10, 1, 124))){quit('no', 1)}
}