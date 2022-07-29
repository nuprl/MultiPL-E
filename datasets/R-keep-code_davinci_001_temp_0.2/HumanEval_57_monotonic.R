# Return True is list elements are monotonically increasing or decreasing.
-- >>> monotonic([1, 2, 4, 20])
-- True
-- >>> monotonic([1, 20, 4, 10])
-- False
-- >>> monotonic([4, 1, 0, -10])
-- True
monotonic <- function(l)
{
    if (length(l) <= 1)
    {
        return(TRUE)
    }
    else
    {
        if (l[1] < l[2])
        {
            return(monotonic(l[2:length(l)]) & (l[1] <= l[2]))
        }
        else
        {
            return(monotonic(l[2:length(l)]) & (l[1] >= l[2]))
        }
    }

test_humaneval <- function() {
candidate <- monotonic
    if(!identical(candidate(c(1, 2, 4, 10)), true)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 4, 20)), true)){quit('no', 1)}
    if(!identical(candidate(c(1, 20, 4, 10)), false)){quit('no', 1)}
    if(!identical(candidate(c(4, 1, 0, -10)), true)){quit('no', 1)}
    if(!identical(candidate(c(4, 1, 1, 0)), true)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 2, 5, 60)), false)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 4, 5, 60)), true)){quit('no', 1)}
    if(!identical(candidate(c(9, 9, 9, 9)), true)){quit('no', 1)}
}