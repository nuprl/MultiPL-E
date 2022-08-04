# Given a positive integer n, return the product of the odd digits.
# Return 0 if all digits are even.
# For example:
# >>> digits(1) 
# 1
# >>> digits(4) 
# 0
# >>> digits(235)
# 15
digits <- function(n) {
    if (n %% 2 == 0) {
        return (0)
    } else {
        return (prod(n %% 10))
    }
}
digits(1)
digits(4)
digits(235)


test_humaneval <- function() {
candidate <- digits
    if(!identical(candidate(5), 5)){quit('no', 1)}
    if(!identical(candidate(54), 5)){quit('no', 1)}
    if(!identical(candidate(120), 1)){quit('no', 1)}
    if(!identical(candidate(5014), 5)){quit('no', 1)}
    if(!identical(candidate(98765), 315)){quit('no', 1)}
    if(!identical(candidate(5576543), 2625)){quit('no', 1)}
    if(!identical(candidate(2468), 0)){quit('no', 1)}
}
test_humaneval()