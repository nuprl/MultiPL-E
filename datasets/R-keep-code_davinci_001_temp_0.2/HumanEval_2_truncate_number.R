# Given a positive floating point number, it can be decomposed into
# and integer part (largest integer smaller than given number) and decimals
# (leftover part always smaller than 1).
# Return the decimal part of the number.
# >>> truncate_number(3.5)
# 0.5
truncate_number <- function(number)
{
    return(number - floor(number))

test_humaneval <- function() {
candidate <- truncate_number
    if(!identical(candidate(3.5), 0.5)){quit('no', 1)}
    if(!identical(candidate(1.25), 0.25)){quit('no', 1)}
    if(!identical(candidate(123.0), 0.0)){quit('no', 1)}
}