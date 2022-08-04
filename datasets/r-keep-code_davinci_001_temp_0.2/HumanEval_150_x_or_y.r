# A simple program which should return the value of x if n is 
# a prime number and should return the value of y otherwise.
# Examples:
# >>> x_or_y(7, 34, 12)
# 34
# >>> x_or_y(15, 8, 5)
# 5
x_or_y <- function(n, x, y) {
    if (is_prime(n)) {
        return(x)
    } else {
        return(y)
    }
}
x_or_y(7, 34, 12)
x_or_y(15, 8, 5)


test_humaneval <- function() {
candidate <- x_or_y
    if(!identical(candidate(7, 34, 12), 34)){quit('no', 1)}
    if(!identical(candidate(15, 8, 5), 5)){quit('no', 1)}
    if(!identical(candidate(3, 33, 5212), 33)){quit('no', 1)}
    if(!identical(candidate(1259, 3, 52), 3)){quit('no', 1)}
    if(!identical(candidate(7919, -1, 12), -1)){quit('no', 1)}
    if(!identical(candidate(3609, 1245, 583), 583)){quit('no', 1)}
    if(!identical(candidate(91, 56, 129), 129)){quit('no', 1)}
    if(!identical(candidate(6, 34, 1234), 1234)){quit('no', 1)}
    if(!identical(candidate(1, 2, 0), 0)){quit('no', 1)}
    if(!identical(candidate(2, 2, 0), 2)){quit('no', 1)}
}
test_humaneval()