# Check if in given list of numbers, are any two numbers closer to each other than
# given threshold.
# >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
# False
# >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
# True
has_close_elements <- function(numbers, threshold)
{
    for (i in 1:(length(numbers) - 1))
    {
        for (j in (i + 1):length(numbers))
        {
            if (abs(numbers[i] - numbers[j]) < threshold)
            {
                return (TRUE)
            }
        }
    }
    return (FALSE)

test_humaneval <- function() {
candidate <- has_close_elements
    if(!identical(candidate(c(1.0, 2.0, 3.9, 4.0, 5.0, 2.2), 0.3), TRUE)){quit('no', 1)}
    if(!identical(candidate(c(1.0, 2.0, 3.9, 4.0, 5.0, 2.2), 0.05), FALSE)){quit('no', 1)}
    if(!identical(candidate(c(1.0, 2.0, 5.9, 4.0, 5.0), 0.95), TRUE)){quit('no', 1)}
    if(!identical(candidate(c(1.0, 2.0, 5.9, 4.0, 5.0), 0.8), FALSE)){quit('no', 1)}
    if(!identical(candidate(c(1.0, 2.0, 3.0, 4.0, 5.0, 2.0), 0.1), TRUE)){quit('no', 1)}
    if(!identical(candidate(c(1.1, 2.2, 3.1, 4.1, 5.1), 1.0), TRUE)){quit('no', 1)}
    if(!identical(candidate(c(1.1, 2.2, 3.1, 4.1, 5.1), 0.5), FALSE)){quit('no', 1)}
}