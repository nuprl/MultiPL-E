# Return True is list elements are monotonically increasing or decreasing.
# >>> monotonic([1, 2, 4, 20])
# True
# >>> monotonic([1, 20, 4, 10])
# False
# >>> monotonic([4, 1, 0, -10])
# True
monotonic <- function(l) {
    if (length(l) < 2) {
        return(TRUE)
    }
    if (all(l[1:length(l)-1] < l[2:length(l)])) {
        return(TRUE)
    }
    if (all(l[1:length(l)-1] > l[2:length(l)])) {
        return(TRUE)
    }
    return(FALSE)
}


test_humaneval <- function() {
candidate <- monotonic
    if(!identical(candidate(list(1, 2, 4, 10)), TRUE)){quit('no', 1)}
    if(!identical(candidate(list(1, 2, 4, 20)), TRUE)){quit('no', 1)}
    if(!identical(candidate(list(1, 20, 4, 10)), FALSE)){quit('no', 1)}
    if(!identical(candidate(list(4, 1, 0, -10)), TRUE)){quit('no', 1)}
    if(!identical(candidate(list(4, 1, 1, 0)), TRUE)){quit('no', 1)}
    if(!identical(candidate(list(1, 2, 3, 2, 5, 60)), FALSE)){quit('no', 1)}
    if(!identical(candidate(list(1, 2, 3, 4, 5, 60)), TRUE)){quit('no', 1)}
    if(!identical(candidate(list(9, 9, 9, 9)), TRUE)){quit('no', 1)}
}
test_humaneval()