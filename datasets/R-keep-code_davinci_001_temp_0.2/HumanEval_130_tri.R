# Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
# the last couple centuries. However, what people don't know is Tribonacci sequence.
# Tribonacci sequence is defined by the recurrence:
# tri(1) = 3
# tri(n) = 1 + n / 2, if n is even.
# tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
# For example:
# tri(2) = 1 + (2 / 2) = 2
# tri(4) = 3
# tri(3) = tri(2) + tri(1) + tri(4)
# = 2 + 3 + 3 = 8 
# You are given a non-negative integer number n, you have to a return a list of the 
# first n + 1 numbers of the Tribonacci sequence.
# Examples:
# tri(3) = [1, 3, 2, 8]
tri <- function(n) {
    if (n == 1) {
        return(c(3))
    } else if (n == 2) {
        return(c(3, 1))
    } else if (n == 3) {
        return(c(3, 1, 2))
    } else {
        tribonacci <- c(3, 1, 2)
        for (i in 3:n) {
            tribonacci[i + 1] <- tribonacci[i] + tribonacci[i - 1] + tribonacci[i - 2]
        }
        return(tribonacci)
    }
}


test_humaneval <- function() {
candidate <- tri
    if(!identical(candidate(3), list(1, 3, 2, 8))){quit('no', 1)}
    if(!identical(candidate(4), list(1, 3, 2, 8, 3))){quit('no', 1)}
    if(!identical(candidate(5), list(1, 3, 2, 8, 3, 15))){quit('no', 1)}
    if(!identical(candidate(6), list(1, 3, 2, 8, 3, 15, 4))){quit('no', 1)}
    if(!identical(candidate(7), list(1, 3, 2, 8, 3, 15, 4, 24))){quit('no', 1)}
    if(!identical(candidate(8), list(1, 3, 2, 8, 3, 15, 4, 24, 5))){quit('no', 1)}
    if(!identical(candidate(9), list(1, 3, 2, 8, 3, 15, 4, 24, 5, 35))){quit('no', 1)}
    if(!identical(candidate(20), list(1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11))){quit('no', 1)}
    if(!identical(candidate(0), list(1))){quit('no', 1)}
    if(!identical(candidate(1), list(1, 3))){quit('no', 1)}
}
test_humaneval()