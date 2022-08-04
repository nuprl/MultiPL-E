# Create a function which returns the largest index of an element which
# is not greater than or equal to the element immediately preceding it. If
# no such element exists then return -1. The given array will not contain
# duplicate values.
# Examples:
# >>> can_arrange([1,2,4,3,5])
# 3
# >>> can_arrange([1,2,3])
# -1
can_arrange <- function(arr) {
    for (i in 1:length(arr)) {
        if (arr[i] < arr[i-1]) {
            return(i-1)
        }
    }
    return(-1)
}
can_arrange([1,2,4,3,5])
can_arrange([1,2,3])


test_humaneval <- function() {
candidate <- can_arrange
    if(!identical(candidate(c(1, 2, 4, 3, 5)), 3)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 4, 5)), -1)){quit('no', 1)}
    if(!identical(candidate(c(1, 4, 2, 5, 6, 7, 8, 9, 10)), 2)){quit('no', 1)}
    if(!identical(candidate(c(4, 8, 5, 7, 3)), 4)){quit('no', 1)}
    if(!identical(candidate(c()), -1)){quit('no', 1)}
}
test_humaneval()