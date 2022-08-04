# Return median of elements in the list l.
# >>> median([3, 1, 2, 4, 5])
# 3
# >>> median([-10, 4, 6, 1000, 10, 20])
# 15.0
median <- function(l) {
    l <- sort(l)
    if (length(l) %% 2 == 0) {
        return((l[(length(l) / 2)] + l[(length(l) / 2) - 1]) / 2)
    } else {
        return(l[(length(l) / 2)])
    }
}


test_humaneval <- function() {
candidate <- median
    if(!identical(candidate(c(3, 1, 2, 4, 5)), 3)){quit('no', 1)}
    if(!identical(candidate(c(-10, 4, 6, 1000, 10, 20)), 8.0)){quit('no', 1)}
    if(!identical(candidate(c(5)), 5)){quit('no', 1)}
    if(!identical(candidate(c(6, 5)), 5.5)){quit('no', 1)}
    if(!identical(candidate(c(8, 1, 3, 9, 9, 2, 7)), 7)){quit('no', 1)}
}
test_humaneval()