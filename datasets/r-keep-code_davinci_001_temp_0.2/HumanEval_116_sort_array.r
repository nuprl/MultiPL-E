# In this Kata, you have to sort an array of non-negative integers according to
# number of ones in their binary representation in ascending order.
# For similar number of ones, sort based on decimal value.
# It must be implemented like this:
# >>> sort_array([1, 5, 2, 3, 4])
# [1, 2, 3, 4, 5]
# >>> sort_array([-2, -3, -4, -5, -6])
# [-6, -5, -4, -3, -2]
# >>> sort_array([1, 0, 2, 3, 4])
# [0, 1, 2, 3, 4]
sort_array <- function(arr) {
    arr <- as.numeric(arr)
    arr <- as.integer(arr)
    arr <- as.character(arr)
    arr <- strsplit(arr, '')
    arr <- unlist(arr)
    arr <- sapply(arr, function(x) {
        x <- as.integer(x)
        x <- as.numeric(x)
        x <- as.character(x)
        x <- strsplit(x, '')
        x <- unlist(x)
        x <- sum(x == '1')
        x
    })
    arr <- as.numeric(arr)
    arr <- as.integer(arr)
    arr <- as.character(arr)
    arr <- sort(arr)
    arr <- as.integer(arr)
    arr <- as.character(arr)
    arr <- paste(arr, collapse = '')
    arr
}


test_humaneval <- function() {
candidate <- sort_array
    if(!identical(candidate(c(1, 5, 2, 3, 4)), list(1, 2, 4, 3, 5))){quit('no', 1)}
    if(!identical(candidate(c(-2, -3, -4, -5, -6)), list(-4, -2, -6, -5, -3))){quit('no', 1)}
    if(!identical(candidate(c(1, 0, 2, 3, 4)), list(0, 1, 2, 4, 3))){quit('no', 1)}
    if(!identical(candidate(c()), list())){quit('no', 1)}
    if(!identical(candidate(c(2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4)), list(2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77))){quit('no', 1)}
    if(!identical(candidate(c(3, 6, 44, 12, 32, 5)), list(32, 3, 5, 6, 12, 44))){quit('no', 1)}
    if(!identical(candidate(c(2, 4, 8, 16, 32)), list(2, 4, 8, 16, 32))){quit('no', 1)}
    if(!identical(candidate(c(2, 4, 8, 16, 32)), list(2, 4, 8, 16, 32))){quit('no', 1)}
}
test_humaneval()