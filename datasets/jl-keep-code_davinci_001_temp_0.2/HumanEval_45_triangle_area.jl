"""Given length of a side and high return area for a triangle.
    >>> triangle_area(5, 3)
    7.5
    """
function triangle_area(a::Int64, h::Int64)::Float64 
    return 0.5*a*h
end
triangle_area(5, 3)

using Test

@testset begin

candidate = triangle_area;
	@test(candidate(5, 3) == 7.5)
	@test(candidate(2, 2) == 2.0)
	@test(candidate(10, 8) == 40.0)
end
