"""Return n-th Fibonacci number.
    >>> fib(10)
    55
    >>> fib(1)
    1
    >>> fib(8)
    21
    """
function fib(n::Int64)::Int64 
    if n < 2
        return n
    else
        return fib(n-1) + fib(n-2)
    end
end
fib(10)

using Test

@testset begin

candidate = fib;
	@test(candidate(10) == 55)
	@test(candidate(1) == 1)
	@test(candidate(8) == 21)
	@test(candidate(11) == 89)
	@test(candidate(12) == 144)
end
