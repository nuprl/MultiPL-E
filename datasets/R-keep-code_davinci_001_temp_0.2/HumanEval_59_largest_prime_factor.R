# Return the largest prime factor of n. Assume n > 1 and is not a prime.
# >>> largest_prime_factor(13195)
# 29
# >>> largest_prime_factor(2048)
# 2
largest_prime_factor <- function(n) {
    factors <- factor(n)
    max(factors[,1])
}

largest_prime_factor(2048)


test_humaneval <- function() {
candidate <- largest_prime_factor
    if(!identical(candidate(15), 5)){quit('no', 1)}
    if(!identical(candidate(27), 3)){quit('no', 1)}
    if(!identical(candidate(63), 7)){quit('no', 1)}
    if(!identical(candidate(330), 11)){quit('no', 1)}
    if(!identical(candidate(13195), 29)){quit('no', 1)}
}
test_humaneval()