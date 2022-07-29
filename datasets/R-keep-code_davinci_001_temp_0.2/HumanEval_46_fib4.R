# The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
-- fib4(0) -> 0
-- fib4(1) -> 0
-- fib4(2) -> 2
-- fib4(3) -> 0
-- fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
-- Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
-- >>> fib4(5)
-- 4
-- >>> fib4(6)
-- 8
-- >>> fib4(7)
-- 14
fib4 <- function(n)
{
    if (n == 0)
    {
        return(0)
    }
    else if (n == 1)
    {
        return(0)
    }
    else if (n == 2)
    {
        return(2)
    }
    else if (n == 3)
    {
        return(0)
    }
    else
    {
        return(fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4))
    }
}
fib4(5)
fib4(6)
fib4(7)


test_humaneval <- function() {
candidate <- fib4
    if(!identical(candidate(5), 4)){quit('no', 1)}
    if(!identical(candidate(8), 28)){quit('no', 1)}
    if(!identical(candidate(10), 104)){quit('no', 1)}
    if(!identical(candidate(12), 386)){quit('no', 1)}
}