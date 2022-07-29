# Given list of numbers (of at least two elements), apply a linear transform to that list,
-- such that the smallest number will become 0 and the largest will become 1
-- >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
-- [0.0, 0.25, 0.5, 0.75, 1.0]
rescale_to_unit <- function(numbers)
{
    # Find the minimum and maximum values in the list
    min <- min(numbers)
    max <- max(numbers)
    
    # Apply linear transform
    numbers <- (numbers - min) / (max - min)
    
    # Return the transformed list
    return(numbers)

test_humaneval <- function() {
candidate <- rescale_to_unit
    if(!identical(candidate(c(2.0, 49.9)), c(0.0, 1.0))){quit('no', 1)}
    if(!identical(candidate(c(100.0, 49.9)), c(1.0, 0.0))){quit('no', 1)}
    if(!identical(candidate(c(1.0, 2.0, 3.0, 4.0, 5.0)), c(0.0, 0.25, 0.5, 0.75, 1.0))){quit('no', 1)}
    if(!identical(candidate(c(2.0, 1.0, 5.0, 3.0, 4.0)), c(0.25, 0.0, 1.0, 0.5, 0.75))){quit('no', 1)}
    if(!identical(candidate(c(12.0, 11.0, 15.0, 13.0, 14.0)), c(0.25, 0.0, 1.0, 0.5, 0.75))){quit('no', 1)}
}