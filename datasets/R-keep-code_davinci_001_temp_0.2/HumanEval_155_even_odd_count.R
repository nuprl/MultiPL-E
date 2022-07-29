# Given an integer. return a tuple that has the number of even and odd digits respectively.
# Example:
# even_odd_count(-12) ==> (1, 1)
# even_odd_count(123) ==> (1, 2)
even_odd_count <- function(num) {
    num_str <- as.character(num)
    num_str_len <- length(num_str)
    even_count <- 0
    odd_count <- 0
    for (i in 1:num_str_len) {
        if (as.integer(num_str[i]) %% 2 == 0) {
            even_count <- even_count + 1
        } else {
            odd_count <- odd_count + 1
        }
    }
    return(list(even_count, odd_count))
}

even_odd_count(-12)
even_odd_count(123)


test_humaneval <- function() {
candidate <- even_odd_count
    if(!identical(candidate(7), c(0, 1))){quit('no', 1)}
    if(!identical(candidate(-78), c(1, 1))){quit('no', 1)}
    if(!identical(candidate(3452), c(2, 2))){quit('no', 1)}
    if(!identical(candidate(346211), c(3, 3))){quit('no', 1)}
    if(!identical(candidate(-345821), c(3, 3))){quit('no', 1)}
    if(!identical(candidate(-2), c(1, 0))){quit('no', 1)}
    if(!identical(candidate(-45347), c(2, 3))){quit('no', 1)}
    if(!identical(candidate(0), c(1, 0))){quit('no', 1)}
}
test_humaneval()