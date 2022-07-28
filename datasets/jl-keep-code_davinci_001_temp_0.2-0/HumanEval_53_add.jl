"""Add two numbers x and y
    >>> add(2, 3)
    5
    >>> add(5, 7)
    12
    """
function add(x::Int64, y::Int64)::Int64 
    return x + y
end

using Test

@testset begin

candidate = add;
	@test(candidate(0, 1) == 1)
	@test(candidate(1, 0) == 1)
	@test(candidate(2, 3) == 5)
	@test(candidate(5, 7) == 12)
	@test(candidate(7, 5) == 12)
end
