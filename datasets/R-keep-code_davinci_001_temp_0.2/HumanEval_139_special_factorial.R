# The Brazilian factorial is defined as:
# brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
# where n > 0
# For example:
# >>> special_factorial(4)
# 288
# The function will receive an integer as input and should return the special
# factorial of this integer.
special_factorial <- function(n) {
    if (n == 1) {
        return(1)
    }
    return(n * special_factorial(n-1))
}


test_humaneval <- function() {
candidate <- special_factorial
    if(!identical(candidate(4), 288)){quit('no', 1)}
    if(!identical(candidate(5), 34560)){quit('no', 1)}
    if(!identical(candidate(7), 125411328000)){quit('no', 1)}
    if(!identical(candidate(1), 1)){quit('no', 1)}
}
test_humaneval()