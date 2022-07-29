# triples_sum_to_zero takes a list of integers as an input.
-- it returns True if there are three distinct elements in the list that
-- sum to zero, and False otherwise.
-- >>> triples_sum_to_zero([1, 3, 5, 0])
-- False
-- >>> triples_sum_to_zero([1, 3, -2, 1])
-- True
-- >>> triples_sum_to_zero([1, 2, 3, 7])
-- False
-- >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
-- True
-- >>> triples_sum_to_zero([1])
-- False
triples_sum_to_zero <- function(l)
{
    # YOUR CODE HERE
    return(FALSE)

test_humaneval <- function() {
candidate <- triples_sum_to_zero
    if(!identical(candidate(c(1, 3, 5, 0)), false)){quit('no', 1)}
    if(!identical(candidate(c(1, 3, 5, -1)), false)){quit('no', 1)}
    if(!identical(candidate(c(1, 3, -2, 1)), true)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 7)), false)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 5, 7)), false)){quit('no', 1)}
    if(!identical(candidate(c(2, 4, -5, 3, 9, 7)), true)){quit('no', 1)}
    if(!identical(candidate(c(1)), false)){quit('no', 1)}
    if(!identical(candidate(c(1, 3, 5, -100)), false)){quit('no', 1)}
    if(!identical(candidate(c(100, 3, 5, -100)), false)){quit('no', 1)}
}