# Return true if a given number is prime, and false otherwise.
# >>> is_prime(6)
# False
# >>> is_prime(101)
# True
# >>> is_prime(11)
# True
# >>> is_prime(13441)
# True
# >>> is_prime(61)
# True
# >>> is_prime(4)
# False
# >>> is_prime(1)
# False
is_prime <- function(n)
{
    if (n == 1)
    {
        return(FALSE)
    }
    else if (n == 2)
    {
        return(TRUE)
    }
    else
    {
        for (i in 2:(n-1))
        {
            if (n %% i == 0)
            {
                return(FALSE)
            }
        }
        return(TRUE)
    }

test_humaneval <- function() {
candidate <- is_prime
    if(!identical(candidate(6), FALSE)){quit('no', 1)}
    if(!identical(candidate(101), TRUE)){quit('no', 1)}
    if(!identical(candidate(11), TRUE)){quit('no', 1)}
    if(!identical(candidate(13441), TRUE)){quit('no', 1)}
    if(!identical(candidate(61), TRUE)){quit('no', 1)}
    if(!identical(candidate(4), FALSE)){quit('no', 1)}
    if(!identical(candidate(1), FALSE)){quit('no', 1)}
    if(!identical(candidate(5), TRUE)){quit('no', 1)}
    if(!identical(candidate(11), TRUE)){quit('no', 1)}
    if(!identical(candidate(17), TRUE)){quit('no', 1)}
    if(!identical(candidate(85), FALSE)){quit('no', 1)}
    if(!identical(candidate(77), FALSE)){quit('no', 1)}
    if(!identical(candidate(255379), FALSE)){quit('no', 1)}
}