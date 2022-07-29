# Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
-- >>> intersperse([], 4)
-- []
-- >>> intersperse([1, 2, 3], 4)
-- [1, 4, 2, 4, 3]
intersperse <- function(numbers, delimeter)
{
    if (length(numbers) == 0)
    {
        return(numbers)
    }
    else
    {
        return(c(numbers[1], rep(delimeter, length(numbers) - 1), numbers[2:length(numbers)]))
    }

test_humaneval <- function() {
candidate <- intersperse
    if(!identical(candidate(c(), 7), c())){quit('no', 1)}
    if(!identical(candidate(c(5, 6, 3, 2), 8), c(5, 8, 6, 8, 3, 8, 2))){quit('no', 1)}
    if(!identical(candidate(c(2, 2, 2), 2), c(2, 2, 2, 2, 2))){quit('no', 1)}
}