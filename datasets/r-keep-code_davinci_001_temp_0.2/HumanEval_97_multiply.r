# Complete the function that takes two integers and returns 
# the product of their unit digits.
# Assume the input is always valid.
# Examples:
# >>> multiply(148, 412)
# 16
# >>> multiply(19, 28)
# 72
# >>> multiply(2020, 1851)
# 0
# >>> multiply(14,-15)
# 20
multiply <- function(a, b) {
    if (a < 0) {
        a <- -a
        b <- -b
    }
    if (a == 0 || b == 0) {
        return(0)
    }
    if (a == 1) {
        return(b)
    }
    if (b == 1) {
        return(a)
    }
    if (a < b) {
        return(multiply(b, a))
    }
    if (a %% b == 0) {
        return(a / b)
    }
    if (b %% a == 0) {
        return(b / a)
    }
    if (a %% 10 == 0) {
        return(multiply(a / 10, b) * 10)
    }
    if (b %% 10 == 0) {
        return(multiply(a, b / 10) * 10)
    }
    if (a %% 10 == b %% 10) {
        return(multiply(a / 10, b / 10) * 100)
    }
    if (a %% 10 == b %% 1) {
        return(multiply(a / 10, b) * 10)
    }
    if (a %% 1 == b %% 10) {
        return(multiply(a, b / 10) * 10)
    }
    if (a %% 1 == b %% 1) {
        return(multiply(a, b))
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