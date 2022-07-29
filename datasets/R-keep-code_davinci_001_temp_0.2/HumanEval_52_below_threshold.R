# Return True if all numbers in the list l are below threshold t.
-- >>> below_threshold([1, 2, 4, 10], 100)
-- True
-- >>> below_threshold([1, 20, 4, 10], 5)
-- False
below_threshold <- function(l, t)
{
    for (i in l)
    {
        if (i > t)
        {
            return(FALSE)
        }
    }
    return(TRUE)

test_humaneval <- function() {
candidate <- below_threshold
    if(!identical(candidate(c(1, 2, 4, 10), 100), true)){quit('no', 1)}
    if(!identical(candidate(c(1, 20, 4, 10), 5), false)){quit('no', 1)}
    if(!identical(candidate(c(1, 20, 4, 10), 21), true)){quit('no', 1)}
    if(!identical(candidate(c(1, 20, 4, 10), 22), true)){quit('no', 1)}
    if(!identical(candidate(c(1, 8, 4, 10), 11), true)){quit('no', 1)}
    if(!identical(candidate(c(1, 8, 4, 10), 10), false)){quit('no', 1)}
}