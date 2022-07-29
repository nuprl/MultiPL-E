# Return list of prime factors of given integer in the order from smallest to largest.
# Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
# Input number should be equal to the product of all factors
# >>> factorize(8)
# [2, 2, 2]
# >>> factorize(25)
# [5, 5]
# >>> factorize(70)
# [2, 5, 7]
factorize <- function(n)
{
    # your code here

test_humaneval <- function() {
candidate <- factorize
    if(!identical(candidate(2), c(2))){quit('no', 1)}
    if(!identical(candidate(4), c(2, 2))){quit('no', 1)}
    if(!identical(candidate(8), c(2, 2, 2))){quit('no', 1)}
    if(!identical(candidate(57), c(3, 19))){quit('no', 1)}
    if(!identical(candidate(3249), c(3, 3, 19, 19))){quit('no', 1)}
    if(!identical(candidate(185193), c(3, 3, 3, 19, 19, 19))){quit('no', 1)}
    if(!identical(candidate(20577), c(3, 19, 19, 19))){quit('no', 1)}
    if(!identical(candidate(18), c(2, 3, 3))){quit('no', 1)}
}