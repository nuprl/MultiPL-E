""" xs represent coefficients of a polynomial.
    xs[0] + xs[1] * x + xs[2] * x^2 + ....
     Return derivative of this polynomial in the same form.
    >>> derivative([3, 1, 2, 4, 5])
    [1, 4, 12, 20]
    >>> derivative([1, 2, 3])
    [2, 6]
    """
function derivative(xs::Vector{Int64})::Vector{Int64} 
    n = length(xs)
    ys = zeros(Int64, n-1)
    for i = 1:n-1
        ys[i] = xs[i] * i
    end
    return ys
end
derivative([3, 1, 2, 4, 5])
derivative([1, 2, 3])

using Test

@testset begin

candidate = derivative;
	@test(candidate([3, 1, 2, 4, 5]) == [1, 4, 12, 20])
	@test(candidate([1, 2, 3]) == [2, 6])
	@test(candidate([3, 2, 1]) == [2, 2])
	@test(candidate([3, 2, 1, 0, 4]) == [2, 2, 0, 16])
	@test(candidate([1]) == Vector{Int64}([]))
end
