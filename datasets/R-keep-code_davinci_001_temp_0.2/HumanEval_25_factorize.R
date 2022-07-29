# Return list of prime factors of given integer in the order from smallest to largest.
# Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
# Input number should be equal to the product of all factors
# >>> factorize(8)
# [2, 2, 2]
# >>> factorize(25)
# [5, 5]
# >>> factorize(70)
# [2, 5, 7]
factorize <- function(n) {
    factors <- c()
    for (i in 2:n) {
        while (n %% i == 0) {
            factors <- c(factors, i)
            n <- n / i
        }
    }
    factors
}


test_humaneval <- function() {
candidate <- factorize
    if(!identical(candidate(2), list(2))){quit('no', 1)}
    if(!identical(candidate(4), list(2, 2))){quit('no', 1)}
    if(!identical(candidate(8), list(2, 2, 2))){quit('no', 1)}
    if(!identical(candidate(57), list(3, 19))){quit('no', 1)}
    if(!identical(candidate(3249), list(3, 3, 19, 19))){quit('no', 1)}
    if(!identical(candidate(185193), list(3, 3, 3, 19, 19, 19))){quit('no', 1)}
    if(!identical(candidate(20577), list(3, 19, 19, 19))){quit('no', 1)}
    if(!identical(candidate(18), list(2, 3, 3))){quit('no', 1)}
}
test_humaneval()