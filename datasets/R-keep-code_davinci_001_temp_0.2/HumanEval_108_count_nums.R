# Write a function count_nums which takes an array of integers and returns
# the number of elements which has a sum of digits > 0.
# If a number is negative, then its first signed digit will be negative:
# e.g. -123 has signed digits -1, 2, and 3.
# >>> count_nums([]) == 0
# >>> count_nums([-1, 11, -11]) == 1
# >>> count_nums([1, 1, 2]) == 3
count_nums <- function(arr) {
    sum(sapply(arr, sum) > 0)
}


test_humaneval <- function() {
candidate <- count_nums
    if(!identical(candidate(list()), 0)){quit('no', 1)}
    if(!identical(candidate(c(-1, -2, 0)), 0)){quit('no', 1)}
    if(!identical(candidate(c(1, 1, 2, -2, 3, 4, 5)), 6)){quit('no', 1)}
    if(!identical(candidate(c(1, 6, 9, -6, 0, 1, 5)), 5)){quit('no', 1)}
    if(!identical(candidate(c(1, 100, 98, -7, 1, -1)), 4)){quit('no', 1)}
    if(!identical(candidate(c(12, 23, 34, -45, -56, 0)), 5)){quit('no', 1)}
    if(!identical(candidate(c(0, 1)), 1)){quit('no', 1)}
    if(!identical(candidate(c(1)), 1)){quit('no', 1)}
}
test_humaneval()