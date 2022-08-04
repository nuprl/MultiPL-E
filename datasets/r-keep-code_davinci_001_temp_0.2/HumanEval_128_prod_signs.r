# You are given an array arr of integers and you need to return
# sum of magnitudes of integers multiplied by product of all signs
# of each number in the array, represented by 1, -1 or 0.
# Note: return None for empty arr.
# Example:
# >>> prod_signs([1, 2, 2, -4]) 
# 9
# >>> prod_signs([0, 1])
# 0
# >>> prod_signs([])
# None
prod_signs <- function(arr) {
    if (length(arr) == 0) {
        return(None)
    }
    prod_signs <- 1
    for (i in arr) {
        prod_signs <- prod_signs * i
    }
    sum_magnitude <- 0
    for (i in arr) {
        sum_magnitude <- sum_magnitude + abs(i)
    }
    return(sum_magnitude * prod_signs)
}


test_humaneval <- function() {
candidate <- prod_signs
    if(!identical(candidate(c(1, 2, 2, -4)), -9)){quit('no', 1)}
    if(!identical(candidate(c(0, 1)), 0)){quit('no', 1)}
    if(!identical(candidate(c(1, 1, 1, 2, 3, -1, 1)), -10)){quit('no', 1)}
    if(!identical(candidate(c()), NULL)){quit('no', 1)}
    if(!identical(candidate(c(2, 4, 1, 2, -1, -1, 9)), 20)){quit('no', 1)}
    if(!identical(candidate(c(-1, 1, -1, 1)), 4)){quit('no', 1)}
    if(!identical(candidate(c(-1, 1, 1, 1)), -4)){quit('no', 1)}
    if(!identical(candidate(c(-1, 1, 1, 0)), 0)){quit('no', 1)}
}
test_humaneval()