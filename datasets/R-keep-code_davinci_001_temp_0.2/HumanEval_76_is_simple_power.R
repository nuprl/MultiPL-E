# Your task is to write a function that returns true if a number x is a simple
# power of n and false in other cases.
# x is a simple power of n if n**int=x
# For example:
# is_simple_power(1, 4) => true
# is_simple_power(2, 2) => true
# is_simple_power(8, 2) => true
# is_simple_power(3, 2) => false
# is_simple_power(3, 1) => false
# is_simple_power(5, 3) => false
is_simple_power <- function(x, n) {
    if (n**int(log(x)/log(n)) == x) {
        return(TRUE)
    } else {
        return(FALSE)
    }
}


test_humaneval <- function() {
candidate <- is_simple_power
    if(!identical(candidate(16, 2), TRUE)){quit('no', 1)}
    if(!identical(candidate(143214, 16), FALSE)){quit('no', 1)}
    if(!identical(candidate(4, 2), TRUE)){quit('no', 1)}
    if(!identical(candidate(9, 3), TRUE)){quit('no', 1)}
    if(!identical(candidate(16, 4), TRUE)){quit('no', 1)}
    if(!identical(candidate(24, 2), FALSE)){quit('no', 1)}
    if(!identical(candidate(128, 4), FALSE)){quit('no', 1)}
    if(!identical(candidate(12, 6), FALSE)){quit('no', 1)}
    if(!identical(candidate(1, 1), TRUE)){quit('no', 1)}
    if(!identical(candidate(1, 12), TRUE)){quit('no', 1)}
}
test_humaneval()