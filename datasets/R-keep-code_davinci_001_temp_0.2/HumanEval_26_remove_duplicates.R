# From a list of integers, remove all elements that occur more than once.
# Keep order of elements left the same as in the input.
# >>> remove_duplicates([1, 2, 3, 2, 4])
# [1, 3, 4]
remove_duplicates <- function(numbers)
{
    # Initialize a list of length equal to the input list
    # and with all elements set to NA
    result <- c(NA, rep(NA, length(numbers)))
    
    # Initialize an index to 0
    i <- 0
    
    # Iterate over the input list
    for (number in numbers)
    {
        # If the number is not in the result list
        if (!any(result == number))
        {
            # Add the number to the result list
            i <- i + 1
            result[i] <- number
        }
    }
    
    # Return the result list
    result[1:i]

test_humaneval <- function() {
candidate <- remove_duplicates
    if(!identical(candidate(c()), c())){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 4)), c(1, 2, 3, 4))){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 2, 4, 3, 5)), c(1, 4, 5))){quit('no', 1)}
}