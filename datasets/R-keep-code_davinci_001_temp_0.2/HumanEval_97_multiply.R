# Complete the function that takes two integers and returns 
# the product of their unit digits.
# Assume the input is always valid.
# Examples:
# multiply(148, 412) should return 16.
# multiply(19, 28) should return 72.
# multiply(2020, 1851) should return 0.
# multiply(14,-15) should return 20.
multiply <- function(a, b) {
    # your code here
    a <- as.character(a)
    b <- as.character(b)
    if (length(a) == 1) {
        return(a %*% b)
    } else {
        return(as.integer(a[1]) %*% b %*% 10 ^ (length(a) - 1))
    }
}


test_humaneval <- function() {
candidate <- multiply
    if(!identical(candidate(148, 412), 16)){quit('no', 1)}
    if(!identical(candidate(19, 28), 72)){quit('no', 1)}
    if(!identical(candidate(2020, 1851), 0)){quit('no', 1)}
    if(!identical(candidate(14, -15), 20)){quit('no', 1)}
    if(!identical(candidate(76, 67), 42)){quit('no', 1)}
    if(!identical(candidate(17, 27), 49)){quit('no', 1)}
    if(!identical(candidate(0, 1), 0)){quit('no', 1)}
    if(!identical(candidate(0, 0), 0)){quit('no', 1)}
}
test_humaneval()