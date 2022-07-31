# Create a function that takes 3 numbers.
# Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
# Returns false in any other cases.
# Examples
# any_int(5, 2, 7) ➞ True
# any_int(3, 2, 2) ➞ False
# any_int(3, -2, 1) ➞ True
# any_int(3.6, -2.2, 2) ➞ False
any_int <- function(x, y, z) {
    if (x == y + z || y == x + z || z == x + y) {
        return(TRUE)
    } else {
        return(FALSE)
    }
}
any_int(5, 2, 7)
any_int(3, 2, 2)
any_int(3, -2, 1)
any_int(3.6, -2.2, 2)


test_humaneval <- function() {
candidate <- any_int
    if(!identical(candidate(2, 3, 1), TRUE)){quit('no', 1)}
    if(!identical(candidate(2.5, 2, 3), FALSE)){quit('no', 1)}
    if(!identical(candidate(1.5, 5, 3.5), FALSE)){quit('no', 1)}
    if(!identical(candidate(2, 6, 2), FALSE)){quit('no', 1)}
    if(!identical(candidate(4, 2, 2), TRUE)){quit('no', 1)}
    if(!identical(candidate(2.2, 2.2, 2.2), FALSE)){quit('no', 1)}
    if(!identical(candidate(-4, 6, 2), TRUE)){quit('no', 1)}
    if(!identical(candidate(2, 1, 1), TRUE)){quit('no', 1)}
    if(!identical(candidate(3, 4, 7), TRUE)){quit('no', 1)}
    if(!identical(candidate(3.0, 4, 7), FALSE)){quit('no', 1)}
}
test_humaneval()