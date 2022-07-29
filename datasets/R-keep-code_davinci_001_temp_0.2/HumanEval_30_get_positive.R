# Return only positive numbers in the list.
# >>> get_positive([-1, 2, -4, 5, 6])
# [2, 5, 6]
# >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
# [5, 3, 2, 3, 9, 123, 1]
get_positive <- function(l)
{
    return(l[l > 0])

test_humaneval <- function() {
candidate <- get_positive
    if(!identical(candidate(c(-1, -2, 4, 5, 6)), c(4, 5, 6))){quit('no', 1)}
    if(!identical(candidate(c(5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10)), c(5, 3, 2, 3, 3, 9, 123, 1))){quit('no', 1)}
    if(!identical(candidate(c(-1, -2)), c())){quit('no', 1)}
    if(!identical(candidate(c()), c())){quit('no', 1)}
}