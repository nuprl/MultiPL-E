# pairs_sum_to_zero takes a list of integers as an input.
# it returns True if there are two distinct elements in the list that
# sum to zero, and False otherwise.
# >>> pairs_sum_to_zero([1, 3, 5, 0])
# False
# >>> pairs_sum_to_zero([1, 3, -2, 1])
# False
# >>> pairs_sum_to_zero([1, 2, 3, 7])
# False
# >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
# True
# >>> pairs_sum_to_zero([1])
# False
pairs_sum_to_zero <- function(l) {
    for (i in 1:length(l)) {
        for (j in 1:length(l)) {
            if (i != j) {
                if (l[i] + l[j] == 0) {
                    return(TRUE)
                }
            }
        }
    }
    return(FALSE)
}
pairs_sum_to_zero([1, 3, 5, 0])
pairs_sum_to_zero([1, 3, -2, 1])
pairs_sum_to_zero([1, 2, 3, 7])
pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
pairs_sum_to_zero([1])


test_humaneval <- function() {
candidate <- pairs_sum_to_zero
    if(!identical(candidate(c(1, 3, 5, 0)), FALSE)){quit('no', 1)}
    if(!identical(candidate(c(1, 3, -2, 1)), FALSE)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 7)), FALSE)){quit('no', 1)}
    if(!identical(candidate(c(2, 4, -5, 3, 5, 7)), TRUE)){quit('no', 1)}
    if(!identical(candidate(c(1)), FALSE)){quit('no', 1)}
    if(!identical(candidate(c(-3, 9, -1, 3, 2, 30)), TRUE)){quit('no', 1)}
    if(!identical(candidate(c(-3, 9, -1, 3, 2, 31)), TRUE)){quit('no', 1)}
    if(!identical(candidate(c(-3, 9, -1, 4, 2, 30)), FALSE)){quit('no', 1)}
    if(!identical(candidate(c(-3, 9, -1, 4, 2, 31)), FALSE)){quit('no', 1)}
}
test_humaneval()