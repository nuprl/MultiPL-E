"""
    prime_fib returns n-th number that is a Fibonacci number and it's also prime.
    >>> prime_fib(1)
    2
    >>> prime_fib(2)
    3
    >>> prime_fib(3)
    5
    >>> prime_fib(4)
    13
    >>> prime_fib(5)
    89
    """
function prime_fib(n::Int64)::Int64 
    fib_n = fib(n)
    prime_fib = 0
    for i in range(1,fib_n)
        if isprime(i)
            prime_fib = i
        end
    end
    return prime_fib
end

using Test

@testset begin

candidate = prime_fib;
	@test(candidate(1) == 2)
	@test(candidate(2) == 3)
	@test(candidate(3) == 5)
	@test(candidate(4) == 13)
	@test(candidate(5) == 89)
	@test(candidate(6) == 233)
	@test(candidate(7) == 1597)
	@test(candidate(8) == 28657)
	@test(candidate(9) == 514229)
	@test(candidate(10) == 433494437)
end
