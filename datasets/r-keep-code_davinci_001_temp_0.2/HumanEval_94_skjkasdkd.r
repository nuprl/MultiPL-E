# You are given a list of integers.
# You need to find the largest prime value and return the sum of its digits.
# Examples:
# >>> skjkasdkd([0,3,2,1,3,5,7,4,5,5,5,2,181,32,4,32,3,2,32,324,4,3])
# 10
# >>> skjkasdkd([1,0,1,8,2,4597,2,1,3,40,1,2,1,2,4,2,5,1])
# 25
# >>> skjkasdkd([1,3,1,32,5107,34,83278,109,163,23,2323,32,30,1,9,3])
# 13
# >>> skjkasdkd([0,724,32,71,99,32,6,0,5,91,83,0,5,6])
# 11
# >>> skjkasdkd([0,81,12,3,1,21])
# 3
# >>> skjkasdkd([0,8,1,2,1,7])
# 7
skjkasdkd <- function(lst) {
    max_prime <- 0
    for (i in lst) {
        if (is.prime(i)) {
            max_prime <- max(i, max_prime)
        }
    }
    sum(digits(max_prime))
}


test_humaneval <- function() {
candidate <- skjkasdkd
    if(!identical(candidate(c(0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3)), 10)){quit('no', 1)}
    if(!identical(candidate(c(1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1)), 25)){quit('no', 1)}
    if(!identical(candidate(c(1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3)), 13)){quit('no', 1)}
    if(!identical(candidate(c(0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6)), 11)){quit('no', 1)}
    if(!identical(candidate(c(0, 81, 12, 3, 1, 21)), 3)){quit('no', 1)}
    if(!identical(candidate(c(0, 8, 1, 2, 1, 7)), 7)){quit('no', 1)}
    if(!identical(candidate(c(8191)), 19)){quit('no', 1)}
    if(!identical(candidate(c(8191, 123456, 127, 7)), 19)){quit('no', 1)}
    if(!identical(candidate(c(127, 97, 8192)), 10)){quit('no', 1)}
}
test_humaneval()