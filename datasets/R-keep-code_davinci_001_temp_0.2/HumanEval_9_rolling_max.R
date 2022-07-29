# From a given list of integers, generate a list of rolling maximum element found until given moment
-- in the sequence.
-- >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
-- [1, 2, 3, 3, 3, 4, 4]
rolling_max <- function(numbers)
{
    result <- vector(length=length(numbers))
    result[1] <- numbers[1]
    for (i in 2:length(numbers))
    {
        result[i] <- max(numbers[1:i])
    }
    return(result)
}
rolling_max([1, 2, 3, 2, 3, 4, 2])


test_humaneval <- function() {
candidate <- rolling_max
    if(!identical(candidate(c()), c())){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 4)), c(1, 2, 3, 4))){quit('no', 1)}
    if(!identical(candidate(c(4, 3, 2, 1)), c(4, 4, 4, 4))){quit('no', 1)}
    if(!identical(candidate(c(3, 2, 3, 100, 3)), c(3, 3, 3, 100, 100))){quit('no', 1)}
}