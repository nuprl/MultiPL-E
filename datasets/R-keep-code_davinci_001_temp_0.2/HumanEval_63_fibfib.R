# The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
# fibfib(0) == 0
# fibfib(1) == 0
# fibfib(2) == 1
# fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
# Please write a function to efficiently compute the n-th element of the fibfib number sequence.
# >>> fibfib(1)
# 0
# >>> fibfib(5)
# 4
# >>> fibfib(8)
# 24
fibfib <- function(n) {
    if (n == 0) {
        return(0)
    } else if (n == 1) {
        return(0)
    } else if (n == 2) {
        return(1)
    } else {
        return(fibfib(n-1) + fibfib(n-2) + fibfib(n-3))
    }
}
fibfib(5)
fibfib(8)


test_humaneval <- function() {
candidate <- fibfib
    if(!identical(candidate(2), 1)){quit('no', 1)}
    if(!identical(candidate(1), 0)){quit('no', 1)}
    if(!identical(candidate(5), 4)){quit('no', 1)}
    if(!identical(candidate(8), 24)){quit('no', 1)}
    if(!identical(candidate(10), 81)){quit('no', 1)}
    if(!identical(candidate(12), 274)){quit('no', 1)}
    if(!identical(candidate(14), 927)){quit('no', 1)}
}
test_humaneval()