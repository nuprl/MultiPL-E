# Circular shift the digits of the integer x, shift the digits right by shift
-- and return the result as a string.
-- If shift > number of digits, return digits reversed.
-- >>> circular_shift(12, 1)
-- "21"
-- >>> circular_shift(12, 2)
-- "12"
circular_shift <- function(x, shift)
{
    # Get the number of digits in x
    n <- length(x)
    
    # Get the digits of x
    digits <- strsplit(x, "")[[1]]
    
    # Circular shift the digits
    digits <- digits[shift + 1 : n]
    digits <- c(digits, digits[1:shift])
    
    # Convert digits to a string
    digits <- paste(digits, collapse="")
    
    # Return the result
    return(digits)

test_humaneval <- function() {
candidate <- circular_shift
    if(!identical(candidate(100, 2), '001')){quit('no', 1)}
    if(!identical(candidate(12, 2), '12')){quit('no', 1)}
    if(!identical(candidate(97, 8), '79')){quit('no', 1)}
    if(!identical(candidate(12, 1), '21')){quit('no', 1)}
    if(!identical(candidate(11, 101), '11')){quit('no', 1)}
}