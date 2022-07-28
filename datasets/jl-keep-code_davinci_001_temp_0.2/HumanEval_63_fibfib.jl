"""The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
    fibfib(0) == 0
    fibfib(1) == 0
    fibfib(2) == 1
    fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
    Please write a function to efficiently compute the n-th element of the fibfib number sequence.
    >>> fibfib(1)
    0
    >>> fibfib(5)
    4
    >>> fibfib(8)
    24
    """
function fibfib(n::Int64)::Int64 
    if n == 0
        return 0
    elseif n == 1
        return 0
    elseif n == 2
        return 1
    else
        return fibfib(n-1) + fibfib(n-2) + fibfib(n-3)
    end
end

using Test

@testset begin

candidate = fibfib;
	@test(candidate(2) == 1)
	@test(candidate(1) == 0)
	@test(candidate(5) == 4)
	@test(candidate(8) == 24)
	@test(candidate(10) == 81)
	@test(candidate(12) == 274)
	@test(candidate(14) == 927)
end
