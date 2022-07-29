# Implement a function that takes an non-negative integer and returns an array of the first n
# integers that are prime numbers and less than n.
# for example:
# count_up_to(5) => [2,3]
# count_up_to(11) => [2,3,5,7]
# count_up_to(0) => []
# count_up_to(20) => [2,3,5,7,11,13,17,19]
# count_up_to(1) => []
# count_up_to(18) => [2,3,5,7,11,13,17]
count_up_to <- function(n) {
    if (n < 0) {
        return(NULL)
    }
    if (n == 0) {
        return(NULL)
    }
    if (n == 1) {
        return(NULL)
    }
    if (n == 2) {
        return(c(2))
    }
    if (n == 3) {
        return(c(2,3))
    }
    if (n == 4) {
        return(c(2,3,5))
    }
    if (n == 5) {
        return(c(2,3,5,7))
    }
    if (n == 6) {
        return(c(2,3,5,7,11))
    }
    if (n == 7) {
        return(c(2,3,5,7,11,13))
    }
    if (n == 8) {
        return(c(2,3,5,7,11,13,17))
    }
    if (n == 9) {
        return(c(2,3,5,7,11,13,17,19))
    }
    if (n == 10) {
        return(c(2,3,5,7,11,13,17,19,23))
    }
    if (n == 11) {
        return(c(2,3,5,7,11,13,17,19,23,29))
    }
    if (n == 12) {
        return(c(2,3,5,7,11,13,17,19,23,29,31))
    }
    if (n == 13) {
        return(c(2,3,5,7,11,13,17,19,23,29,31,37))
    }
    if (n == 14) {
        return(c(2,3,5,7,11,13,17,19,23,29,31,37,41))
    }
    if (n == 15) {
        return(c(2,3,5,7,11,13,17,

test_humaneval <- function() {
candidate <- count_up_to
    if(!identical(candidate(5), list(2, 3))){quit('no', 1)}
    if(!identical(candidate(6), list(2, 3, 5))){quit('no', 1)}
    if(!identical(candidate(7), list(2, 3, 5))){quit('no', 1)}
    if(!identical(candidate(10), list(2, 3, 5, 7))){quit('no', 1)}
    if(!identical(candidate(0), list())){quit('no', 1)}
    if(!identical(candidate(22), list(2, 3, 5, 7, 11, 13, 17, 19))){quit('no', 1)}
    if(!identical(candidate(1), list())){quit('no', 1)}
    if(!identical(candidate(18), list(2, 3, 5, 7, 11, 13, 17))){quit('no', 1)}
    if(!identical(candidate(47), list(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43))){quit('no', 1)}
    if(!identical(candidate(101), list(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97))){quit('no', 1)}
}
test_humaneval()