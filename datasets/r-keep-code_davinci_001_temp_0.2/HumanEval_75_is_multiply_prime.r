# Write a function that returns true if the given number is the multiplication of 3 prime numbers
# and false otherwise.
# Knowing that (a) is less then 100. 
# Example:
# >>> is_multiply_prime(30)
# True
# 30 = 2 * 3 * 5
is_multiply_prime <- function(a) {
    if (a == 1) {
        return(FALSE)
    }
    for (i in 2:(a-1)) {
        if (a %% i == 0) {
            return(FALSE)
        }
    }
    return(TRUE)
}

is_multiply_prime(30)


test_humaneval <- function() {
candidate <- is_multiply_prime
    if(!identical(candidate(5), FALSE)){quit('no', 1)}
    if(!identical(candidate(30), TRUE)){quit('no', 1)}
    if(!identical(candidate(8), TRUE)){quit('no', 1)}
    if(!identical(candidate(10), FALSE)){quit('no', 1)}
    if(!identical(candidate(125), TRUE)){quit('no', 1)}
    if(!identical(candidate(105), TRUE)){quit('no', 1)}
    if(!identical(candidate(126), FALSE)){quit('no', 1)}
    if(!identical(candidate(729), FALSE)){quit('no', 1)}
    if(!identical(candidate(891), FALSE)){quit('no', 1)}
    if(!identical(candidate(1001), TRUE)){quit('no', 1)}
}
test_humaneval()