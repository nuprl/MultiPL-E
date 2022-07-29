"""Return 2^n modulo p (be aware of numerics).
    >>> modp(3, 5)
    3
    >>> modp(1101, 101)
    2
    >>> modp(0, 101)
    1
    >>> modp(3, 11)
    8
    >>> modp(100, 101)
    1
    """
function modp(n::Int64, p::Int64)::Int64 
    return n%p
end

using Test

@testset begin

candidate = modp;
	@test(candidate(3, 5) == 3)
	@test(candidate(1101, 101) == 2)
	@test(candidate(0, 101) == 1)
	@test(candidate(3, 11) == 8)
	@test(candidate(100, 101) == 1)
	@test(candidate(30, 5) == 4)
	@test(candidate(31, 5) == 3)
end
