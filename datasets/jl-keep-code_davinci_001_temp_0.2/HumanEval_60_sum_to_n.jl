"""sum_to_n is a function that sums numbers from 1 to n.
    >>> sum_to_n(30)
    465
    >>> sum_to_n(100)
    5050
    >>> sum_to_n(5)
    15
    >>> sum_to_n(10)
    55
    >>> sum_to_n(1)
    1
    """
function sum_to_n(n::Int64)::Int64 
    if n == 1
        return 1
    else
        return n + sum_to_n(n-1)
    end
end

using Test

@testset begin

candidate = sum_to_n;
	@test(candidate(1) == 1)
	@test(candidate(6) == 21)
	@test(candidate(11) == 66)
	@test(candidate(30) == 465)
	@test(candidate(100) == 5050)
end
