# For a given number n, find the largest number that divides n evenly, smaller than n
# >>> largest_divisor(15)
# 5
largest_divisor <- function(n) {
    for (i in 1:n) {
        if (n %% i == 0) {
            return(i)
        }
    }

test_humaneval <- function() {
candidate <- largest_divisor
    if(!identical(candidate(3), 1)){quit('no', 1)}
    if(!identical(candidate(7), 1)){quit('no', 1)}
    if(!identical(candidate(10), 5)){quit('no', 1)}
    if(!identical(candidate(100), 50)){quit('no', 1)}
    if(!identical(candidate(49), 7)){quit('no', 1)}
}