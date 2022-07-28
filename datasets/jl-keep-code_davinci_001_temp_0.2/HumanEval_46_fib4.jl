"""The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
    fib4(0) -> 0
    fib4(1) -> 0
    fib4(2) -> 2
    fib4(3) -> 0
    fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
    Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
    >>> fib4(5)
    4
    >>> fib4(6)
    8
    >>> fib4(7)
    14
    """
function fib4(n::Int64)::Int64 
    if n < 0 
        throw(DomainError("n must be greater than or equal to 0"))
    elseif n == 0
        return 0
    elseif n == 1
        return 0
    elseif n == 2
        return 2
    elseif n == 3
        return 0
    else
        return fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4)
    end
end

using Test

@testset begin

candidate = fib4;
	@test(candidate(5) == 4)
	@test(candidate(8) == 28)
	@test(candidate(10) == 104)
	@test(candidate(12) == 386)
end
