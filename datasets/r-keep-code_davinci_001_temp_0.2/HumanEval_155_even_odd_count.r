# Given an integer. return a tuple that has the number of even and odd digits respectively.
# Example:
# >>> even_odd_count(-12) 
# (1, 1)
# >>> even_odd_count(123) 
# (1, 2)
even_odd_count <- function(num) {
    num <- abs(num)
    even <- 0
    odd <- 0
    while (num > 0) {
        if (num %% 2 == 0) {
            even <- even + 1
        } else {
            odd <- odd + 1
        }
        num <- num %% 10
        num <- num / 10
    }
    return(c(even, odd))
}


test_humaneval <- function() {
candidate <- even_odd_count
    if(!identical(candidate(7), list(0, 1))){quit('no', 1)}
    if(!identical(candidate(-78), list(1, 1))){quit('no', 1)}
    if(!identical(candidate(3452), list(2, 2))){quit('no', 1)}
    if(!identical(candidate(346211), list(3, 3))){quit('no', 1)}
    if(!identical(candidate(-345821), list(3, 3))){quit('no', 1)}
    if(!identical(candidate(-2), list(1, 0))){quit('no', 1)}
    if(!identical(candidate(-45347), list(2, 3))){quit('no', 1)}
    if(!identical(candidate(0), list(1, 0))){quit('no', 1)}
}
test_humaneval()