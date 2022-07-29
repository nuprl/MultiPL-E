# prime_fib returns n-th number that is a Fibonacci number and it's also prime.
-- >>> prime_fib(1)
-- 2
-- >>> prime_fib(2)
-- 3
-- >>> prime_fib(3)
-- 5
-- >>> prime_fib(4)
-- 13
-- >>> prime_fib(5)
-- 89
prime_fib <- function(n)
{
    if (n == 1)
    {
        return 2
    }
    else
    {
        fib <- prime_fib(n-1)
        return fib + prime_fib(n-2)
    }

test_humaneval <- function() {
candidate <- prime_fib
    if(!identical(candidate(1), 2)){quit('no', 1)}
    if(!identical(candidate(2), 3)){quit('no', 1)}
    if(!identical(candidate(3), 5)){quit('no', 1)}
    if(!identical(candidate(4), 13)){quit('no', 1)}
    if(!identical(candidate(5), 89)){quit('no', 1)}
    if(!identical(candidate(6), 233)){quit('no', 1)}
    if(!identical(candidate(7), 1597)){quit('no', 1)}
    if(!identical(candidate(8), 28657)){quit('no', 1)}
    if(!identical(candidate(9), 514229)){quit('no', 1)}
    if(!identical(candidate(10), 433494437)){quit('no', 1)}
}