# Given a positive integer n, return the count of the numbers of n-digit
# positive integers that start or end with 1.
starts_one_ends <- function(n) {
    count <- 0
    for (i in 1:n) {
        count <- count + (10^(i-1) <= 10^i - 1)
    }
    return(count)
}
starts_one_ends(1)
starts_one_ends(2)
starts_one_ends(3)
starts_one_ends(4)
starts_one_ends(5)


test_humaneval <- function() {
candidate <- starts_one_ends
    if(!identical(candidate(1), 1)){quit('no', 1)}
    if(!identical(candidate(2), 18)){quit('no', 1)}
    if(!identical(candidate(3), 180)){quit('no', 1)}
    if(!identical(candidate(4), 1800)){quit('no', 1)}
    if(!identical(candidate(5), 18000)){quit('no', 1)}
}
test_humaneval()