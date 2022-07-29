# Return n-th Fibonacci number.
-- >>> fib(10)
-- 55
-- >>> fib(1)
-- 1
-- >>> fib(8)
-- 21
fib <- function(n)
{
    if (n == 1)
    {
        return(1)
    }
    if (n == 2)
    {
        return(1)
    }
    return(fib(n-1) + fib(n-2))

test_humaneval <- function() {
candidate <- fib
    if(!identical(candidate(10), 55)){quit('no', 1)}
    if(!identical(candidate(1), 1)){quit('no', 1)}
    if(!identical(candidate(8), 21)){quit('no', 1)}
    if(!identical(candidate(11), 89)){quit('no', 1)}
    if(!identical(candidate(12), 144)){quit('no', 1)}
}