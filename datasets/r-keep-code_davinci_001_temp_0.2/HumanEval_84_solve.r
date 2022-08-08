# Given a positive integer N, return the total sum of its digits in binary.
# Example
# For N = 1000, the sum of digits will be 1 the output should be "1".
# For N = 150, the sum of digits will be 6 the output should be "110".
# For N = 147, the sum of digits will be 12 the output should be "1100".
# Variables:
# @N integer
# Constraints: 0 ≤ N ≤ 10000.
# Output:
# a string of binary number
solve <- function(N) {
    # your code here
    return(sum(as.numeric(strsplit(as.character(N), "")[[1]])))
}


test_humaneval <- function() {
candidate <- solve
    if(!identical(candidate(1000), '1')){quit('no', 1)}
    if(!identical(candidate(150), '110')){quit('no', 1)}
    if(!identical(candidate(147), '1100')){quit('no', 1)}
    if(!identical(candidate(333), '1001')){quit('no', 1)}
    if(!identical(candidate(963), '10010')){quit('no', 1)}
}
test_humaneval()