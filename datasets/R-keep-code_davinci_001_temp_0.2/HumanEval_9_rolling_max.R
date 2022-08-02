# From a given list of integers, generate a list of rolling maximum element found until given moment
# in the sequence.
# >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
# [1, 2, 3, 3, 3, 4, 4]
rolling_max <- function(numbers) {
    result <- c()
    for (i in 1:length(numbers)) {
        result <- c(result, max(numbers[1:i]))
    }
    return(result)
}
rolling_max(c(1, 2, 3, 2, 3, 4, 2))


test_humaneval <- function() {
candidate <- rolling_max
    if(!identical(candidate(c()), c())){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 4)), c(1, 2, 3, 4))){quit('no', 1)}
    if(!identical(candidate(c(4, 3, 2, 1)), c(4, 4, 4, 4))){quit('no', 1)}
    if(!identical(candidate(c(3, 2, 3, 100, 3)), c(3, 3, 3, 100, 100))){quit('no', 1)}
}
test_humaneval()