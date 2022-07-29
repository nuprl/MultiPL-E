# This function takes a list l and returns a list l' such that
-- l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
-- to the values of the corresponding indicies of l, but sorted.
-- >>> sort_third([1, 2, 3])
-- [1, 2, 3]
-- >>> sort_third([5, 6, 3, 4, 8, 9, 2])
-- [2, 6, 3, 4, 8, 9, 5]
sort_third <- function(l)
{
    # your code here

test_humaneval <- function() {
candidate <- sort_third
    if(!identical(candidate(c(5, 6, 3, 4, 8, 9, 2)), c(2, 6, 3, 4, 8, 9, 5))){quit('no', 1)}
    if(!identical(candidate(c(5, 8, 3, 4, 6, 9, 2)), c(2, 8, 3, 4, 6, 9, 5))){quit('no', 1)}
    if(!identical(candidate(c(5, 6, 9, 4, 8, 3, 2)), c(2, 6, 9, 4, 8, 3, 5))){quit('no', 1)}
    if(!identical(candidate(c(5, 6, 3, 4, 8, 9, 2, 1)), c(2, 6, 3, 4, 8, 9, 5, 1))){quit('no', 1)}
}