# Given a positive integer N, return the total sum of its digits in binary.
# Example
# >>> solve(1000)
# "1"
# >>> solve(150)
# "110"
# >>> solve(147)
# "1100"
# Variables:
# @N integer
# Constraints: 0 ≤ N ≤ 10000.
# Output:
# a string of binary number
solve <- function(N) {
    return(paste(as.character(as.integer(as.binary(N))), collapse=""))
}

solve(1000)
solve(150)
solve(147)


test_humaneval <- function() {
candidate <- solve
    if(!identical(candidate(1000), '1')){quit('no', 1)}
    if(!identical(candidate(150), '110')){quit('no', 1)}
    if(!identical(candidate(147), '1100')){quit('no', 1)}
    if(!identical(candidate(333), '1001')){quit('no', 1)}
    if(!identical(candidate(963), '10010')){quit('no', 1)}
}
test_humaneval()